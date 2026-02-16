---
title: AMD Key Distribution Service (KDS)
description: Analysis of the KDS API and interaction model
published: true
date: 2026-01-27T18:23:10.263Z
tags: 
editor: markdown
dateCreated: 2025-04-09T12:32:10.027Z
---

# AMD Key Distribution Service (KDS)

## Overview
The AMD KDS is an endorsement distribution endpoint for [AMD SEV-SNP](https://www.amd.com/en/developer/sev.html) (confidential computing) processors. It provides the certificates (leaf, intermediate and root) needed for cryptographic verification of AMD attestation reports. Each leaf certificate is known as a Versioned Chip Endorsement Key (VCEK), and certifies the public attestation key for a specific physical AMD CPU combined with a Trusted Computing Base (TCB) - essentially, that means the CPU plus the set of authentic AMD firmware components that are provisioned onto it. Each leaf certificate is chained back to an intermediate certificate for the whole product family, and thence to the AMD root certificate, providing a complete chain of trust. All certificates are obtainable through the REST API.

Full documentation for VCEK and KDS is [here](https://docs.amd.com/v/u/en-US/57230). Chapter 4 describes the KDS.

## Discovery
There is a singular base URL for the entire KDS at `https://kdsintf.amd.com` as a global internet service.

There are no methods in the interface for enumerating resources. Obtaining resources from this API requires a-priori knowledge on the part of the caller.

If the caller knows the product family name (eg. "Milan"), it can obtain the root and intermediate certificates. The root certificate is known as the AMD Root Key (ARK), and the intermediate certificate is known as the AMD SEV Key (ASK).

If the caller knows the hardware ID for an individual CPU as well as the product family name, it can obtain the leaf certificates, known as VCEKs.

## Interaction Pattern
The API is based on a small number of simple HTTP `GET` methods to request specific artifacts. Resource selection is implicit in the URL path, and the output is raw certificate data in either PEM or DER format. There is no JSON wrapping.

## API Summary
The following three HTTP methods are supported, all relative to `https://kdsintf.amd.com`:

- `GET vcek/v1/{product_name}/cert_chain` - Returns the ASK an ARK certificates (PEM format, in that order) for the specified product name, where "Milan" is an example of a product name in the AMD CPU family. The returned data is an unwrapped concatenation of the two PEM files.
- `GET vcek/v1/{product_name}/crl` - Returns the DER-formatted certificate revocation list for the named product, including the certificate chain, as per [Section 5 of RFC 5280](https://datatracker.ietf.org/doc/html/rfc5280#section-5).
- `GET vcek/v1/{product_name}/{hwID}?{parameters}` - Returns the (leaf) VCEK Certificate corresponding to the TCB with the specified Security Patch Level (SPL) values, where unspecified SPL values are assumed to be zero.

A VCEK, combined with the cert chain for its product family (ASK and ARK) makes a complete chain of trust for a Verifier.

## Certificate Formats
VCEK Certificates use custom X509 extensions to encode information about the TCB. These are essentially the reference values for a Verifier.

Each extension uses a custom OID prefixed by `1.3.6.1.4.1.3704.1`.

An AMD SEV-SNP attestation report is a binary structure, part of which is the `TCB_VERSION` structure, which captures the SPL of each firmware component on the system. The role of the Verifier is to examine the measured fields of `TCB_VERSION` and compare them against the reference values in the x509 extension fields of the VCEK.

## Example
The following command can be used to obtain a VCEK and store it in a file called `vcek.crt`:

```sh
curl -v https://kdsintf.amd.com/vcek/v1/Milan/3ac3fe21e13fb0990eb28a802e3fb6a29483a6b0753590c951bdd3b8e53786184ca39e359669a2b76a1936776b564ea464cdce40c05f63c9b610c5068b006b5d -o vcek.crt
```

The HTTP response (excluding the binary data that was redirected) is as follows:

```http
HTTP/1.1 200 
< Content-disposition: attachment; filename=vcek.crt
< Cache-Control: no-cache
< Pragma: no-cache
< Content-Type: application/octet-stream
< Content-Length: 1350
< Date: Wed, 16 Apr 2025 10:27:23 GMT
```

The certificate can be decoded using `openssl` as follows:

```sh
openssl x509 -in vcek.crt -text -noout
```

This results in the following x509 text dump (and note the extension fields):

```output
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number: 0 (0x0)
        Signature Algorithm: rsassaPss        
        Hash Algorithm: sha384
        Mask Algorithm: mgf1 with sha384
         Salt Length: 0x30
        Trailer Field: 0x01 (default)
        Issuer: OU=Engineering, C=US, L=Santa Clara, ST=CA, O=Advanced Micro Devices, CN=SEV-Milan
        Validity
            Not Before: Apr 15 10:27:23 2025 GMT
            Not After : Apr 15 10:27:23 2032 GMT
        Subject: OU=Engineering, C=US, L=Santa Clara, ST=CA, O=Advanced Micro Devices, CN=SEV-VCEK
        Subject Public Key Info:
            Public Key Algorithm: id-ecPublicKey
                Public-Key: (384 bit)
                pub:
                    04:bd:f2:77:53:33:2c:ec:19:f8:25:e8:f4:6c:1a:
                    5f:00:e4:f8:63:49:4c:8e:fb:bc:92:a4:12:c4:5a:
                    07:df:76:55:46:d6:10:83:cf:15:8e:3e:cd:09:82:
                    f9:e8:35:10:43:3e:5d:3c:62:a5:72:10:03:23:91:
                    5c:d7:02:81:ba:fd:84:1d:85:66:54:b7:a7:58:7f:
                    3e:dc:20:61:a1:54:01:19:c1:4b:88:10:32:ae:cc:
                    01:ed:c2:80:88:1d:7f
                ASN1 OID: secp384r1
                NIST CURVE: P-384
        X509v3 extensions:
            1.3.6.1.4.1.3704.1.1: 
                ...
            1.3.6.1.4.1.3704.1.2: 
                ..Milan-B0
            1.3.6.1.4.1.3704.1.3.1: 
                ...
            1.3.6.1.4.1.3704.1.3.2: 
                ...
            1.3.6.1.4.1.3704.1.3.4: 
                ...
            1.3.6.1.4.1.3704.1.3.5: 
                ...
            1.3.6.1.4.1.3704.1.3.6: 
                ...
            1.3.6.1.4.1.3704.1.3.7: 
                ...
            1.3.6.1.4.1.3704.1.3.3: 
                ...
            1.3.6.1.4.1.3704.1.3.8: 
                ...
            1.3.6.1.4.1.3704.1.4: 
                :..!.?.......?......u5..Q....7..L..5.i..j.6wkVN.d..@._c.......k]
    Signature Algorithm: rsassaPss
    Signature Value:        
        Hash Algorithm: sha384
        Mask Algorithm: mgf1 with sha384
         Salt Length: 0x30
        Trailer Field: 0x01 (default)
        6e:0a:3b:4d:50:d3:e2:20:9d:48:77:f4:c8:d5:e4:76:df:ed:
        29:49:a1:7a:ac:69:8e:3a:d5:6b:c1:bc:12:e4:df:1d:c9:0e:
        f6:b5:8e:9e:a8:63:fe:fe:60:c2:4a:dc:67:85:b9:f0:ca:f4:
        b3:42:cf:0f:c9:4e:67:cc:cc:f1:9b:2f:84:74:dc:c5:29:61:
        87:a6:84:e1:57:1e:0e:7c:3c:70:ad:06:90:c2:80:1a:9a:65:
        26:bf:e1:9f:32:87:e6:8b:8b:1c:61:b0:80:ae:c3:88:c9:c3:
        af:44:84:42:f0:8c:9b:b8:19:71:0e:72:86:d2:be:54:9c:a5:
        64:2b:77:cd:c2:15:19:d8:48:84:b7:2d:c2:31:8e:5b:b4:95:
        69:9d:9f:2d:bc:86:bb:4d:82:8e:3c:d8:bc:cc:25:7f:bf:70:
        d2:e7:c5:19:da:4b:59:ab:52:4d:d2:29:5e:36:00:6f:e9:06:
        51:5f:55:09:d5:3b:cf:5b:b1:a8:fb:d3:9b:7f:48:e0:19:58:
        0d:2c:91:d8:c2:e0:a8:43:85:44:68:f6:85:d2:b4:c4:47:ab:
        b1:2c:6b:a0:cc:7c:68:34:61:0b:46:4d:2a:fa:bc:bc:d8:90:
        de:10:57:d4:75:40:ac:a0:c5:e7:a6:bb:d8:d8:dc:2d:a3:0c:
        1f:1f:ec:98:d7:97:09:a5:be:02:0f:df:ef:b8:de:f4:d9:35:
        57:50:46:0e:6a:0a:c2:d7:fb:5e:09:20:b8:9d:64:05:6f:15:
        de:0e:96:9b:0c:02:fb:cb:9a:e9:b8:f4:f4:06:94:27:fc:3b:
        b4:23:88:d9:ed:69:fe:87:a7:8e:17:59:2c:33:ec:63:ab:ff:
        62:f0:94:8f:b3:47:8b:cd:ad:2b:c0:32:89:22:d5:86:a5:cb:
        dd:a3:06:74:c9:82:45:f3:3c:ff:2c:ce:c6:ae:4f:81:9d:9c:
        61:62:a5:bc:f5:73:37:ff:72:c9:f8:7a:14:b8:65:30:91:53:
        4c:d3:56:83:51:6f:1e:1a:8e:b6:68:0d:4d:cd:52:34:51:3b:
        17:c7:3c:a5:f2:5b:85:f0:bf:98:c7:11:31:99:ba:98:e2:6f:
        7f:29:9b:de:30:19:a6:29:7c:e2:e4:5e:26:3f:ac:0e:15:71:
        57:95:94:d7:4a:16:49:3c:d0:81:4d:8b:2d:ac:79:f7:74:b8:
        a5:9f:6e:68:6c:f1:28:58:57:43:20:c4:3a:76:64:fe:4b:1e:
        41:03:31:8a:de:1d:85:fe:09:c9:6d:74:ba:65:17:9e:fb:e5:
        45:81:32:59:2f:4b:bf:6e:f8:ee:7d:3c:79:51:d1:63:10:99:
        3f:ca:9e:4a:ab:d7:03:0f
```


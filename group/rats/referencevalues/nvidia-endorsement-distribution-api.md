---
title: NVIDIA RIM Service
description: NVIDIA Reference Integrity Manifest (RIM) Service 1.0
published: true
date: 2025-04-09T09:39:23.504Z
tags: rats, reference values, endorsement distribution
editor: markdown
dateCreated: 2025-04-09T09:34:59.945Z
---

# NVIDIA Reference Integrity Manifest (RIM) Service 1.0

NVIDIA maintains a public endorsement distribution service at https://rim.attestation.nvidia.com that users can query to obtain reference values and endorsements for NVIDIA GPU and NPU products.

The service exposes a REST API ([OpenAPI 3 spec](https://rim.attestation.nvidia.com/v1/api-docs), [docs](https://docs.attestation.nvidia.com/api-docs/rim.html)) to discover and retrieve Reference Integrity Manifests (RIM).

RIMs can be signed [SWID](https://csrc.nist.gov/Projects/Software-Identification-SWID) or [CoRIM](https://datatracker.ietf.org/doc/draft-ietf-rats-corim).

The API has two endpoints:

* Discovery, used to obtain the list of RIM identifiers,
* Retrieval, used to obtain a RIM given its identifier.

## Discovery

The discovery endpoint can be queried as follows:

```sh
curl -s https://rim.attestation.nvidia.com/v1/rim/ids | jq .
```

which returns the following JSON-formatted payload:

```json
{
  "ids": [
    "NV_GPU_DRIVER_GH100_535.104.05",
    "...",
    "NV_GPU_VBIOS_1010_0200_882_96005E0001",
    "...",
    "NV_NIC_FIRMWARE_CX7_28.39.4082-LTS_MCX713104AC-ADA",
    "...",
    "NV_SWITCH_BIOS_5612_0002_890_96105E0001",
    "..."
  ],
  "request_id": "54922519-b87e-4057-b323-33b9a2bb9743",
  "last_updated": "2025-04-08T09:05:11.595000"
}
```

Each RIM identifier listed in the `"ids"` array can be used in a query to obtain the RIM associated with the specific product and firmware release.

## RIM Retrieval for CX7

This section explores the RIM content of CONNECTX-7, an InfiniBand NIC product that incorporates a DICE RoT and SPDM responder.

CX7 is the only one that uses CoRIM as the RIM format (`"rim_format": "CORIM"`), while all other products use SWID (`"rim_format": "TCG"`).

We will look at one specific version of the CX7 firmware (`NV_NIC_FIRMWARE_CX7_28.39.4082-LTS_MCX713104AC-ADA`).

The RIM payload can be obtained by issuing the following command:

```sh
curl -s 'https://rim.attestation.nvidia.com/v1/rim/NV_NIC_FIRMWARE_CX7_28.39.4082-LTS_MCX713104AC-ADA' \
	| jq .
```

which triggers the following HTTP transaction:

* Request:
```http
GET /v1/rim/NV_NIC_FIRMWARE_CX7_28.39.4082-LTS_MCX713104AC-ADA HTTP/1.1
Host: rim.attestation.nvidia.com
User-Agent: curl/8.7.1
Accept: */*
```
* Response:
```http
HTTP/1.1 200 OK
Date: Tue, 08 Apr 2025 11:50:34 GMT
Content-Type: application/json
Content-Length: 1164
Connection: keep-alive
Server: Server
x-amzn-RequestId: ca80a80a-054c-476e-bdd2-7be7e3047fe5
x-amz-apigw-id: Is8NpGUNoAMF6aA=
X-Amzn-Trace-Id: Root=1-67f50d8a-20c0fb06718bcec225b01949;Parent=1dcbfe093665c4d7;Sampled=0;Lineage=1:a84cdf6d:0

{ JSON-formatted body }
```

The returned payload is a JSON body formatted according to the following [schema](https://docs.attestation.nvidia.com/api-docs/rim.html#get-/v1/rim/-id-).

The API does not do content negotiation; instead, the RIM is encoded according to what the `"rim_format"` key specifies - in this case `"CORIM"`:

```json
{
  "id": "NV_NIC_FIRMWARE_CX7_28.39.4082-LTS_MCX713104AC-ADA",
  "rim": "2QH02QH20oRYJ6MBOCIDdGFwcGxpY2F0aW9uL3JpbStjYm9yCEuhAKEAZk5WSURJQaBZAgSjAHVDb25uZWN0WC03XzI4LjM5LjQwODIBgVkBcdkB+qIBoQB4HTE1YjMxMDIxMTViMzAwMzMwMC0yOC4zOS40MDgyBKEAgYKhAKEBZk5WSURJQYWiAAEBoQTZAjBEAAAAAaIAAgGhAoGCCFhA+Pbqb6A7sI/P+yi9TNpmpvRq2y663lImANDUpG/fPrwl4XwtejknxYHksQrRlzhZsGTFGpggtB97+nKfIBJCqKIAAwGhAoGCCFhABZivjjixqOC5Y7vbRAW4/tThRa+G0D+qAFjM38dZCesxwRfIGeAqdMOraiM+nZsPKXbPDKqoiVk1Myv4XpBvKKIABAGhAoGCCFhAUs8XLrAtyhkdQF5Z+hd5cbzmR5AvAKxUcLG5mPKpvN73yu/r6d9+hD6ZhqhZwRQh4WK6YtkAVhmsBpMNjeGGt6IABQGhAoGCCFhAasLtx3Usohqois5AevVNWPEJirPftdBjju7Leo92GlkDMjv0fb7tLY097SKVGZQM31GbhTdvtJKtX96m/EhhnQKBogDYIHhJaHR0cHM6Ly9kb2NzLm5kaXMubnZpZGlhLmNvbS9jZXJ0cy9jb3JpbS9udmlkaWEtY29yaW0tc2lnbmVyLWN4Ny1pZC0yLnBlbQGCAVggtQc94Np0/NmSqwaRMVxenH0jnVne/+1CvATlaonzn1pYYOCxC2S5wwewgk0ji4B+oNkTA1XakCk1BWCto8Fg5ra1EKh3evwp9Z9gcESE6pCX4L5d0AmPT4sqkP5O+hUaWUlIWv9M/1Dk/UKd6HghSJXOTeJo4wAMcQXQ8lXU0pDCNA==",
  "sha256": "ca3f3a12d38746dfa9168a3ecd39be4aabb57aab94b83f3b771482e2c3c89e02",
  "last_updated": "2025-03-14T15:09:03.011000",
  "rim_format": "CORIM",
  "request_id": "ca80a80a-054c-476e-bdd2-7be7e3047fe5"
}
```

The base64-encoded RIM is the value of the `"rim"` key.

The HTTP response has no cache control headers therefore, for caching purposes, the client will apply their local heuristics.
The JSON body contains a `"last_updated"` field, which would usually belong in the headers (`Last-Modified`).
As a general observation, the API design avoids leveraging sophisticated HTTP capabilities.

Extracting the CoRIM can be done as follows:

```sh
curl -s 'https://rim.attestation.nvidia.com/v1/rim/NV_NIC_FIRMWARE_CX7_28.39.4082-LTS_MCX713104AC-ADA' \
  | jq -r '.rim' \
  | base64 -d \
  | cbor2pretty.rb \
  | egrep -v 'tag\(500\)|tag\(502\)' \
  | pretty2cbor.rb \
  > corim.cbor
```

A bit of in-place editing (i.e., `c2p|egrep|p2c`) is needed to remove the outer tags (500 and 502) which have been removed in version -07 of the CoRIM spec.

We use `cocli` to display the contents of the CoRIM in a human-readable fashion, and apply some inline annotations:

```sh
cocli corim display -f corim.cbor --show-tags
```

Which returns:

```
Meta:
{
  "signer": {
    "name": "NVIDIA"
  }
}
Corim:
{
  "corim-id": "ConnectX-7_28.39.4082",
```

`corim-map.id` is a text string with the product ("ConnectX-7") and firmware version ("28.39.408") separated by "_".

```
  "tags": [
    "2QH6ogGhAHgdMTViMzEwMjExNWIzMDAzMzAwLTI4LjM5LjQwODIEoQCBgqEAoQFmTlZJRElBhaIAAQGhBNkCMEQAAAABogACAaECgYIIWED49upvoDuwj8/7KL1M2mam9GrbLrreUiYA0NSkb98+vCXhfC16OSfFgeSxCtGXOFmwZMUamCC0H3v6cp8gEkKoogADAaECgYIIWEAFmK+OOLGo4Llju9tEBbj+1OFFr4bQP6oAWMzfx1kJ6zHBF8gZ4Cp0w6tqIz6dmw8pds8MqqiJWTUzK/hekG8oogAEAaECgYIIWEBSzxcusC3KGR1AXln6F3lxvOZHkC8ArFRwsbmY8qm83vfK7+vp336EPpmGqFnBFCHhYrpi2QBWGawGkw2N4Ya3ogAFAaECgYIIWEBqwu3HdSyiGqiKzkB69U1Y8QmKs9+10GOO7st6j3YaWQMyO/R9vu0tjT3tIpUZlAzfUZuFN2+0kq1f3qb8SGGd"
  ],
```

The CoRIM contains exactly one CoMID.

```
  "dependent-rims": [
    {
      "href": "https://docs.ndis.nvidia.com/certs/corim/nvidia-corim-signer-cx7-id-2.pem",
```

`corim.dependent-rims` contains the URL where the certificate associated with the signer of the CoRIMs for the CX7 product can be downloaded.

It's a 15-year certificate issued by "NVIDIA CoRIM signing CX7 ICA ID 2" to "NVIDIA CoRIM signer CX7 ID 2" as follows:

```console
curl -s https://docs.ndis.nvidia.com/certs/corim/nvidia-corim-signer-cx7-id-2.pem 2>&1 \
  | openssl x509 -text -nocert

Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            7a:76:ef:eb:dd:f5:0f:67:96:c5:36:e9:97:7d:11:18:b9:95:fb:c5
        Signature Algorithm: ecdsa-with-SHA384
        Issuer: O=NVIDIA, CN=NVIDIA CoRIM signing CX7 ICA ID 2
        Validity
            Not Before: Jan  1 00:00:00 2025 GMT
            Not After : Dec 31 23:59:59 2039 GMT
        Subject: O=NVIDIA, CN=NVIDIA CoRIM signer CX7 ID 2
        Subject Public Key Info:
            Public Key Algorithm: id-ecPublicKey
                Public-Key: (384 bit)
                pub:
                    04:ab:49:6b:cc:57:7c:b1:a5:12:e7:98:88:d9:54:
                    59:c1:0e:f2:ec:2f:81:cf:97:65:07:43:bf:e2:bf:
                    70:0e:db:8f:12:1f:1c:e8:fb:13:5e:fe:03:22:98:
                    df:37:70:b7:bd:2c:84:b6:96:1c:bf:97:9a:dd:1f:
                    b1:e4:63:a4:a4:e3:a5:7f:9b:88:6c:4d:5f:4c:f7:
                    c1:cb:9e:66:8c:25:f9:5e:e9:a6:67:d7:fa:a9:08:
                    b0:88:c4:76:6f:91:44
                ASN1 OID: secp384r1
                NIST CURVE: P-384
        X509v3 extensions:
            X509v3 Subject Key Identifier:
                80:25:52:51:77:06:35:63:F0:B6:7E:0D:F5:8D:BC:3C:B7:C6:E4:DF
            X509v3 Authority Key Identifier:
                9C:CC:71:CA:43:84:CF:B1:7F:A3:11:FE:A9:AA:B3:F8:77:22:6B:5A
            X509v3 Basic Constraints: critical
                CA:FALSE
            X509v3 Key Usage: critical
                Digital Signature
            Authority Information Access:
                OCSP - URI:http://ocsp.ndis.nvidia.com
            X509v3 CRL Distribution Points:
                Full Name:
                  URI:http://crl.ndis.nvidia.com/crl-corim/corim-l2-cx7-02.crl

    Signature Algorithm: ecdsa-with-SHA384
    Signature Value:
        30:66:02:31:00:ca:a7:1a:96:4d:77:56:14:f0:8b:c3:7a:81:
        a6:88:b2:00:d8:80:e5:9d:74:8a:c7:86:55:a7:d6:c9:7b:b5:
        b3:a6:8b:01:55:80:ec:c3:36:8f:82:e0:09:27:58:c6:2f:02:
        31:00:d1:4d:f7:e8:03:2b:cd:d9:09:79:10:6f:f8:a7:71:c0:
        79:4f:2c:c5:44:b4:08:b3:c2:2d:40:b7:d7:be:48:44:27:06:
        e9:ee:72:70:39:42:32:c7:54:34:df:ec:28:66
```

Note that stashing the CoRIM signing certificate this deep may reduce its usefulness.
Using the `x5chain` COSE header, including the chain rather than just the leaf cert, would be a more practical/standard choice.

```
      "thumbprint": "sha-256;tQc94Np0/NmSqwaRMVxenH0jnVne/+1CvATlaonzn1o="
    }
  ]
}
Tags:
>> [ 0 ]
{
  "tag-identity": {
    "id": "15b3102115b3003300-28.39.4082"
```
`concise-mid-tag.tag-identity.tag-id` is a text string obtained by concatenating the PCI Device Identifier ("15b3102115b3003300") and the FW version ("28.39.4082") already present in the parent CoRIM identifier.
```
  },
  "triples": {
    "reference-values": [
```

There is exactly one triple of type `reference-triple-record`:
```
      {
        "environment": {
          "class": {
            "vendor": "NVIDIA"
```

Note that the class lacks a class identifier.
Instead, the identification of the target environment is implicitly based on the parent CoRIM/CoMID identifiers.
Consequently, it becomes impossible to filter triples based on product.
This does not align with the CoRIM philosophy, which views triples as self-describing objects.
A CoSERV adapter would need to create a synthetic class ID from the product and, possibly, the PCI device ID.

```
          }
        },
        "measurements": [
```

The reference value triple has 5 measurements with a uint `mkey`, (nearly) matching CX7's [SPDM Measurements Block definition](https://docs.nvidia.com/networking/display/nvidiadeviceattestationandcorimbasedreferencemeasurementsharingv20/connectx-7+measurements#src-3548223215_ConnectX7Measurements-Version1.0.0):
```
          {
            "key": {
              "type": "uint",
              "value": 1
            },
            "value": {
              "raw-value": {
                "type": "bytes",
                "value": "AAAAAQ=="
```
1. Raw value `00000001`.  This field is undocumented in CX7 but exists in BlueField3 with the following semantics:
"Raw bitstream FW Config", a 4-byte unsigned integer, little endian.
It is interpreted as follows:
* Byte 3: Major Version
* Byte 2-1: Minor Version
* Byte 0: is patch

Therefore, the above would mean "Raw bitstream FW Config: 1.0.0".
```
              }
            }
          },
          {
            "key": {
              "type": "uint",
              "value": 2
            },
            "value": {
              "digests": [
                "sha-512;+Pbqb6A7sI/P+yi9TNpmpvRq2y663lImANDUpG/fPrwl4XwtejknxYHksQrRlzhZsGTFGpggtB97+nKfIBJCqA=="
```
2. digest of M-1, first mutable code              
```
              ]
            }
          },
          {
            "key": {
              "type": "uint",
              "value": 3
            },
            "value": {
              "digests": [
                "sha-512;BZivjjixqOC5Y7vbRAW4/tThRa+G0D+qAFjM38dZCesxwRfIGeAqdMOraiM+nZsPKXbPDKqoiVk1Myv4XpBvKA=="
```
3. digest of M-2, secondary boot sequencing code
```
              ]
            }
          },
          {
            "key": {
              "type": "uint",
              "value": 4
            },
            "value": {
              "digests": [
                "sha-512;Us8XLrAtyhkdQF5Z+hd5cbzmR5AvAKxUcLG5mPKpvN73yu/r6d9+hD6ZhqhZwRQh4WK6YtkAVhmsBpMNjeGGtw=="
```
4. digest of M-3, runtime code
```
              ]
            }
          },
          {
            "key": {
              "type": "uint",
              "value": 5
            },
            "value": {
              "digests": [
                "sha-512;asLtx3Usohqois5AevVNWPEJirPftdBjju7Leo92GlkDMjv0fb7tLY097SKVGZQM31GbhTdvtJKtX96m/EhhnQ=="
```
5. digest of M-4, hashes manifest
```
              ]
            }
          }
        ]
      }
    ]
  }
}
```


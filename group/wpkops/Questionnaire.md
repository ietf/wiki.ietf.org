---
title: Questionnaire
description: 
published: true
date: 2023-01-15T23:32:56.716Z
tags: 
editor: markdown
dateCreated: 2023-01-15T23:32:52.306Z
---

*Vendor survey*

The Web PKI Ops (wpkops) Working Group was formed to establish a baseline of how SSL/TLS “actually” works in browsers and web servers today. The group’s charter can be found at http://datatracker.ietf.org/wg/wpkops/charter/. This survey was created as a vehicle to gather the raw data needed. Your participation in this survey will contribute to the success of the effort.

Please answer all questions below that apply to your company’s products. If you’re aware of other products within your company’s suite of products for which you cannot answer these questions, please forward this survey to someone within your organization who can answer.

This survey is not meant to be exhaustive; it need not include all product versions, only those in significant use on or around December, 2013. Please do not include any information on future plans, as the focus is on the current practice of SSL/TLS.

Please feel free to elaborate on any answers where you think elaboration is in order, even on questions that ask for yes/no answers. You may fill out a copy of the entire survey for each version of a product, if that is your preference. Or you may wish to detail the different behavior of each version in the answer to each question.

Since the Working Group is attempting to capture a snapshot of current practices, time is of the essence. It would be preferable to receive your survey responses by (whatever date we pick).

---
  Server (Web server, CDN, load balancer)

If you write software that acts as a server in a browser-based SSL/TLS connection, please answer these questions:

1) As of December 2013, which product versions combined constitute 99% of total usage of the vendor's products? For the remainder of this survey, please answer each question with respect to the product versions you listed. In your answers to each question, elaborate on the differences in behavior from one product version to another.

[For example:

SecureServer (version 11.2) – 60%

SecureServer (version 11.0) – 30%

SecureServer (version 10.3) – 7%

SecureServer (version 10.2) – 2% (total of 99%);

2) Certificate request generation:

- Does the product fully support PKCS #10: Certification Request Syntax Standard?
- Which cryptographic algorithms/parameters does the product support for the creation of keys and CSRs? Check all that are supported
RSA 1024 bits

RSA 2048 bits

RSA 3072 bits

RSA 4096 bits

RSA other key size

DSA 1024 bits

DSA 2048 bits

DSA 3072 bits

DSA 4096 bits

DSA other

ECC nistp256

ECC nistp384

ECC nistp521

ECC other

other

MD2

MD4

MD5

SHA1

SHA-256

SHA-384

SHA-512

SHA-3

- Does the product support RSASSA-PSS ([RFC 4055](http://tools.ietf.org/html/rfc4055)) *yes* no
3) Private key protection:

Does the product enforce "strong password" requirements? *yes* no If yes, what are the requirements?
Does the product support crypto hardware? *yes* no If yes, what crypto hardware is supported?
4) Certificate installation:

- Does the product support multi-tier certificate hierarchies? (root -> intermediate -> end-entity certificate) *yes* no
- Does the product validate the certificate path upon installation? *yes* no
- Does the product allow PKCS#7 import (in which the PKCS#7 file contains intermediates and end-entity certificates, and the product discerns which is which?) *yes* no
- Does the product allow for the configuration of multiple certificates using different public key algorithms (RSA, DSA, ECC) but the same Subject DN, and deliver the most appropriate certificate to each client based on the client’s capabilities as inferred from parameters in the ClientHello? message? *yes* no
- Does the product allow for the configuration of multiple certificates using different hash algorithms (SHA-1, SHA-2) but the same Subject DN, and deliver the most appropriate certificate to each client based on the client’s capabilities as inferred from parameters in the ClientHello? message? *yes* no
- Does the product ensure that the certificate chain is in the correct order? *yes* no
- Can the product be configured to send a self-signed certificate as part of the certificate chain when it is not the sole certificate? *yes* no
- Can the product be configured to send unrelated certificates in the certificate chain? *yes* no
5) Key/certificate renewal: Does the product require a restart in order to change its key pair? *yes* no

6) Which versions of SSL/TLS does the product support? (check all that apply)

SSL 2

SSL 3

TLS 1.0

TLS 1.1

TLS 1.2

7) Does the product support SPDY?

SPDY 1

SPDY 2

SPDY 3

SPDY 3.1

8) OCSP Stapling:

- Does the product support OCSP stapling in accordance with [RFC 6066](http://tools.ietf.org/html/rfc6066)? *yes* no
- Does the product support OCSP multiple-stapling in accordance with [RFC 6961](http://tools.ietf.org/html/rfc6961)? *yes* no
- Does the product check staples before installing them? *yes* no
- How frequently are new staples fetched?
hourly

daily

within a specified time before expiration of the previous staple (please specify time)

other (please specify)

- What is the behavior of the server when it has no valid staple?
9) Does the product support Simple Certificate Enrollment Protocol (SCEP)? *yes* no

10) SSL Handshake and Record protocols (see [draft-agl-wpkops-tlsstack-00](http://tools.ietf.org/html/draft-agl-wpkops-tlsstack-00) for details):

- For versions prior to TLS 1.2, does the product send 0x0301 for the record version number for the first record? *yes* no If no, what value is sent?
- Does the product support a ClientHello larger than 255 bytes? *yes* no
- What value is set in “random.gmt_unix_time”?
a timestamp

a random number

other (please elaborate)

- Does the product advertise or accept compression methods other than null? *yes* no
- Does the presence of any TLS extension (especially the “status_request” extension) cause the product to fail to make a connection? *yes* no
- If ALPN and NPN are supported, is NPN ignored when an ALPN extension is also present? *yes* no
- Does the product support a ServerHello larger than 255 bytes? *yes* no
- Does the product negotiate DHE cipher suites but attempt to use tiny DH groups (for example, with a 256-bit modulus) *yes* no
- Does the product split each CBC record? *yes* no
- What initial size is used for TLSPlaintext structures?
- When AES-GCM is used, how is the 8-byte nonce populated?
With the TLS sequence number

With a random value

other (please elaborate)

---
  OCSP Responder

If you write software that acts as an OCSP Responder, please answer these questions:

1) As of December 2013, which product versions combined constitute 99% of total usage of the vendor's products? For the remainder of this survey, please answer each question with respect to the product versions you listed. In your answers to each question, elaborate on the differences in behavior from one product version to another.

[For example:

SecureResponder (version 1.3) – 78%

SecureResponder (version 1.2) – 22% (total of 99%)]

2) Does the product support [RFC 5019](http://tools.ietf.org/html/rfc5019), Lightweight OCSP? *yes* _ no

3) Does the product support [RFC 6960](http://tools.ietf.org/html/rfc6960), OCSP Algorithm Agility? *yes* no

4) What is the behavior if a request is made for a certificate serial number that had not been issued?

5) Does the product return a nonce in the response if a nonce was included in the OCSP request? *yes* no

6) Which versions of SSL/TLS does the product support? (check all that apply)

SSL 2

SSL 3

TLS 1.0

TLS 1.1

TLS 1.2

7) Does the product support SPDY?

SPDY 1

SPDY 2

SPDY 3

SPDY 3.1

---
Client (Browser, OS)

If you write software that acts as a client in a browser-based SSL/TLS connection, please answer these questions. Please be sure to distinguish between desktop and mobile versions where applicable.

1) As of December 2013, which product versions combined constitute 99% of total usage of the vendor's products? For the remainder of this survey, please answer each question with respect to the product versions you listed. In your answers to each question, elaborate on the differences in behavior from one product version to another.

[For example:

SecureBrowser (desktop version 7.1) – 80%

SecureBrowser (desktop version 7.0) – 10%

SecureBrowser (desktop version 6.3) – 5%

SecureBrowser (desktop version 7.1) – 4% (total of 99%);

SecureBrowser (mobile version 3.8) – 90%

SecureBrowser (mobile version 3.7) – 8%

SecureBrowser (mobile version 3.6) – 1% (total of 99%)]

2) Key store: Does the product implement its own trusted key store? *yes* no If no, skip to Question 3.

- Is CA conformance with the CAB Forum Baseline Requirements and EV Guidelines required for a root to be included in your trusted key store? *yes* no
- What circumstances result in blacklisting/ removal of “EV status”/removal of a root from the trusted key store?
3) Which trust models are supported by the product ([draft-ietf-wpkops-trustmodel-00 Section 3.4](http://tools.ietf.org/html/draft-ietf-wpkops-trustmodel-00))? Check all that are supported

Browser directly trusts issuing CA key

Browser directly trusts subscriber entity key

Browser supports public key pinning

4) Can any security-related checks be disabled by the user?

5) Does the product provide special treatment of EV SSL certificates (different UI or different behaviour)? *yes* no If yes, please detail in any answers to the following questions where EV behavior differs from non-EV behavior.

6) Path building: If the TLS handshake results in an incomplete certificate path, does the product use information in the id-ad-caIssuers field of the authorityInfoAccess extension to build a path (aka “AIA chasing”)?

7) Public-key validation: What aspects of public-key validation does the product enforce? (check all that apply) (from CA/Browser Forum Baseline Requirements Appendix A)

minimum key size

maximum validity period

RSA exponent checks

RSA modulus checks

digest algorithm

minimum DSA modulus and divisor size

DSA domain parameters

DSA public key has unique correct representation and range in the field

DSA key has the correct order in the subgroup

NIST ECC Full Public Key Validation Routine

NIST ECC Partial Public Key Validation Routine

8) Path validation: What sub-sections of [RFC 5280](http://tools.ietf.org/html/rfc5280) Section 6 (path validation) does the product enforce?

- 6.1.3 (a) (1) Verify the signature on the certificate *yes* no
- 6.1.3 (b) The subject name is within one of the permitted_subtrees for X.500 distinguished names, and each of the alternative names in the subjectAltName extension is within one of the permitted_subtrees for that name type *yes* no
- 6.1.3 (c) The subject name is not within any of the excluded_subtrees for X.500 distinguished names, and each of the alternative names in the subjectAltName extension is not within any of the excluded_subtrees for that name type *yes* no
- 6.1.3 (d) Verify the certificate policies extension *yes* no
9) SSL Certificate handling

- Is the product able to build a correct certificate chain if the certificates are received from the server in an incorrect order? *yes* no
- Does the product perform certificate policy extension processing? *yes* no If yes, please elaborate on how the extension is processed.
- What certificate content checks are performed by the product to determine if the certificate is acceptable for SSL/TLS use?
10) Server domain name

- Does the product support TLS certificates with a Common Name field? yes no If *yes*, is the Common Name used in UI, path processing, or some other functionality?
- Does the product support TLS certificates with multiple Common Names?
- Does the product allow wildcard characters in TLS certificate Common Names or SANs? *yes* no
- If yes, does the product support a wildcard character in a location other than the complete leftmost label? For example, does the product support Common Names or SANs with abc*.example.com, a*b.example.com, *.com? *yes* no *n/a*
- Does the product support Internationalized Names in the TLS certificate Subject and Issuer Distinguished Name fields and SANs? *yes* no
- What is the behavior when the user types in a URL using a Punycode name and the TLS certificate contains only the native encoding of the domain name?
- What is the behavior when the user types in a URL using a native encoding of the domain name and the TLS certificate contains only the Punycode name?
11) Certificate status

- Which of the following status mechanisms does the product support? (check all that apply; if multiple mechanisms are used, please explain under which conditions they are each used)
- CRL (where the location of the CRL is obtained via out-of-band means)
- CRLDP (where the location of the CRL is obtained from the CDP extension)
- Delta CRLs
- OCSP (where the location of the OCSP responder is obtained via out-of-band means)
- AIA (where the location of the OCSP responder is obtained from the AIA extension)
- stapled OCSP
- multiple-stapled OCSP
- CRL Sets
- blacklists
- What order of priority amongst these mechanisms does the product follow? Please give the above numbers in order of decreasing priority.
- Does the product require that status values be provided by the issuer of the subject certificate? *yes* no If no, please explain who is permitted to provide status values
12) If your product does not support CRLs, skip to Question 13

- Are CRLs cached? *yes* no
- May a CRL be used after its nextUpdate time?
- What is the CRL timeout value?
- What is the behavior if a response is not received for an external CRL request?
13) If your product does not support OCSP, skip to Question 14

- Are OCSP responses cached? *yes* no
- May an OCSP response be used after its nextUpdate time? *yes* no
- What is the OCSP timeout value?
- Does the product include a nonce in the OCSP request? *yes* no
- If yes, what is the behavior if the response includes a non-matching nonce, or no nonce?
- Does the product support [RFC 6960](http://tools.ietf.org/html/rfc6960), OCSP Algorithm Agility?
14) Does your product support CRL Sets? *yes* no. If no, skip to Question 15.

- Does distribution of the CRL Set require a software update? *yes* no
- What reason codes are included in the CRL Set? (check all that apply)
unspecified (0),

keyCompromise (1),

cACompromise (2),

affiliationChanged (3),

superseded (4),

cessationOfOperation (5),

certificateHold (6),

removeFromCRL (8),

privilegeWithdrawn (9),

aACompromise (10)

other (please specify)

- Which CRLs are included in the CRL Set?
- Which CRLs are excluded from the CRL Set?
15) Does the product support the name constraints extension?

yes, in accordance with [RFC 5280](http://tools.ietf.org/html/rfc5280)

yes, not in accordance with [RFC 5280](http://tools.ietf.org/html/rfc5280) (please detail discrepancies)

no

16) Error behaviour

- What SSL/TLS-specific error conditions result in a warning to the user, while allowing the user to click-through and accept the connection? (check all that apply)
Expired end-entity certificate

Revoked end-entity certificate

End-entity Certificate not yet valid

Expired intermediate certificate

Revoked intermediate certificate

Intermediate Certificate not yet valid

End-entity Certificate does not chain to a root in the trust store

Path validation failure

- What visual indication is provided when a warning condition exists but has been waived by the user?
- What error conditions result in the connection being terminated?
- How does the client behave with respect to revocation status ([draft-hallambaker-pkistatus-01](http://tools.ietf.org/html/draft-hallambaker-pkistatus-01) Section 1.2)?
Ignore

Local

Soft-Fail

Hard-Fail

17) Certificate policy: Does the product UI differentiate between DV/OV and EV certificates?

yes (please specify)

no

18) Are additional validation steps evaluated before granting EV status?

yes (please specify)

no

19) Order of processing: in what order does the product process the certificate information:

Chain building & validation

Extensions

Revocation data

CAB Forum requirements

Other

20) If multiple errors are detected during processing, what determines which error is reported to the user?

All errors are reported

The most severe error is reported

The first error encountered is reported

21) Does the product enforce key usage constraints?

Yes, via Key Usage

Yes, via Extended Key Usage

Yes, via metadata associated with the root

22) Which versions of SSL/TLS does the product support? (check all that apply)

SSL 2

SSL 3

TLS 1.0

TLS 1.1

TLS 1.2

23) Does the product support SPDY?

SPDY 1

SPDY 2

SPDY 3

SPDY 3.1

24) SSL Handshake and Record protocols (see [draft-agl-wpkops-tlsstack-00](http://tools.ietf.org/html/draft-agl-wpkops-tlsstack-00) for details)

- Does the product support a ClientHello larger than 255 bytes? *yes* no
- What is the range of values that can be sent in the “client_version” field?
- What value is set in “random.gmt_unix_time”?
a timestamp

a random number

other (please elaborate)

- Does the product ever offer cipher suites that are not supported in the TLS version advertised (i.e. AEAD cipher suites prior to TLS 1.2)? *yes* no
- Does the product advertise or accept compression methods other than null? *yes* no
- Does the product fail when the server returns an empty Next Protocol Negotiation extension? *yes* no
- When the hostname of the server is known, does the product include the “server_name_indication” extension? *yes* no
- Does the product support a ServerHello larger than 255 bytes? *yes* no
- Describe the behavior of the product in the event of a failed TLS handshake. For example, does the product fall back to earlier TLS versions?
- When renegotiating a session, what value is set in the RSA EncryptedPreMasterSecret?
the version in the initial ClientHello

the value in the renegotiation ClientHello

- When AES-GCM is used, how is the 8-byte nonce populated?
With the TLS sequence number

With a random value

other (please elaborate)

- Does the product split each CBC record as described in [draft-agl-wpkops-tlsstack-00](http://tools.ietf.org/html/draft-agl-wpkops-tlsstack-00)? *yes* no
- What initial size is used for TLSPlaintext structures?

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-12-30. It was migrated from the old Trac wiki on 2023-01-15.*
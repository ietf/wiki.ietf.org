---
title: TLS WG - Transport Layer Security
description: 
published: true
date: 2023-01-05T00:05:44.820Z
tags: 
editor: markdown
dateCreated: 2022-12-21T22:33:15.647Z
---

# TLS WG Wiki 
## TLS / DTLS 1.3 Implementations
- mbed TLS

|         Feature        | Support                                                                                          |
|----------------------|--------------------------------------------------------------------------------------------------|
| Credentials            | Externally configured PSK, ticket-created PSK, certificates                                      |
| Ciphersuites           | TLS_AES_128_GCM_SHA256, TLS_AES_256_GCM_SHA384, TLS_AES_128_CCM_SHA256, TLS_AES_128_CCM_8_SHA256 |
| Signature Algorithm    | ecdsa_secp256r1_sha256, ecdsa_secp384r1_sha384, ecdsa_secp521r1_sha512                           |
| Supported Groups       | secp256r1, secp384r1, secp521r1                                                                  |
| Zero RTT               | Yes                                                                                              |
| Extensions             | Mandatory extension plus ALPN, MFL                                                               |
| TLS 1.3 draft version  | -21                                                                                              |
| DTLS 1.3 draft version | -01 (will upgrade to -02 asap)                                                                   |
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-10-31. It was migrated from the old Trac wiki on 2022-12-19.*
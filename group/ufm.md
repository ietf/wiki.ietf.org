---
title: Usable Formal Methods Proposed RG
description: 
published: true
date: 2023-08-09T12:27:52.237Z
tags: formal methods
editor: markdown
dateCreated: 2023-03-03T13:25:14.503Z
---

# Usable Formal Methods Proposed RG

This is the wiki page for the [ufm rg](https://datatracker.ietf.org/rg/ufmrg/documents/).

Please feel free to add content however you think best, and we'll discuss how to organise that during IETF 116.

## Overview Articles

* [SoK: Computer-Aided Cryptography](https://hal.inria.fr/hal-03046757/file/BarbosaetalOakland21.pdf)
* [CyBoK - Formal Methods for Security](https://www.cybok.org/media/downloads/Formal_Methods_for_Security_v1.0.0.pdf)

## For IETF-117 Isabelle presentation

* [Paulson - The Inductive Approach to Verifying Cryptographic Protocols](https://arxiv.org/pdf/2105.06319.pdf)
* [Paulson - Inductive Analysis of the Internet Protocol TLS](https://dl.acm.org/doi/pdf/10.1145/322510.322530)


## Ongoing Analyses

- [OAuth 2.0 Device Authorization Grant](https://www.rfc-editor.org/rfc/rfc8628), see also [Cross-Device Flows: Security Best Current Practice](https://datatracker.ietf.org/doc/draft-ietf-oauth-cross-device-security/). Involved RG members: Daniel Fett, Pieter Kasselman, Pedram Hosseyni, Tim Würtele


## Case Studies

### [Oblivious HTTP](https://ietf-wg-ohai.github.io/oblivious-http/draft-ietf-ohai-ohttp.html)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| Tamarin model (symbolic) | No | https://github.com/cloudflare/ohttp-analysis|

### [Oblivious DoH](https://datatracker.ietf.org/doc/rfc9230/)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| Tamarin model (symbolic) | ? | https://github.com/cloudflare/odoh-analysis |

### [TLS 1.3](https://www.rfc-editor.org/rfc/rfc8446)

| Type    | Peer-reviewed | Reference | TLS Draft | Artifacts | 
|:--------|:--------------|:----------|:----------|:----------|
| TODO | Y | [Beurdouche et al. - 2015 - A Messy State of the Union: Taming the Composite State Machines of TLS](https://hal.inria.fr/hal-01114250/file/messy-state-of-the-union-oakland15.pdf) | TODO | TODO |
| Tamarin model (symbolic) | Y | [Cremers, Horvat, Hoyland, Scott, van der Merwe - 2017 - A Comprehensive Symbolic Analysis of TLS 1.3](https://dl.acm.org/doi/pdf/10.1145/3133956.3134063) | draft 21 | [webpage](https://tls13tamarin.github.io/TLS13Tamarin/), [repo](https://github.com/tls13tamarin/TLS13Tamarin/tree/master/src/rev21) |
| Symbolic (ProVerif) and Computational (CryptoVerif) | Y | [Bhargavan et al. 2018 - Verified Models and Reference Implementations for the TLS 1.3 Standard Candidate](https://hal.inria.fr/hal-01528752/document) | draft 18 | [repo](https://github.com/inria-prosecco/reftls) |
| TODO | Y | [Patton et al. - 2018 - Partially Specified Channels](https://dl.acm.org/doi/pdf/10.1145/3243734.3243789) | draft 23 | TODO |

Old TLS versions:
- [Krawczyk et al. - 2013 - On the Security of the TLS Protocol: A Systematic Analysis](https://eprint.iacr.org/2013/339.pdf)
- [Bhargavan et al. - 2014 - Proving the TLS Handshake Secure (as it is)](https://eprint.iacr.org/2014/182.pdf)
- [Cremers, Horvat, Scott, van der Merwe - 2016 - Automated Analysis and Verification of TLS 1.3: 0-RTT, Resumption and Delayed Authentication](https://ieeexplore.ieee.org/document/7546518)

### TLS Extensions

|Extension | Type    | Peer-reviewed | Reference | Artifacts | 
|:---------|:--------|:--------------|:----------|:----------|
| TLS Encrypted ClientHello | ProVerif model (symbolic) | Y | [A Symbolic Analysis of Privacy for TLS 1.3 with Encrypted Client Hello](https://dl.acm.org/doi/abs/10.1145/3548606.3559360) | [repo](https://gitlab.inria.fr/chevalvi/echo_tls)
| Exported Authenticators | TODO | ? | [Exported Authenticators](https://pure.royalholloway.ac.uk/ws/files/33074422/2018HoylandJGPhD.pdf) | TODO |
| KEMTLS (AuthKEM and Hybrid-KEX) | Computational | Y | [KEMTLS](https://eprint.iacr.org/2022/1111.pdf) | TODO |
| KEMTLS (AuthKEM and Hybrid-KEX) | Tamarin model (symbolic) | Y | [A tale of two models: formal verification of KEMTLS via Tamarin](https://eprint.iacr.org/2022/1111.pdf) | TODO |

### [Message Layer Security](https://datatracker.ietf.org/doc/draft-ietf-mls-architecture/) (and [protocol](https://datatracker.ietf.org/doc/draft-ietf-mls-protocol/))

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| Manual (game-based computational) & Tamarin model (symbolic) | Yes | [Cohn-Gordon et al. - 2018 - On Ends-to-Ends Encryption](https://eprint.iacr.org/2017/666.pdf) |
| TODO | ? | [Bhargavan et al. - 2018 - TreeKEM: Asynchronous Decentralized Key Management for Large Dynamic Groups](https://hal.inria.fr/hal-02425247/file/treekem%20%281%29.pdf) |
| TODO | Yes | [Alwen et al. - 2019 - Security Analysis and Improvements for the IETF MLS Standard for Group Messaging](https://eprint.iacr.org/2019/1489) |
| F* (symbolic) | ? | [Bhargavan et al. - 2019 - Formal Models and Verified Protocols for Group Messaging: Attacks and Proofs for IETF MLS](https://hal.laas.fr/INRIA/hal-02425229v1/file/mls-treekem.pdf) |
| TODO | ? | [Alwen et al. - 2020 - Continuous Group Key Agreement with Active Security](https://eprint.iacr.org/2020/752.pdf) |
| TODO | ? | [Alwen et al. - 2020 - On The Insider Security of MLS](https://eprint.iacr.org/2020/1327.pdf) |
| F* (symbolic) | Yes | [Beurdouche B. - 2020 - PhD Thesis - Formal Verification for High Assurance Security Software in F*](https://beurdouche.github.io/assets/thesis-beurdouche.pdf) |
| TODO | ? | [Brzuska et al. - 2021 - Cryptographic Security of the MLS RFC, Draft 11](https://eprint.iacr.org/2021/137.pdf) |
| TODO | ? | [Alwen et al. - 2021 - Modular Design of Secure Group Messaging Protocols and the Security of MLS](https://eprint.iacr.org/2021/1083.pdf) |
| TODO | ? | [Alwen et al. - 2021 - Server-Aided Continuous Group Key Agreement](https://eprint.iacr.org/2021/1456.pdf) |
| TODO | Yes | [Cremers et al. - 2021 - The Complexities of Healing in Secure Group Messaging: Why Cross-Group Effects Matter](https://www.usenix.org/system/files/sec21-cremers.pdf) |
| F* (symbolic) | Yes | [Wallez et al. - 2023 -TreeSync: Authenticated Group Management for Messaging Layer Security](https://eprint.iacr.org/2022/1732.pdf) |

### [LAKE/EDHOC](https://datatracker.ietf.org/doc/draft-ietf-lake-edhoc/)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| TODO | ? | [Bruni18] Bruni, A., Sahl Jørgensen, T., Grønbech Petersen, T., and C. Schürmann, "Formal Verification of Ephemeral Diffie-Hellman Over COSE (EDHOC)", November 2018, <https://www.springerprofessional.de/en/formal-verification-of-ephemeral-diffie-hellman-over-cose-edhoc/16284348> |
| TODO | ? | [Norrman20] Norrman, K., Sundararajan, V., and A. Bruni, "Formal Analysis of EDHOC Key Establishment for Constrained IoT Devices", September 2020, <https://arxiv.org/abs/2007.11427> |
| TODO | ? | [CottierPointcheval22] Cottier, B. and D. Pointcheval, "Security Analysis of the EDHOC protocol", September 2022, <https://arxiv.org/abs/2209.03599> |
| TODO | ? | [Jacomme23] Jacomme, C., Klein, E., Kremer, S., and M. Racouchot, "A comprehensive, formal and automated analysis of the EDHOC protocol", October 2022, <https://hal.inria.fr/hal-03810102/> |
| TODO | ? | [GuentherIlunga22] Günther, F. and M. Ilunga, "Careful with MAc-then-SIGn: A Computational Analysis of the EDHOC Lightweight Authenticated Key Exchange Protocol", December 2022, <https://eprint.iacr.org/2022/1705> |

### [OPAQUE](https://datatracker.ietf.org/doc/draft-irtf-cfrg-opaque/)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| TODO | ? | [OPAQUE](https://eprint.iacr.org/2018/163.pdf) |

### [CPACE](https://datatracker.ietf.org/doc/draft-irtf-cfrg-cpace/)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| TODO | ? | [CPACE](https://hal.inria.fr/hal-03442101/document) |

### [OAuth 2.0](https://datatracker.ietf.org/doc/rfc6749)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| [WIM](https://www.sec.uni-stuttgart.de/research/wim/) (symbolic) | Y | [Fett, Küsters, Schmitz. A Comprehensive Formal Security Analysis of OAuth 2.0](https://publ.sec.uni-stuttgart.de/fettkuestersschmitz-ccs-2016.pdf) |
| [WIM](https://www.sec.uni-stuttgart.de/research/wim/) (symbolic) | Y | OAuth 2.0 + extensions (PKCE, mTLS, etc). [Fett, Hosseyni, Küsters. An Extensive Formal Security Analysis of the OpenID Financial-grade API](https://publ.sec.uni-stuttgart.de/fetthosseynikuesters-fapi-sp-2019.pdf) |

### [ACME](https://datatracker.ietf.org/doc/rfc8555)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| [DY* model](https://reprosec.org/) (symbolic) | Y | [Bhargavan, Bichhawat, Do, Hosseyni, Küsters, Schmitz, Würtele. An In-Depth Symbolic Security Analysis of the ACME Standard](https://publ.sec.uni-stuttgart.de/bhargavanbichhavatdohosseynikuestersschmitzwuertele-ccs-2021.pdf) |

### [RATS](https://datatracker.ietf.org/doc/rfc9334)

| Type    | Peer-reviewed | Reference | 
|:--------|:--------------|:----------|
| ProVerif model (symbolic) | N | [Sardar, Fossati, Frost. SoK: Attestation in Confidential Computing](https://www.researchgate.net/publication/367284929_SoK_Attestation_in_Confidential_Computing) |

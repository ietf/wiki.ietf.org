---
title: IETF Security Area Review Issues
description: 
published: true
date: 2022-11-09T15:47:47.404Z
tags: 
editor: markdown
dateCreated: 2022-11-09T15:44:38.941Z
---

Certain security-related issues show up time and time again when the Area Directors in the IETF Security Area (or members of the [https://datatracker.ietf.org/group/secdir/about/ Security Directorate]) complete reviews of Internet-Drafts. I-D authors are advised to address these issues ahead of time to smooth the path to RFC publication. 

## Threat Models and Security Environment

The primary and foremost question for a security analysis is: what environment (and thus threat model) does the system run in?  Absent disclaimer, the Internet Threat Model of [https://www.rfc-editor.org/rfc/rfc3552.html RFC 3552] is assumed, and we have to consider that an attacker can modify, drop, or spoof any protocol message.  It's important to consider the potential for off- vs. on-path attackers (e.g., as in [https://www.rfc-editor.org/rfc/rfc7430.html RFC 7430]), privacy considerations ([https://www.rfc-editor.org/rfc/rfc6973.html RFC 6973]), and the potential interaction with pervasive monitoring ([https://www.rfc-editor.org/rfc/rfc7258.html RFC 7258]).  Additionally, a sufficiently powerful off-path attacker can become on-path using techniques like DNS poisoning and BGP hijacking. 

Citing that a specification will be fielded in a limited domain (e.g., referencing [https://www.rfc-editor.org/rfc/rfc8799 RFC 8799]) is not a sufficient discussion of security considerations.  The bounds and administrative controls of the limited domain should be discussed.  In addition to the considerations noted above, the specification must described how the specification behavior will be constrained or contained in the limited domain.

## (Un)trusted Parties

We also need a clear picture of the trust level in all the parties involved in the system.  If there is multi-party or group communication involved, using symmetric cryptography implies that any member can send as if they were any other member, and thus requires that all parties are equally trusted.

## Precision of Terminology

"Secure" and "securely" are subject to interpretation.  Be specific about what properties are needed and provided -- common ones are integrity protection, confidentiality protection, source authentication, replay protection, reliable sequencing, and loss detection.  

## Some Specific "Hot Topics"

## Pairing Threats and Mitigations

When conducting the security analysis, consider how the identified threat model could affect the protocol operation.  The security considerations need to describe which of these threats have been addressed in the specification and what additional mitigations may be required for the residual threats (e.g., through operational practices, higher-level protocols, application features).

### "Use TLS"/"Use IPsec"

"use TLS" or "use IPsec" are not complete solutions without an authorization model.  For TLS, what certificate validation procedures will be used (and how will the application know what name to validate against)?  For IPsec, what will be used for key distribution (authorization may end up being implicit in distribution)?  

"use TLS" also requires guidance on versions and ciphersuites.  [https://www.rfc-editor.org/info/bcp195 BCP 195] has recommendations for effective use of (D)TLS.

## New Cryptography

Inventing new cryptography is difficult to get right.  Use preexisting solutions.

### Quality Randomness
The security of cryptography depends on high quality source of randomness. [https://www.rfc-editor.org/rfc/rfc4086.html RFC 4086] provides guidance on ensuring it. 

### YANG models

YANG models need security considerations.  The OPS area has a [https://trac.ietf.org/trac/ops/wiki/yang-security-guidelines useful template] by which to frame the security issues.

### URIs

Using URIs to describe and locate resources has its own set of security considerations discussed in Section 7 of [https://www.rfc-editor.org/rfc/rfc3986.html RFC 3986].

### Replay and Time-related Attacks

Replay attacks and time synchronization attacks should be considered -- an attacker that can store+replay wire traffic or cause the parties to disagree about the current time can cause protocol degradation.

### Broken Constraints

Attackers do not need to obey protocol rules, or even the law.  Consider what happens if a party in the communication does not adhere to a "MUST" or "SHOULD".  Radio technology power and duty cycle limits can also be ignored, and proximity is not always a guarantee of talking to the intended peer.

### Cryptographic Agility

Attacks on cryptography always get better.  Long-lasting protocols should provide a mechanism for algorithm agility to remain viable, per [https://www.rfc-editor.org/rfc/rfc7696.html BCP 201].  When updating these long-lasting protocols, consider if revised security guidance is needed for the originally specified cryptographic algorithms/methods/suites.

### Plaintext Passwords

Sending plaintext passwords to a server requires great trust in (and strong authentication of) the server.  Modern cryptographic techniques are available that eliminate the need for these mechanisms (and level of trust in the peer), using asymmetric cryptography/proof-of-possession, password authenticated key exchange, and the like.

### Always Something New (or, "Why Write the Document?)

"This document introduces no new security considerations [on top of the base protocol spec]" is rarely true.  They may not be substantially different from existing ones or significant given the broader context, but that doesn't mean we can skip discussing them.

---
title: NASR(non-WG)-Network Attestation for Secured foRwarding
description: The aim of Network Attestation for Secured FoRwarding is to address the challenges associated with proving state and characteristics of a network path are compliant to a set of claims, so as to achieve predictable and verifiable forwarding behavior. 
published: true
date: 2025-07-01T09:32:51.730Z
tags: nasr
editor: markdown
dateCreated: 2025-04-10T03:07:00.098Z
---

# NASR
# Welcome to the NASR Wiki

The aim of [Network Attestation for Secured foRwarding (NASR)](https://datatracker.ietf.org/wg/nasr/about/) is to address the challenges associated with proving state and characteristics of a network path are compliant to a set of claims, so as to achieve predictable and verifiable forwarding behavior. 

## NASR IETF122 BoF and Maillist Discussion Q/A
The more detailed BoF discussion records can be viewed in [nasrbof](https://notes.ietf.org/notes-ietf-122-nasr) 

Q1: Why is not end-to-end protection sufficient and why should we care about where the traffic goes through?

Q2: Why this is important to assure at the network layer?

Q3: List actual concrete examples of existing regulations.

Q4: List the technical requirements in detail.

Q5: NASR being a possible way to address pervasive traffic monitoring threats?

Q6: Proof of transit does not imply that the packet didn’t exit the path. 
---->PoNT is out of scope. the motivation is to prove that the data packet is forwarded according to the agreed route.

Q7: There is work about proof of transit that has been done in SFC, what is needed to highlight what is not there (in routing, RATS, SFC PoT) which NASR will provide.
---->NASR is the joint use of attestation techncology and proof of transit.

Q8: What about lawful interceptions?
---->Trustworthiness as defined in RATS can attest that a router does what is supposed to do, including lawful interception if it is what it is supposed to do.

Q9: There is work from RATS, like RFC 9684, that can be used in NASR. Why an independent effort? Why not putting this work in an existing WG?
---->RATS is the building block to create path attestation, whose usage is then verified with proof of transit. These two things together look out of the scope of RATS. NASR does not want to replace RFC 9684, but rather leverage it.

Q10: What is exactly the definition of a path in NASR? BGP session? Tunnel? physical links?
---->A document in PANRG has a good definition of what a path is.

Q11: Trustworthiness and traffic engineering are already addressed in different places, so what is new in NASR? 
---->The possibility for the customers to verify that the traffic has been engineered in the way they asked. How to do it is the gap NASR wants to fill.

Q12: Candidate solutions from problems exist in other venues (Routing security / SFC)
---->True, but they do not address the combination (forwarding).

Q13: Proposed work may result in fragmentation of the Internet, including and excluding poeople?
---->No. That is the wrong terminology to use. NASR is about path complaint to a set of claims. Is a specific service in a limited domain not a general service for the Internet.

Q14: Clarification of requirements whether the requirement is to detect nodes along the path that do not support NASR?
---->No. Only have proof that traffic went through a set of nodes that support NASR.

Q15: Bringing the work to RATS would not work. RATS is already bloated and bringing all this work there is not possible.

Q16: PoT has cryptographic cost.
---->Implementation on SRv6 shows that the cost is very limited.
---->Path Tracing in SRv6 networks(https://datatracker.ietf.org/doc/draft-filsfils-ippm-path-tracing/02/), PT provides efficient, HW friendly solution,it has been designed for linerate hardware implementation in the base pipeline. And it works sufficiently for a basic POT functionality.

Q17: Remark about the scope of implementation: Internet or limited domain?
---->limited domain implemented at the operator level.
---->SRv6 Path Verification(https://datatracker.ietf.org/doc/draft-yang-spring-srv6-verification/), proposes a path verification mechanism for SRv6, the implementation of verification relies on enhancing HMAC.

Q18: Need to verify every configuration (binary / configuration files / routers) in order to determine the properties of the path?
---->This is not how remote attestation works. There is no configuration shared, the configuration is attested through trusted third party. You share hash values that attest the the property. RFC9334/ RFC9683/ RFC9684 for more detailed informations about how to evaluate and verify.

Q19: Why not doing this in the SFC WG?
---->Piece can be done in other WG, but from a global perspective wold be better to have a WG.

Q20: For reliability, what about having multiple paths? Can it be a scalability issue? 
----Yes, the attribute of multiple path is included.

Q21: Is it pratical to mechanically verify that a configuration is acceptable
----Yes. but not RATS and not SEC area question, OPS area question.

Q22: Is it possible to determine that the configuration/policy of a device is acceptable in a fashion that does not expose that configuration/policy to a counterparty
----the party allowed to receive information about the router such as the configuration must be trusted to handle that information in a required responsible fashion, but not RATS and not SEC area question, OPS area question. RFC8994 can help.

Q23: about device management, what is NASR doing that RANCID doesn't? Why need transit proofs if never exiting a domain?
----Traditional tools such as RANCID cannot ensure the authenticity of data provided by network devices and may be unreliable due to device tampering; For organizations that require auditing or certification, it is necessary to ensure that the system data obtained is authentic and verifiable, including the legality and security of critical data flows.

Q24：it is difficult/impossible to derive from the configuration a specific behavior
----Example: evaluate from config that specific traffic not derailed from a path that is easily determined from the config and operational state.

Q25：The semantic correlation verification between configuration and routing behavior has not been resolved yet
----Simplified routing platform, functional control, Restconf and Orchestration can solve the problem, some operators have done, and Michael is working on a PoC.

## Policy Drivers of NASR

Privacy concerns and regulation on personal data in various countries

Europe Union: GDPR(General Data Protection Regulation)
CHAPTER V - Transfers of personal data to third countries or international organisations
Article 44 - General principle for transfers
Article 45 - Transfers on the basis of an adequacy decision
https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32016R0679

Germany: TTDSG/TDDDG(Telekommunikation-Telemedien-Datenschutz-Gesetz)
https://www.gesetze-im-internet.de/ttdsg/

China: Data Security Law (DSL)
https://www.gov.cn/xinwen/2021-06/11/content_5616919.htm


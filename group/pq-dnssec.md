---
title: PQ DNSSEC Research
description: Wiki page for the pq-dnssec@ietf.org non-wg mailing list
published: true
date: 2025-02-27T12:28:42.427Z
tags: 
editor: markdown
dateCreated: 2024-10-15T13:50:25.960Z
---

This wiki page is designated to collecting information relevant to the non-wg mailing list pq-dnssec@ietf.org ([mailman](https://mailman3.ietf.org/mailman3/lists/pq-dnssec.ietf.org/)) on post-quantum DNSSEC research.

Documents:
- [Research Agenda for a Post-Quantum DNSSEC](https://datatracker.ietf.org/doc/draft-fregly-research-agenda-for-pqc-dnssec/)

# IETF 122 Side Meeting
[Timeslot tbd]

Meeting notes are available [tbd].

## Agenda (work-in-progress)
- 5' Note Well / Agenda Bashing ([Slides])
- 15'+q Minh Hoang Tran (Virginia Tech): Randomized simulation of SLH-DSA-MTL's impact on reducing PQ-DNSSEC signature sizes ([Slides])
- 15'+q Joe Harvey & Swapneel Sheth (Verisign): PQ DNSSEC with MTL Mode - Metrics and Observations ([Slides])
- 15'+q Ondřej Surý: Feasibility of the new Post Quantum Cryptography for DNSSEC ([Slides])
- AOB

### Minh Hoang Tran: Randomized simulation of SLH-DSA-MTL's impact on reducing PQ-DNSSEC signature sizes
Given the potential of the quantum computers to defeat existing asymmetric key cryptography algorithms that current DNSSEC relies upon, recent works have surveyed possible PQC candidates for DNSSEC. SLH-DSA-MTL (draft-harvey-cfrg-mtl-mode-04) is an extension to SLH-DSA which seeks to reduce the bandwidth and computation costs of SLH-DSA signatures through amortization using a growing Merkle Tree Ladder (MTL). The algorithm has also been proposed as a possible PQC candidate for DNSSEC (draft-fregly-dnsop-slh-dsa-mtl-dnssec-03). However, little has been done to survey its operational suitability within DNSSEC, particularly with regards to the limited message sizes and computational resources of DNS servers. This work seeks to estimate the effect that SLH-DSA-MTL’s condensed signatures have on reducing PQ-DNSSEC message costs by simulated randomized querying of a TLD zone and comparing SLH-DSA-MTL against both normal SLH-DSA and existing non-PQC algorithms.

### Joe Harvey & Swapneel Sheth: PQ DNSSEC with MTL Mode - Metrics and Observations
Using the open-sourced MTL mode enabled DNS software from the current and past IETF Hackathons, we present some metrics that focus on the general operation of PQC DNSSEC and the operational considerations of MTL mode on zone signing and query/responses. We would also like to collect further feedback from the resolver community and setup for additional proof-of-concept implementations in other code bases to further evaluate interoperability and to confirm our collected metrics.

### Ondřej Surý: Feasibility of the new Post Quantum Cryptography for DNSSEC

The Domain Name System (DNS) is a critical part of the internet that maps domain names to their corresponding IP addresses. DNS Security Extensions (DNSSEC) were developed to secure DNS, preventing attacks like cache poisoning and man-in-the-middle attacks by authenticating DNS data with cryptographic signatures. However, the rise of quantum computing presents major risks to current cryptographic systems because many public-key cryptosystems can be broken by quantum algorithms.
 
As a result, the National Institute of Standards and Technology (NIST) is currently working on standardizing more post-quantum cryptographic algorithms because current post-quantum signature schemes standardized by NIST have large public keys and/or signatures that can make DNSSEC operations more complicated and burdensome.
 
Beernink suggested the solution of putting the public keys on webservers that would decrease the size of DNSSEC records but would add complexity, for instance, dependence on the HTTP protocol and the need for the DNS resolver operators to have webservers. 
 
In this work, we investigate the appropriateness of the new post-quantum cryptography schemes for the DNSSEC.

# IETF 121 Side Meeting
Thursday, Nov 7, 2024 10:00-11:30 UTC ([information about room and online participation](https://wiki.ietf.org/en/meeting/121/sidemeetings#meeting-thursday))

Meeting notes are available [here](https://wiki.ietf.org/en/group/pq-dnssec/ietf-121-meeting-notes).

## Agenda

- 5' Note Well / Agenda Bashing ([Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/chair-slides.pdf))
- 15'+q Joe Harvey (Verisign): PQ DNSSEC with MTL Mode ([Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/Harvey_PQ_DNSSEC_with_MTL_Mode.pdf))
- 15'+q Jason Goertzen (SandboxAQ): Field study on mitigating the costs of Post-Quantum DNSSEC with Merkle Trees ([Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/Goertzen_Field_Experiments_on_Post-Quantum_DNSSEC.pdf))
- 20'+q Ralph Koning (SIDN Labs): A testbed to evaluate post-quantum cryptography in DNSSEC ([Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/Koning_A_testbed_to_evaluate_post-quantum_cryptography_in_DNSSEC.pdf))
- Open Discussion / AOB ([Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/chair-slides.pdf))

### Joe Harvey: PQ DNSSEC with MTL Mode

Post-quantum DNSSEC has been one of the core use cases for [MTL Mode](https://datatracker.ietf.org/doc/draft-harvey-cfrg-mtl-mode/). The first phase of our operational research on MTL mode for DNSSEC focused on demonstrating zone signing. A proof-of-concept zone with MTL Mode condensed and full signatures was provided at the [IETF-120 hackathon - Exploring Implementation Approaches for Merkle Tree Ladder Mode Signatures for DNSSEC](https://wiki.ietf.org/en/meeting/120/hackathon). Using the open source MTL Mode validation tools, users were able to make sample queries and verify the responses. The next phase of research has focused on adding a recursive validator to the proof-of-concept system.  The proof-of-concept system tests the integration of MTL Mode into DNSSEC while minimizing changes to the resolver codebase.  Implementation was done using the  “request / retry” or “flag” approach in the [MTL considerations draft](https://datatracker.ietf.org/doc/draft-harvey-cfrg-mtl-mode-considerations/) which is expressed as the SOA lookup approach in the appendix of the [MTL DNSSEC draft](https://datatracker.ietf.org/doc/draft-fregly-dnsop-slh-dsa-mtl-dnssec/).  This implementation allows us to validate our initial [assumptions on the average endurance](https://eprint.iacr.org/2022/1730.pdf) of a reference value that would be sent to a requester in MTL mode and the query/response sizes. The third research phase will involve creating a more complete MTL DNSSEC draft specification implementation that includes the new EDNS full signature option.  Further, we would like to collect further feedback from the resolver community with additional proof-of-concept implementations in other code bases and overall operational experience.

### Jason Goertzen: Field study on mitigating the costs of Post-Quantum DNSSEC with Merkle Trees

We have been working on deploying and measuring some zones that are signed using PQC and compressed with merkle trees. We are in the late stages of completing this evaluation and would love the opportunity to present how it went and the tweaks we needed to bind and the DNS protocol to add this compression technique to PQ-DNSSEC. We also take advantage of a major finding in the [Batched signatures revisited paper](https://pub.sandboxaq.com/publications/batch-signatures-revisited) to have an even more drastic level of compression.

### Ralph Koning: A testbed to evaluate post-quantum cryptography in DNSSEC

SIDN Labs has developed the Post-quantum Algorithm Testing and Analysis for the DNS (PATAD) testbed, which is available as open source software. In this presentation, we will explain how the PATAD testbed works the post-quantum algorithms we are looking at and how we use the testbed to gather results on their performance. Finally, we will encourage DNS developers and operators to help extending the testbed to enable interop testing between multiple implementations.


# IETF 120 Side Meeting
Monday, July 22, 2024 11:00-11:30 PDT

## Agenda
Figure out where to live.

## Notes
There were about 20 people present (more than we expected).

Apologies for the lack of remote participation -- we were under the impression the session was established when it was actually only the preview.

Below are some notes from the meeting, but they only cover major points, not the entire discussion.

We briefly discussed some of the concerns that Colin (IRTF Chair) has voiced earlier:
- It's clear that there is work to be done in this area, but not sure if fits with the IRTF.
- The narrow scope of the proposed RG.
- The expected run-time of the proposed RG (which might be significantly shorter than the typical WG).

After some discussion, we have arrived at a different approach: we'll create a non-WG mailing list at the IETF, do work in side meetings, and start tackling work as we see fit. The idea is that later, after a few meetings, we can evaluate the work that has taken place and see if it looks like an RG, or more like a WG (or neither).

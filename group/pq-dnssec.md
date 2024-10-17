---
title: PQ DNSSEC Research
description: Wiki page for the pq-dnssec@ietf.org non-wg mailing list
published: true
date: 2024-10-17T09:07:18.112Z
tags: 
editor: markdown
dateCreated: 2024-10-15T13:50:25.960Z
---

This wiki page is designated to collecting information relevant to the non-wg mailing list pq-dnssec@ietf.org ([mailman](https://mailman3.ietf.org/mailman3/lists/pq-dnssec.ietf.org/)) on post-quantum DNSSEC research.

Documents:
- [Research Agenda for a Post-Quantum DNSSEC](https://datatracker.ietf.org/doc/draft-fregly-research-agenda-for-pqc-dnssec/)

# IETF 121 Side Meeting
Thursday, Nov 7, 2024 10:00-11:30 UTC ([information about room and online participation](https://wiki.ietf.org/en/meeting/121/sidemeetings#meeting-thursday))

## Agenda

- 5' Note Well / Agenda Bashing
- 15'+q Swapneel Sheth and Joe Harvey (Verisign): PQ DNSSEC with MTL Mode
- 15'+q Jason Goertzen (SandboxAQ): Field study on mitigating the costs of Post-Quantum DNSSEC with Merkle Trees
- 20'+q Ralph Koning (SIDN Labs): A testbed to evaluate post-quantum cryptography in DNSSEC
- Open Discussion / AOB

### Swapneel Sheth, Joe Harvey: PQ DNSSEC with MTL Mode

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

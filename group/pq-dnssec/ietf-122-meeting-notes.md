---
title: IETF 122 PQ DNSSEC side meeting notes
description: 
published: true
date: 2025-03-18T06:21:13.938Z
tags: 
editor: markdown
dateCreated: 2025-03-18T04:58:13.998Z
---

# IETF 122 PQ DNSSEC Side Meeting notes

Date and time: 2025-03-18, 9:30

Minutes: Peter Thomassen

## Randomized evaluation of SLH-DSA-MTL's impact on reducing PQ-DNSSEC signature sizes

Presented by Minh Hoang Tran (Virginia Tech), [slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF122/Tran_Randomized_evaluation_of_SLH-DSA-MTL's_impact_on_reducing_PQ-DNSSEC_signature_sizes.pdf)

3 main parts of presentation:
- overview of MTL mode, also considering signature backwards compatibility
- Zone signing strategies with .com RRSIG inceptiont imes
- Ladder endurance evaluation

MTL mode has two types of signatures, full and condensed

Zone-signing strategies: all-at-once, as-needed (incremental), batched
impacts tradeoff between zone responsiveness and signing spike (for large zones)

For MTL mode, ladder is needed for each signing batch
- "all at once" is best in that regard, but least responsive
- "as-needed" has one ladder per signatures, nullifies condensed approached
- "batched": trade-off

.com zone signing strategy: every day, sign 1/4 of zone

Evaluation of latter full sig query patterns in the .com scenario:
- output: number of full signatures required; max ladder cache size; number of queries between full signs
- result: number of full signatures going down for longer batches (as expected)

Q: Peter Thomassen
- What's the effect of adding new signed delegations outside regular batches?
	A: that would work in as-needed mode, effect not expected to be very large

Q: Scott Fluhrer
- What's the cost, signature time or distribution of signatures?
	A: signature size

Q: Paul Hoffman
- Comment: too premature to decide whether those large sigs can be sent around

## PQ DNSSEC with MTL Mode - Metrics and Observations

Presented by Joe Harvey (Verisign), [slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF122/Harvey,Sheth_PQ_DNSSEC_MTL_Mode_Observations.pdf)

Topic today: metrics and observation

test setup with client, Unbound resolver and NSD auth
sample zone with 1500 delegated sub-domains
shares number of
- time to sign/verify, and sizes of zone files and public keys
- message sizes, query times
for various scenarios; sometimes truncated responses
FL-DSA-512 and SLH-DSA-MTL-SHA2-128[condensed] worked without truncation

Open questions include: what impact do forwarders have in this model?

Q: Paul Hoffman
- To answer Russ's question, resolvers would be able to add response bit to say the response came over TCP

Q: Benno Overeinder
- Can't remember that!

## Feasibility of the new Post Quantum Cryptography for DNSSEC

Presented by Ondřej Surý, [slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF122/Sur%C3%BD_PQC_for_DNSSEC.pdf)

Looking at HAWK, SQISign, MAYO, Antrag
SQISign, HAWK-256, MAYO/Antrag sizes are somewhat DNSSEC-suitable (from promising to less)

gives overview on implementation status for each algorithm

shares stats for sig sizes, signing/validation timings, and message sizes
shows diagrams of latency, CPU usage and memory usage per algorithm, showing deviations from conventional algorithms

Future work: increase EDNS(0) buffer size, optimize implementations, etc.
suggests not to rush PQ DNSSEC work as new algorithms are coming that may be suitable

Q: Scott Fluhrer
- How painful is it to have large public keys?
	A: If bad actor sets low TTL, it will kill performance because of TCP

Q: Caspar Schutijser
- Which variant of SQISign did you use?
	A: the (newer) NIST 2 variant

## AOB

- Short discussion on how to foster more work into attacks against PQC signature mechanisms
- Discussion: Do we need to focus on NIST algorithms? Perhaps a non-NIST algorithm fits DNSSEC!

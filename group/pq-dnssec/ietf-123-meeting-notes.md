---
title: IETF 123 PQ DNSSEC Side Meeting notes
description: 
published: true
date: 2025-08-12T11:17:41.902Z
tags: 
editor: markdown
dateCreated: 2025-07-24T08:27:06.307Z
---

# IETF 123 PQ DNSSEC Side Meeting notes

Date and time: 2025-07-24, 8:30

Minutes: Peter Thomassen

## Evaluating PQC (Falcon and Mayo) in DNSSEC Signing for TLD Operators
Presented by Elmer Lastdrager (SIDN Labs), [slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF123/Lastdrager_Evaluating_PQC_Falcon_and_Mayo_in_DNSSEC_Signing_for_TLD_Operators.pdf)

- Testbed with some PQ algorithms for DNSSEC
- Hardware support: AVX2
- tested all combinations of 4 algorithms, 3 zonefiles, nonexistence proofs
- algos: RSA-1280, ECDSA-P256, Falcon-512, MAYO-2 (R1)
- .nl, .se, .nu, showing zone files sizes / signing / validation times by algorithm (see slides)
- next steps: investigate impact of TCP; add SQIsign; and MTL mode

## Impact of Merkle Tree Ladder (MTL) Mode Signatures on DNSSEC
Work by Jannik Peters, presented by Willem Toorop (NLnet Labs), [slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF123/Peters_Impact_of_Merkle_Tree_Ladder_MTL_Mode_Signatures_on_DNSSEC.pdf)

- What's the impact of using SLH-DSA-MTL in DNSSEC?
- How does it affect sig/key size? How do size an sign/verify times compare?
- Quick primer on Merkle trees / Merkle authentication paths
- significant reduction of signature size in MTL mode
- shows size distribution of full/condensed signatures for root zone, and sig size as function of RRset count
- SOA and DNSKEY responses always require TCP (as do NODATA and NXDOMAIN)
- next steps: look more into NSEC, test fast variant, introduce EDNS(0) option, test impact on dynamic zones
- table of signing/verification times: MTL mode speeds it up by orders of magnitude

## A post-quantum cryptography strategy for DNSSEC
Presented by Joe Harvey (Verisign), [slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF123/Harvey_A_post-quantum_cryptography_strategy_for_DNSSEC.pdf)

- Proposed strategy:
  * don't wait for more algorithms from NIST
  * find way to deploy currently standardized algorithms
  * strategy should involve at least one conservative algorithm (fallback) and one low-impact, drop-in algorithm (routine)
  * DNS operators should choose algorithm
- low-impact: no recommendation yet
- reslient fallback: propose SLH-DSA (remain open to others)
- Keep MTL mode in mind
- next steps: continue discussion on low-impact algorithm; analyze resource consumption attacks; then select algorithm
- Q&A: Swapneel Sheth asked if the group is OK with pursuing this strategy, e.g., by writing a draft; several thumbs-ups and no objections

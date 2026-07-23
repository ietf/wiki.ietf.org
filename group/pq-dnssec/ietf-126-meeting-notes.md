---
title: IETF 126 PQ DNSSEC Side Meeting notes
description: 
published: true
date: 2026-07-23T15:23:40.449Z
tags: 
editor: markdown
dateCreated: 2026-07-23T15:23:40.449Z
---

# IETF 126 PQ DNSSEC Side Meeting notes

Date and time: 2026-07-23, 9:30-11:00 CEST

Note taker: Peter Thomassen

## Presentations

- *[TCP testbed](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Hoffman_TCP_testbed.pdf)*
  by Paul Hoffman

- *[One-query resolution semantics of PQ-DNSSEC under MTL-mode](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Tran_One-query_resolution_semantics_of_PQ-DNSSEC_under_MTL-mode.pdf)*
  by Minh Hoang Tran

- *[Evaluating parameters for MTL Mode in real-world circumstances](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Almeloo_Evaluating_parameters_for_MTL_Mode_in_real-world_circumstances.pdf)*
  by Mike Almeloo

- *[Analyzing Hybrid-Signatures in DNSSEC with UDP-Fragmentation](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Heikamp_Analyzing_Hybrid-Signatures_in_DNSSEC_with_UDP-Fragmentation.pdf)*
  by Folmer Heikamp

- *[3 ideas on potential alternatives for how to "do DNSSEC"](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Stenstam_pq-experiments.pdf)*
  by Johan Stenstam

- *[Informal DNSSEC Algorithm Testing Registry](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Hoffman_Informal_DNSSEC_Algorithm_Testing_Registry.pdf)*
  by Paul Hoffman, Duane Wessels

- *[Where are we Headed?](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF126/Thomassen_Where-are-we-Headed.pdf)*
  by Peter Thomassen

Questions were taken collectively after the last presentation.

## Questions / Discussion

- Ondrej Sury: Need more (research) focus on what happens if not everyone plays nice
- Ondrej Sury: DNSOP split will happen very soon, then perhaps get PQ DNSSEC into the new DNS Protocol WG. May be faster than forming a PQ DNSSEC WG.
- Benno Overeinder: DNSOP is planning an Interim before next Meeting to discuss future steps.
- Petr Spacek: Two perspective, (1) firehose approach, many specs/standards, try what works/wins, (2) compare different protocols and implementations and actually evaluate, then selectively standardize
- Shane Kerr: we're like an RG but have a clock ticking! yet, no solution --> screwed. Should have the courage to try a solution, and do sales pitch for that
- Paul Hoffman: not as easy as just going for something that seems promising; cryptographers have operational concerns, like FALCON. NIST has slowed down, and there is no sufficiently vetted algorithm.
- Petr Spacek: having a suspicion that it may break is no reason to not specify it
- Ralf Weber: use some of the ideas presented here, use them independently. For example, rapid key rolls could go to DNSOP. Also, don't go overboard by requiring UDP with 1232 bytes max (other transports will come)
- Ondrej Sury: could require implementation/measurement/ DNS impact sections in specs. Maybe start with Paul's requirements draft and two algorithm specs, then go from there
- Allison Mankin: suggest non-BoF focused charter for a WG that works with the IRTF. Include IESG/ADs in discussion / interim, they are approachable and helpful
- Swapneel Sheth: bringing attention to PQ DNSSEC strategy draft, with a algorithm for low-impact (wait for NIST on that) and a resilient fallback
- Mark Andrews: suggest to allocate a PQC algorithm codepoint, then use sub-algorithms
- Paul/Ondrej/Allison: broader-scoped RG (not only DNS) has larger chance of success

## AOB

(None.)

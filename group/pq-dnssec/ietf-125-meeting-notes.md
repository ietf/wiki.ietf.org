---
title: IETF 125 PQ DNSSEC Side Meeting notes
description: 
published: true
date: 2026-03-17T03:05:29.452Z
tags: 
editor: markdown
dateCreated: 2026-03-17T03:05:29.452Z
---

# IETF 125 PQ DNSSEC Side Meeting notes

Date and time: 2026-03-17, 8:00-9:00 CST

Note taker: Caspar Schutijser

## Backwards compatible ladders in MTL-mode for SLA-compliant PQ-DNSSEC

Presented by Minh Hoang Tran, ([slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF125/Tran_Mitigating_signature_churn_Backwards-compatible_ladders_in_MTL-mode_for_Dynamic_pq-DNSSEC.pdf))

Questions:
- Paul Hoffman: clarifying question about [...] SOA RRSIG and TTL.
  - Minh Hoang Tran: yes, that is true.
  - Paul Hoffman: (worst case additional query ...)
  - Paul Hoffman: Is it true that if you get validation failure, you need to fetch a new ladder?
  - Paul Hoffman: You didn't fix that problem with the new scheme, just reduced the likelihood of it.
    - Minh Hoang Tran: yes

## Simulating DNSSEC on a testbed based on real resolver data

Presented by Elmer Lastdrager, ([slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF125/Lastdrager_Simulating_DNSSEC_on_a_testbed_based_on_real_resolver_data.pdf))

Questions:
- Ralf Weber: there's two types of timing measurements: (time difference) and user latency. Own experience is that the impact on user latency (when doing what?) is usually near-zero due to prefetching and caching.
- Paul Hoffman: you're regenerating DNS zones based on traffic that you captured. How much of that are you signing with DNSSEC? Because for example for .com, only a small part is signed.
  - Elmer: we have discussed this, for now we're signing all zones.
- Question from Jim Reid: are you going to use the normal EDNS buffer size, and not just assume that the buffer size is big enough (for what?)
  - Elmer: yes


## DNSSEC and PQC: practical impact of increased TCP in DNS

Presented by Elmer Lastdrager presenting Eline Stehouwer's work, ([slides here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF125/Stehouwer_Evaluation_impact_of_increased_TCP_on_name_servers.pdf))

Questions:
- Friendly interruption by Paul Hoffman: no-one is giving us measurements on that RTT-measurements by forcing TCP use to authoritative DNS servers, so thank you for doing that
- Ondřej Surý: I'm a bit surprised. Worst part of switching to TCP is usually the clients. If you switch to TCP, the impact on resolvers is more interesting?
- Ralf Weber: how many concurrent TCP connections did you use?
  - Elmer: for every query, we set up a new TCP connection.
  - Ralf Weber: with one or multiple clients?
  - Elmer: one client.
- Jim Reid: (didn't get all of this) when connections close immediately, ...
- Peter Thomassen: this presentation is not just about PQC. Perhaps also share it on the dnsop mailing list.
  - Elmer: will do.

## AOB

- Paul Hoffman: I put a question on the mailing list some time ago. There will be some social pressure to pick an algorithm. I would love to see research that supports which algorithm would work for us. Probably we will choose for ML-DSA, just because it works good enough. I'd like more discussion on that. Some people say signatures are not as urgent so we may get a bit more time.
- Paul Hoffman: we don't necessarily need wait with these presentations until these in-person meetings, what about presenting at dnsop interims for example?
  - Ondřej Surý and Benno Overeinder agree

---
title: Design team for bitstring addressing in RPL/ROLL
description: 
published: true
date: 2022-12-21T04:40:50.741Z
tags: 
editor: markdown
dateCreated: 2022-12-21T04:40:47.633Z
---

# Design team for bitstring addressing in RPL/ROLL
## Intended Charter

The intended first phase charter of this design team is to generate guidance for next steps in ROLL to scope and adopt work to support efficiently encoded "bitstring" style addresses. This addressing is meant to support more lightweight unicast and multicast forwarding options - both in terms of packet header size and/or per-node state. One starting point is stateless BIER-TE bitstring style addresses allowing to specify paths just as a sequence of bit addresses. The other starting point is bloom filters to compress large, stateful BIER bitstring style addressing.

The design team will consult with BIER WG, but because ROLL is focusing on low bitrate, low-power, software-forwarding, its solution space can explore options that may not necessarily be considered appropriate for general purpose BIER solutions that desire to support ASIC/NPU forwarding.

## Goals

Explore, describe and compare feasible options.

Characterize - storing mode vs. non-storing-mode. Scalability, Packet overhead, Memory overhead. Network size (and configuration),...

(TBD) - refine goals, ideas during first meeetings.

Target first phase output: draft to report back to WG, independent of whether or not that draft itself makes sense to convert into RFC.

Determine network characteristics for which a solution is most appropriate such that the design team can propose a set of solutions that are beneficial and reject less appropriate solutions.

Members <TBD...>

Mailing list: Target name: roll-bier-dt Set up via: https://www.ietf.org/how/community-discussions/nonwg/guidelines/ 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-03-31. It was migrated from the old Trac wiki on 2022-12-20.*
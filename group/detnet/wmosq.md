---
title: DetNet Open Working Meetings on Enhanced DetNet Data Plane
description: 
published: true
date: 2023-07-31T17:09:44.648Z
tags: detnet
editor: markdown
dateCreated: 2023-04-11T15:07:45.147Z
---

## Agendas and Meeting notes

[2023-04-11](/group/detnet/wmosq/2023-04-11)
[2023-04-26](/group/detnet/wmosq/2023-04-26)
[2023-05-09](https://datatracker.ietf.org/meeting/interim-2023-detnet-03/session/detnet)
[2023-05-24](https://datatracker.ietf.org/meeting/interim-2023-detnet-05/session/detnet)
[2023-06-06](https://datatracker.ietf.org/meeting/interim-2023-detnet-06/session/detnet)
[2023-06-21](https://datatracker.ietf.org/meeting/interim-2023-detnet-07/session/detnet)
[2023-07-19](https://datatracker.ietf.org/meeting/interim-2023-detnet-08/session/detnet)
[2023-08-22](https://datatracker.ietf.org/meeting/interim-2023-detnet-09/session/detnet)
[2023-09-12](https://datatracker.ietf.org/meeting/interim-2023-detnet-10/session/detnet)
[2023-10-03](https://datatracker.ietf.org/meeting/interim-2023-detnet-11/session/detnet)
[2023-10-24](https://datatracker.ietf.org/meeting/interim-2023-detnet-12/session/detnet)

## Mechanism evaluations

The following table summarizes our efforts to evaluate existing or proposed mechanisms against the DetNet WG document [Requirements for Scaling Deterministic Networks](https://datatracker.ietf.org/doc/draft-ietf-detnet-scaling-requirements/), both to better understand and compare mechanisms as well as to validate that the requirements document is necessary/sufficient and useable for the purpose of evaluation.

| Name | Draft | On Agenda | Slides | Youtube | Notes |
|------|-------|-----------|--------|---------|-------|
| CQF |   NA    | [2023-06-06](https://datatracker.ietf.org/meeting/interim-2023-detnet-06/session/detnet) | [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-06-sessa-cqf-evaluation-as-revised-in-meeting/) | [link](https://youtu.be/HVE_FCe_5x8?t=785) | CQF is [IEEE 802.1 Qch](https://standards.ieee.org/ieee/802.1Qch/6072/) |
| "TSN" | NA | [2023-06-21](https://datatracker.ietf.org/meeting/interim-2023-detnet-07/session/detnet) | [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-07-sessa-tsn-queuing-mechanisms-evaluation/) | [link](https://www.youtube.com/watch?v=Cakvxdc3qOU) | |
## Mechanism Proposals

The following table summarizes the different proposals proposed to the effort to easier get an overview than delving into above meeting material pages.

-  Meel free to add your proposals even if they have not been put into the agenda (yet).
- When you insert the youtube URL, try to make it start from where the presentation for the mechanism starts.
- Feel free to add older / not proposed anymore drafts in separate rows with comments to help team to understand their status.

| Name | Draft | On Agenda | Slides | Youtube | Notes |
|------|-------|-----------|--------|---------|-------|
| ADN <br> C-SCORE <br> playout buffering| [draft-joung-detnet-asynch-detnet-framework/02](https://datatracker.ietf.org/doc/draft-joung-detnet-asynch-detnet-framework/02/) | [2023-04-11](/group/detnet/wmosq/2023-04-11) | [slides](https://wiki.ietf.org/adn_framework-2023-04-10.pptx) | - | Unfortunately no youtube recording. Draft discusses framework ("ADN") and different mechanisms. ?Best proposed? is C-SCORE and independently playout buffering |
| Deadline Forwarding | [draft-peng-detnet-deadline-based-forwarding](https://datatracker.ietf.org/doc/draft-peng-detnet-deadline-based-forwarding/) | [2023-04-26](/group/detnet/wmosq/2023-04-26) | [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-02-sessa-deadline-queueing-mechanism/) | [link](https://youtu.be/nGTeMavyHSg?t=2858) | |
| CSQF | [draft-chen-detnet-sr-based-bounded-latency](https://datatracker.ietf.org/doc/html/draft-chen-detnet-sr-based-bounded-latency) | [2023-05-09](https://datatracker.ietf.org/meeting/interim-2023-detnet-03/session/detnet) |  [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-03-sessa-csqf-slides/) | [link](https://youtu.be/m9NqZ6gWKgo?t=2590) | |
| | [draft-eckert-detnet-mpls-tc-tcqf/](https://datatracker.ietf.org/doc/draft-eckert-detnet-mpls-tc-tcqf/) | - | - | - | Superceeded, older versions of TCQF, superseded |
| CQF-Variant <br> TCQF | [draft-yizhou-detnet-ipv6-options-for-cqf-variant/](https://datatracker.ietf.org/doc/draft-yizhou-detnet-ipv6-options-for-cqf-variant/) <br> [draft-eckert-detnet-tcqf](https://datatracker.ietf.org/doc/html/draft-eckert-detnet-tcqf) | [2023-05-24](https://datatracker.ietf.org/meeting/interim-2023-detnet-05/session/detnet) | [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-05-sessa-tcqf-slides-for-interim/) | [link](https://www.youtube.com/watch?v=ELDZYOXKer4&t=2004s) | Both drafts intended to be merged into one draft before IETF117 |
| TQF | [draft-peng-detnet-packet-timeslot-mechanism/](https://datatracker.ietf.org/doc/draft-peng-detnet-packet-timeslot-mechanism/)| [2023-06-06](https://datatracker.ietf.org/meeting/interim-2023-detnet-06/session/detnet) | [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-06-sessa-timeslot-queueing-and-forwarding/) | [link](https://youtu.be/HVE_FCe_5x8?t=3959) | |
| |[draft-aft-detnet-bound-delay-queue-00](https://datatracker.ietf.org/doc/draft-aft-detnet-bound-delay-queue/00/) |[2023-06-21](https://datatracker.ietf.org/meeting/interim-2023-detnet-07/session/detnet)| [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-07-sessa-enforcing-end-to-end-delay-bounds-via-queue-resizing/) | [link](https://youtu.be/Cakvxdc3qOU?t=4166) | Resizing queues when admitting flows |
| gLBF | [draft-eckert-detnet-glbf-01](https://datatracker.ietf.org/doc/draft-eckert-detnet-glbf/01/) | [2023-07-19](https://datatracker.ietf.org/meeting/interim-2023-detnet-08/session/detnet) | [slides](https://datatracker.ietf.org/doc/slides-interim-2023-detnet-08-sessa-deterministic-networking-detnet-data-plane-guaranteed-latency-based-forwarding-glbf/)| [link](https://youtu.be/urMhng79blQ?t=2527) | See also [ietf117-slides](https://datatracker.ietf.org/doc/slides-117-detnet-sessa-07-deterministic-networking-detnet-data-plane-guaranteed-latency-based-forwarding-glbf/)|
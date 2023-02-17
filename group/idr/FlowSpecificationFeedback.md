---
title: Flow Specification Feedback
description: 
published: true
date: 2023-02-14T23:22:36.812Z
tags: 
editor: markdown
dateCreated: 2023-01-28T23:18:07.096Z
---

=June 07, 2021 Interim on Flow Specification =

# Meeting information
Interim page

- https://datatracker.ietf.org/meeting/interim-2021-idr-01/session/idr

Minutes

- https://datatracker.ietf.org/meeting/interim-2021-idr-01/materials/minutes-interim-2021-idr-01-202106071000-00

Slides

- https://datatracker.ietf.org/doc/slides-interim-2021-idr-01-sessa-chairs-slides/

Summary of results

The meeting discussed the following motivations for flow specification v2:

- move to a full TLV format,
- expand sorting rules for firewall applications, and
- define clearly flow specification actions interactions.

The move to a full TLV format will introduce a new type of error - well formed but invalid TLV.

The alternate to flow specification v2 is extending flow specification v1. This alternative has been investigated by two proposals:

- Capability bits to determine functions (https://datatracker.ietf.org/doc/draft-haas-flowspec-capability-bits/), and
- Explicit Term ordering (https://datatracker.ietf.org/doc/draft-haas-idr-flowspec-term-order/)

The result of the interim is that developers and those deploying flow specification desired:

- DDos Based work only in Flow specification v1, and
- New AFI/SAFI formats, the TLV format, term ordering, new capabilities, and action resolution in Flow Specification.

The gray area after the interim is the existing drafts with redirect functions. The WG will be required at IETF 111 on this point.

## Existing IDR Flow Specification Drafts permitted for v1
- https://datatracker.ietf.org/doc/html/draft-ietf-idr-flowspec-redirect-ip-02.txt
- https://datatracker.ietf.org/doc/html/draft-ietf-idr-flowspec-path-redirect-11.txt
- https://datatracker.ietf.org/doc/html/draft-ietf-idr-flowspec-interfaceset-05.txt
## Extensions to IDR Flow Specification Drafts permitted for v1
These drafts are required to have v1 and v2 format forms

- https://datatracker.ietf.org/doc/draft-ietf0-idr-srv6-flowspec-path-redirect/
- https://datatracker.ietf.org/doc/draft-dmc-idr-flowspec-tn-aware-mobility/
## v2 initial draft
[draft-hares-flowspec-v2-02.txt](http://tools.ietf.org/html/draft-hares-flowspec-v2-02) (replaced by editor's version)

## Existing IDR Flow Specification Drafts transition to v2
- https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/
- https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-l2vpn/
- https://datatracker.ietf.org/doc/html/draft-ietf-idr-flowspec-mpls-match-01.txt
- https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-flowspec-label-01.txt
## Proposed Drafts which should transition to v2
- https://datatracker.ietf.org/doc/draft-jiang-idr-ts-flowspec-srv6-policy/
- https://datatracker.ietf.org/doc/draft-xiong-idr-detnet-flow-mapping/
- https://datatracker.ietf.org/doc/draft-li-idr-flowspec-srv6/
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-06-21. It was migrated from the old Trac wiki on 2023-01-28.*
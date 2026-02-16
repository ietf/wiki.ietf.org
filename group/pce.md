---
title: PCE WG - Path Computation Element
description: Welcome to the PCE WG Wiki
published: true
date: 2026-02-12T18:53:54.052Z
tags: wg
editor: markdown
dateCreated: 2022-07-23T18:39:51.941Z
---

> This page is related to an active IETF Working Group.
{.is-success}
# Welcome to the PCE WG Wiki

This Wiki contains additional information for the IETF [PCE](https://datatracker.ietf.org/wg/pce/about/) working group. Refer [datatracker](https://datatracker.ietf.org/wg/pce/documents/) for the latest state of any draft. 

Also, see 
- [Implementation  Policy](/group/pce/ImplementationPolicy)
- [Guidelines to contributing to this Wiki](https://wiki.ietf.org/en/home#contributing-to-this-wiki)
- [Coordination with other WG/RG](/group/pce/coordination)
- [Solicited Review from PCE WG Chairs](/group/pce/solicited-reviews)


## Individual documents that authors consider ready for WG Adoption

Once the chairs have concluded, the document would move to the actual WG adoption queue. 

| Draft | Remarks |
|---|---| 
|draft-all-pce-srv6-policy-sid-list-optimization|related draft in spring is under adoption call - draft-ali-spring-srv6-policy-sid-list-optimization|
|draft-zhang-pce-resource-sharing | Looking for interest on the mailing list to consider the I-D again, last presented in IETF 106; Pending comments from [Adrian](https://mailarchive.ietf.org/arch/msg/pce/0gOBAglL5bQMUlcpLBJmQj82lwk/) | 


## WG Adoption Call Queue

This is a queue of Individual I-D for which the WG adoption call is to be issued. This is maintained to give visibility to the WG on how the document will be progressing. 

| Draft | State | Remarks | Responsible Chair |
| --- | --- | --- | --- |
| draft-xpbs-pce-topology-filter | Pending | - | - |
| draft-chen-pce-sr-ingress-protection | Expired | - | - |
| draft-wang-pce-vlan-based-traffic-forwarding | Pending |Authors have moved VLAN forwarding details to the appendix| - |


## Recently Adopted Documents

| Draft |  Remarks | Responsible Chair |
| --- | --- | --- |
|draft-chen-pce-sr-mpls-sid-verification | Adopted 2026-01-14| Dhruv |
|draft-ietf-pce-pcep-nrp|Adopted 2025-11-03 | Julien|




## Other WG I-Ds

| Draft | Remarks |Action|
| --- | --- | --- |
| [draft-ietf-pce-stateful-interdomain](https://datatracker.ietf.org/doc/draft-ietf-pce-stateful-interdomain) | EXPIRED; -07 posted on 2025-03-03  | Boris and Oscar promised reviews at 122 |
| [draft-ietf-pce-pcep-l2-flowspec](https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-l2-flowspec) | -09 posted on 2025-09-30 |  this I-D relies on the processing rules as per RFC 9168; updates IANA registry for RFC 9168 |
| [draft-ietf-pce-pcep-pmtu](https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-pmtu/) | -08 posted on 2025-08-17  | waiting for spring draft for WGLC |
| draft-ietf-pce-pcep-srv6-yang |  -08 posted on 2025-10-14 | - |
|draft-ietf-pce-bier-te | -02 posted on 2025-06-04 | Needs more review |
| [draft-ietf-pce-controlled-id-space](https://datatracker.ietf.org/doc/draft-ietf-pce-controlled-id-space) | -03 posted on 2025-10-20 | - |
|draft-ietf-pce-pcep-bfd-parameters|-01 posted on 2025-08-20 | PLease handle adoption comments|
| draft-ietf-pce-operational| -02 posted on 2025-12-22 | - | 
| draft-ietf-pce-enhanced-errors | Parked WG I-D | Chairs concluded to park this document until we have implementations and mechanism using this approach |


## WG documents that authors consider ready for LC

Once the chairs have concluded the document would move to the actual WG LC queue. 

|Draft|Imp Sec|Manag Sec|Remarks|Action|
| --- | --- | --- | ---|---|
|[draft-ietf-pce-sr-path-segment](https://datatracker.ietf.org/doc/draft-ietf-pce-sr-path-segment) | Y | Y | -14 posted on 2025-10-13 | Has Normative dependencies, thus need to wait |
| draft-ietf-pce-pcep-extension-pce-controller-p2mp | N | Y| -00 posted 2025-08-07; EXPIRED | Authors will post an update |





## WG Last Call Queue 

This is a queue of PCE WG I-Ds, to be last called. This is maintained to give visibility to the WG on how the documents are progressing.  

|Order|Draft | Imp Sec | Manag Sec| State | Remarks | Responsible Chair | Shepherd |
| ---| --- | --- | --- | --- | --- | --- |---|
|1| [draft-ietf-pce-multipath](https://datatracker.ietf.org/doc/draft-ietf-pce-multipath) |Y|Y| In WG LC; Ends 2026-02-24  | IPR-7/7 (+Andrew Contributor) | Dhruv | Adrian(?) |
|2| [draft-ietf-pce-sr-p2mp-policy](https://datatracker.ietf.org/doc/draft-ietf-pce-sr-p2mp-policy)|Y|Y|-13 posted on 2025-10-19 | Ready for WGLC, did a review and discussing with Andrew | Dhruv | Andrew |
|3| [draft-ietf-pce-pcep-ls](https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-ls) |Y|Y| -04 posted on 2025-10-14 | - |Julien | Julien |
|-| [draft-ietf-pce-pcep-ifit](https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-ifit) |N|N| -08 posted on 2026-01-02 | - | - | - |
|-| draft-ietf-pce-stateful-pce-autobw-update |N|N| -03 posted on 2025-11-05 | Added support for SR | - | - |
|-| draft-ietf-pce-entropy-label-position |Y|Y| -04 posted on 2025-09-25 |-| - | - |
|-| draft-ietf-pce-pcep-extension-pce-controller-srv6 |N|Y| -05 posted on 2025-09-05 | - | - | - |


## Post WG LC Queue  

This is a queue of documents after WG LC and before being sent to the IESG.

| Draft| State| Remarks| Shepherd|
| --- | --- | --- | --- |
|[draft-ietf-pce-pcep-extension-pce-controller-sr](https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-extension-pce-controller-sr)| Waiting for WG Chair Go-Ahead| New version needed before progress | Dhruv |
| [draft-ietf-pce-state-sync](https://datatracker.ietf.org/doc/draft-ietf-pce-state-sync) | EXPIRED | Shepherd Review Done on 2025-10-30, Awaiting recheck and feedback by shepherd|Dhruv |
| [draft-ietf-pce-flexible-grid](https://datatracker.ietf.org/doc/draft-ietf-pce-flexible-grid) | Waiting for WG Chair Go-Ahead| Response to Andrew's WGLC comment is pending; Shepherd review done; awaiting an update from authors | Julien |


## Drafts with the IESG

|Draft| State| Remarks| Shepherd|AD|
| --- | --- | --- | --- | --- |
|draft-ietf-pce-circuit-style-pcep-extensions|In IETF LC|Ends 2026-02-20|Dhruv|Ketan|
|draft-ietf-pce-sr-bidir-path|In IETF LC|Ends 2026-02-20|Dhruv|Ketan| 


[AD's Document Queue](https://datatracker.ietf.org/doc/ad/ketan.talaulikar)
[IESG Dashboard](https://datatracker.ietf.org/doc/ad)


## Documents in RFC Editor Queue

|Draft|State|Remarks|Shepherd|
| --- | --- | --- | --- |
| [draft-ietf-pce-pceps-tls13](https://datatracker.ietf.org/doc/draft-ietf-pce-pceps-tls13/) |AUTH48-DONE|- | Andrew |
| [draft-ietf-pce-sid-algo](https://datatracker.ietf.org/doc/draft-ietf-pce-sid-algo) | RFC-EDITOR| - | Dhruv | 

## Recent RFCs

|RFC|Remarks|Shepherd|
| --- | --- | --- |
| RFC 9863 | Published 2025-10; Was draft-ietf-pce-pcep-color| Andrew|
| RFC 9862 | Published 2025-10; Was draft-ietf-pce-segment-routing-policy-cp| Dhruv|
| RFC 9826 | Published 2025-09; Was draft-ietf-pce-pcep-yang | Julien |


## Other Useful Information

### Candidate for early IANA Allocations
This is a queue of PCE WG I-Ds that have a requirement for early codepoint allocation because of the need to interoperate. 

|Draft|State|Remarks|
| --- | --- | --- |
| draft-ietf-pce-sr-path-segment-06 | WG I-D | Authors requested early allocation on 2022-08-19; dependent on PCEP-SRv6 / PCECC-SR  |

<br>

### Early IANA Allocations

|Draft|State|Remarks|IANA 1st|Renewal|Expiry|
| --- | --- | --- | --- | --- | --- |
|draft-ietf-pce-multipath|WG I-D| various |2022-05-09|2024-04-25 and 2025-04-04|2026-05-09|
|draft-ietf-pce-sr-bidir-path |WG I-D|ASSOCIATION Type code point 8|2023-11-30|2025-10-23|2026-11-30|
|draft-ietf-pce-circuit-style-pcep-extensions |WG I-D|STATEFUL-PCE-CAPABILITY TLV Flag<br>LSP-EXTENDED-FLAG TLV Flag<BR>PCEP TLV TYPE|2024-02-23|2025-03-12|2026-02-23|
|draft-ietf-pce-sr-p2mp-policy |WG I-D|- ASSOCIATION Type<br>- Generalized Endpoint Types<br>- SR-P2MP-POLICY-CAPABILITY<br>- IPV4-SR-P2MP-INSTANCE-ID<br>- IPV6-SR-P2MP-INSTANCE-ID<br>- CCI Object Type - SR P2MP Policy|2024-08-27|2025-07-10|2026-08-27|
  
### Recent Errata

|RFC|Errata ID|Type|Reported By|State|Chairs suggestion|Remarks|
| --- | --- | --- | --- | --- | --- | --- |
|RFC5440|[eid8344](https://www.rfc-editor.org/errata/eid8344)|Editorial|Mrinmoy Das|Verified|-|-|
|RFC5440|[eid8349](https://www.rfc-editor.org/errata/eid8349)|Editorial|Mrinmoy Das|Verified|-|-|
|RFC8231|[eid8370](https://www.rfc-editor.org/errata/eid8370)|Technical|Samuel Sidor|Verified|-|-|  


[Any Pending Errata](https://www.rfc-editor.org/errata_search.php?rec_status=2&area_acronym=rtg&wg_acronym=pce&presentation=table)
  
### Liaison
  
[To PCE](https://datatracker.ietf.org/liaison/posted/?text=&source=&destination=pce&start_date=&end_date=)
[From PCE](https://datatracker.ietf.org/liaison/posted/?text=&source=pce&destination=&start_date=&end_date=) 

### Individual documents that failed WG Adoptions 

This is a queue of Individual I-D for which WG adoption call was issued in the past, but did not get adopted. The authors may request adoption call again once they have some more support for the work. 

|Draft | Remarks |
| --- | --- |
| draft-lazzeri-pce-residual-bw | Adoption closed on 2019-02-11 because of limited response |
| draft-zhang-pce-resource-sharing |  Adoption closed on 2018-10-13 because of limited response |

---
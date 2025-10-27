---
title: Early Allocation Status
description: 
published: true
date: 2025-10-27T10:56:19.483Z
tags: 
editor: markdown
dateCreated: 2023-02-15T05:33:03.580Z
---

# Early Allocation Status

## Pending early allocations -  

### SR Policy Segment List Sub-TLVs  
### (draft-ietf-idr-sr-policy-safi registries)  
| IDR Draft  |  IANA Registry |  Under Registry | Code Point |  Description   |  draft status |     
|---|---|---|---|---|---|---|
 [draft-ietf-idr-bgp-srmpls-elp](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-srmpls-elp/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (26) | ELP Sub-TLV  | Ready based on-03 text   
| [draft-ietf-idr-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/) | SR Policy List Sub-TLVs  |  BGP Tunnel Encapsulation | TBD1 (17) | Path Segment | needs work based on (-13 text), Needs -14 (ketan changes)   |   
| [draft-ietf-idr-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/) | SR Policy List Sub-TLVs  |  BGP Tunnel Encapsulation | TBD2 (18) |  Reverse Segment List sub-TLV  | allocation OK (-13 text_, Needs -14 (ketan chanages) |
| [draft-ietf-idr-sr-policy-seglist-id](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-seglist-id/)| SR Policy List Sub-TLVs  | BGP Tunnel Encapsulation | TBD (19) | Segment List ID Sub-TLV  | ok with -04 textm - will assign | 
| [draft-ietf-idr-sr-policy-metric/](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-metric/)| SR Policy List Sub-TLVs | BGP Tunnel Encapsulation | TBD | Metric Sub-TLV | Needs changes (see Comments on list)  |
{.dense}

### SR Policy Metric - Metric Types

This registry is specified in draft-ietf-idr-sr-policy-metric.  The SR Policy List Sub-TLV is undergoing early allocation and this registry needs to be tracked until either publication or the updated IANA early registry procedures are implemented.

| Code Point |         Metric Type                      |
|------------|------------------------------------------|
|     0      | IGP Metric                               |
|     1      | Min Unidirectional Link Delay [RFC7471]  |
|     2      | TE Metric [RFC3630]                      |
|     3      | Hop Count (refer [RFC5440])              |
|     4      | SID List Length                          |
|     5      | Loss Rate                                |
|    6-250   | Unassigned                               |
|  251-255   | Private Use (not to be assigned by IANA) |
{.dense}


## Pending early allocation, Holding for draft revision 
| IDR Draft  |  IANA Registry |  Under Registry | Code Point |  Description   |  draft status |     
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (21) | Segment type L  | Needs revised draft (-03)  |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (22) | Segment type M   | Needs revised draft (-03) |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (23) | Segment type N | Needs revised draft (-03)  |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (24) | Segment type O  | Needs revised draft (-03)  |
| [draft-ietf-idr-sr-policy-path-mtu](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-mtu/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (25) | Path MTU  | Needs revised draft (-12) |
{.dense}

## WG drafts - Early allocation assigned 

### draft-ietf-idr-bgp-ls-sr-policy Early allocations  
|  IDR Draft  |  IANA Registry |  IANA Registry Group | Code Point |  Description   |  Status|     
|---|---|---|---|---|---|---|---|
| [draft-ietf-idr-bgp-ls-sr-policy-nrp-01](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-nrp/) | BGP-LS NLRI and Attribute TLVs |  BGP-LS | 1220 | NRP | assigned  |
{.dense}

### draft-ietf-idr-5g-edge-service-metadata 
|  IDR Draft  |  IANA Registry |  IANA Registry Group | Code Point |  Description   |  Status|     
|---|---|---|---|---|---|---|---|
| [draft-ietf-idr-5g-edge-service-metadata-05](https://datatracker.ietf.org/doc/draft-ietf-idr-5g-edge-service-metadata/) | BGP Path Attribute | TBD |  Metadata | Expert Review | implementation + github | 
| [draft-ietf-idr-5g-edge-service-metadata-05](https://datatracker.ietf.org/doc/draft-ietf-idr-5g-edge-service-metadata/) | BGP Capability | TBD | Metadata | Expert Review | Implementation + github 
{.dense}

### draft-ietf-idr-wide-communities 
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-wide-bgp-communities](https://datatracker.ietf.org/doc/draft-ietf-idr-wide-bgp-communities/)  |  [BGP Path Attributes](https://www.iana.org/assignments/bgp-parameters/bgp-parameters.xhtml) | 	BGP Community Container Attribute | attribute 34 | 12/22/2022 [1]  | WG draft | 
| [draft-ietf-idr-wide-bgp-communities](https://datatracker.ietf.org/doc/draft-ietf-idr-wide-bgp-communities/)  |  New registry: BGP Community Container Atom Types | TBD |  values 0x01 to 0x08 | 12/22/2022 [1] | WG draft |
| [draft-ietf-idr-wide-bgp-communities](https://datatracker.ietf.org/doc/draft-ietf-idr-wide-bgp-communities/)  |  New registry: BGP Community Container Neighbor Class List Atom Types | TBD | ranges | 12/22/2022 [1] | WG draft |
| [draft-ietf-idr-wide-bgp-communities](https://datatracker.ietf.org/doc/draft-ietf-idr-wide-bgp-communities/)  |  New registry: BGP Community Container Types | TBD | ranges | 12/22/2022 [1] | WG draft |
| [draft-ietf-idr-wide-bgp-communities](https://datatracker.ietf.org/doc/draft-ietf-idr-wide-bgp-communities/)  |  New registry: Registered Type 1 BGP Wide Community Container Values | TBD | ranges | 12/22/2022 [1] | WG draft |
| [draft-ietf-idr-wide-bgp-communities](https://datatracker.ietf.org/doc/draft-ietf-idr-wide-bgp-communities/)  |  New registry: Registered Type 1 BGP Wide Community Optional Sub-Types | TBD | values 1-3 | 12/22/2022 [1] | WG draft |
{.dense}
[1] - Alvaro email on 12/22/2022

### draft-ietf-idr-rpd
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | [Subsequent Address Family Identifiers (SAFI) Parameters](https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml) | Routing Policy SAFI | SAFI 75 | 12/22/2023 | WG draft | 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | Registered Type 1 BGP Wide Community Community Types | MATCH AND SET ATTR | TBD (0x80000018) | 12/22/2023 | WG draft | 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | Registered Type 1 BGP Wide Community Community Types (wide communities registry) | MATCH AND NOT ADVERTISE | TBD (0x80000019) | 12/22/2022 | WG draft | 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | BGP Community Container Atom Types | RouteAttr  | TBD (0x09) | 12/22/2023 | WG Draft| 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | BGP Community Container Atom Types | MED Change  | TBD (0x0A) | 12/22/2023 | WG draft  | 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/) | BGP Community Container Atom Types | IPv4 Prefix Range List | TBD (0x0B) | 12/22/2023 | WG draft | 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | BGP Community Container Atom Types | IPv6 Prefix Range List | TBD (0x0C) | 12/22/2023 | WG draft  |
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/) | BGP Community Container Atom Types |  IPv6 Prefix Range List  | TBD (0x0D) | 12/22/2023 | WG draft | 
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)  | BGP Community Container Atom Types | AS-Path RegEx   | TBD (0x0E) | 12/22/2023 | WG draft
| [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)| BGP Community Container Atom Types | Community List | TBD (0x0F) | 12/22/2023 | WG draft | 
{.dense}

### draft-ietf-idr-bgp-ls-isis-flood-reflection 
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-bgp-ls-isis-flood-reflection](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-isis-flood-reflection/)  |  [BGP-LS NLRI and Attribute TLVs](https://www.iana.org/assignments/bgp-ls-parameters/bgp-ls-parameters.xhtml) | IS-IS Flood Reflection | TLV Code 1160  |  1/2/2023 | Awaiting 2 implementations ) | 
{.dense}

## Approved Early Allocations - Drafts at IESG 
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| None | 


## Approved Early Allocations  - drafts at RFC editor
|  IDR Draft  |  IANA Registry |  Code Point |  Description   |  Status|       
|---|---|---|---|---|---|---|
(none) 
{.dense}


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-01-06. It was migrated from the old Trac wiki on 2023-02-14.*
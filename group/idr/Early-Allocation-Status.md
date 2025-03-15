---
title: Early Allocation Status
description: 
published: true
date: 2025-03-15T23:12:25.421Z
tags: 
editor: markdown
dateCreated: 2023-02-15T05:33:03.580Z
---

# Early Allocation Status

## Pending early allocations 
|  IDR Draft  |  IANA Registry |  Code Point |  Description   |  Status | Comment |       
|---|---|---|---|---|---|---|
| [draft-ietf-idr-5g-edge-service-metadata-05](https://datatracker.ietf.org/doc/draft-ietf-idr-5g-edge-service-metadata/) | BGP Path Attribute | TBD |  Metadata | Expert Review | implementation + github | 
| [draft-ietf-idr-5g-edge-service-metadata-05](https://datatracker.ietf.org/doc/draft-ietf-idr-5g-edge-service-metadata/) | BGP Capability | TBD | Metadata | Expert Review | Implementatino + github | 

## Temporary early allocations 
### draft-ietf-idr-bgp-ls-sr-policy Early allocations 
|  IDR Draft  |  IANA Registry |  IANA Registry Group | Code Point |  Description   |  Status|     
|---|---|---|---|---|---|---|---|
| draft-ietf-idr-bgp-ls-sr-policy-nrp-00 | BGP-LS NLRI and Attribute TLVs |  BGP-LS | TBD (1220) | SR Segment List Identifier | Requested |
{.dense}

### draft-ietf-idr-bgp-ls-sr-policy New registries 
|  IDR Draft  |  IANA Registry |  IANA Registry Group | Code Point Assigned  | Unassigned Code Points | Type |  Status |       
|---|---|---|---|---|---|---|---|
| draft-ietf-idr-bgp-ls-sr-policy-04 | SR Policy Protocol Origin | Segment Routing Parameters | 0-3, 10, 20, 30 | 4-9, 11-19, 31-250 | Spec Req | Awaits RFC | 
| draft-ietf-idr-bgp-ls-sr-policy-04 | SR Segment Descriptor Types | BGP-LS Parameters | 0-11 | 12-255 | Expert Review | Awaits RFC | 
| draft-ietf-idr-bgp-ls-sr-policy-04 | Metric Type | BGP-LS Parameters | 0-4 | 5-255 | Expert Review | Awaits RFC | 
{.dense}

## Early allocations waiting for draft-ietf-idr-sr-policy-safi registries 
### draft-ietf-idr-sr-policy-safi (was draft-ietf-idr-segment-routing-te-policy) New Registries 
| IDR Draft | IANA Registry | Under Registry | Other Allocations | Date allocation expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | yes | TBD | Past WGLC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | yes | TBD | Past WGLC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy SRv6 Binding SID Flags | BGP Tunnel Encapsulation | yes | TBD | Past WGLC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment Flags | BGP Tunnel Encapsulation | yes | TBD | Past WGLC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | yes | TBD | Past WGLC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy ENLP Values | BGP Tunnel Encapsulation | yes | TBD | Past WGLC | 
{.dense}

### draft-ietf-idr-sr-policy-safi registry -  Color Extended Community Color-only Types 
| IDR Draft  |  IANA Registry |  Under Registry | Code Point |  Description   |  Status | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | bit 0-1 | Color-only Types field | Past WGLC | 
{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy Segment List Sub-TLVs  
| IDR Draft  |  IANA Registry |  Under Registry | Code Point |  Description   |  draft status |     
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 0 | Reserved | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 1 | Segment Type A sub-TLV | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 2 | Segment tyep B Sub-TLV | Past WG LC | 
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 3 | Segment Type C Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 4 | Segment Type D Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 5 | Segment Type E Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 6 | Segment Type F Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-s-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 7 | Segment Type G Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 8 | Segment Type H Sub-TLV | Past WG LC |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 9 | Weight Sub-TLV | Past WG LC |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 10-13 | deprecated | Past WG LC |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 14 | Segment Type I Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 15 | Segment Type J Sub-TLV | Past WG LC |
| [draft-ietf-idr-bgp-sr-segtypes-ext-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-segtypes-ext/) | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 16 | Segment Type K Sub-TLV | Past WG LC |
| [draft-ietf-idr-sr-policy-path-segment-10](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/) | SR Policy List Sub-TLVs  |  BGP Tunnel Encapsulation | TBD1 (17) | Path Segment | Needs revised draft |   
| [draft-ietf-idr-sr-policy-path-segment-10](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/) | SR Policy List Sub-TLVs  |  BGP Tunnel Encapsulation | TBD2 (18) |  Reverse Segment List sub-TLV  | Needs revised draft |
| [draft-ietf-idr-sr-policy-seglist-id](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-seglist-id/)| SR Policy List Sub-TLVs  | BGP Tunnel Encapsulation | TBD (19) | Segment List ID Sub-TLV  | needs revised draft |
| [draft-ietf-idr-sr-policy-metric](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-metric/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (20) | metric Sub-TLV  | Needs revised draft |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (21) | Segment type L  | Needs revised draft |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (22) | Segment type M   | Needs revised draft |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (23) | Segment type N | Needs revised draft |
| [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (24) | Segment type O  | Needs revised draft |
| [draft-ietf-idr-sr-policy-path-mtu](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-mtu/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (25) | Path MTU  | Needs revised draft |
| [draft-ietf-idr-bgp-srmpls-elp](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-srmpls-elp/)| SR Policy List Sub-TLVs |  BGP Tunnel Encapsulation | TBD (26) | ELP Sub-TLV  | Needs revised draft |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 28-255 | unassigned| Past WG LC | 
{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy Binding SID Flags
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   |  draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 0 | Specified-BSID-Only Flag (S-Flag) | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 1 | Drop on INvalid Flag (I-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 2-7 | Unassigned | Past WG LC |  
{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy SRv6 Binding SID Flags
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 0 | Specified-BSID-Only Flag (S-Flag) | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 1 | Drop on INvalid Flag (I-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 2 | SR Endpoint Behavior + SID Structure (B-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 3-7 | Unassigned | Past WG LC |  
{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy Segment Flags
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 0 | Segment Verification (V-Flag) | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 1-2 | Unassigned | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 3 | SR Endpoint Behavior + SID Structure (B-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 4-7 | Unassigned | Past WG LC |  
{.dense}

### draft-ietf-idr-sr-policy-safi registry -  Color Extended Community Color-only Types 
| IDR Draft  |  IANA Registry |  Under Registry | Code Point | Description | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | bit 0-1 | Color-only Types field | Past WGLC | 
{.dense}

### draft-ietf-idr-sr-policy-safi registry: Color Extended community Color-only Types 
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   |  draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | 0 | Specific Endpoint Match | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | 1 | Specific or Null Endpoint Match | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | 2 | Specific, Null or Any Endpoint Match | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | 3 | unassigned | Past WG LC | 
{.dense}

## Approved Early Allocations  - drafts at RFC editor
|  IDR Draft  |  IANA Registry |  Code Point |  Description   |  Status|       
|---|---|---|---|---|---|---|
(none) 
{.dense}

## Approved Early Allocations - Drafts at IESG 
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| None | 

## Approved Early Allocations: drafts at WG 
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


### draft-ietf-idr-sr-policy-safi (was draft-ietf-idr-segment-routing-te-policy)
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---| 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   SRv6 Binding SID sub-TLV   | subtlv 20 | 05-20-2025 | WG Revision)| 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |  Segment List sub-TLV     | subtlv 128 | 05-25-2024 | WG Revision) | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   Policy Candidate Path Name sub-TLV    | subtlv 129 | 05-25-2024 | WG Revision) | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)  | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   Policy Name sub-TLV  | subtlv 130 | 05-25-2024 | WG Revision) | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | [Color Extended Community Flags](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   Color Extended Community Flags  | bit position 0-1 | 05-25-2024 | WG Revision) | 
{.dense}

### draft-ietf-idr-bgp-ls-isis-flood-reflection 
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-bgp-ls-isis-flood-reflection](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-isis-flood-reflection/)  |  [BGP-LS NLRI and Attribute TLVs](https://www.iana.org/assignments/bgp-ls-parameters/bgp-ls-parameters.xhtml) | IS-IS Flood Reflection | TLV Code 1160  |  1/2/2023 | Awaiting 2 implementations ) | 
{.dense}


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-01-06. It was migrated from the old Trac wiki on 2023-02-14.*
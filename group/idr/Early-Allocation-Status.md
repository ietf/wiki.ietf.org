---
title: Early Allocation Status
description: 
published: true
date: 2024-06-07T12:28:22.282Z
tags: 
editor: markdown
dateCreated: 2023-02-15T05:33:03.580Z
---

# Early Allocation Status
## Temporary early allocations 

|  IDR Draft  |  IANA Registry |  Code Point |  Description   |  Status|       
|---|---|---|---|---|---|---|
|draft-ietf-idr-car-03 | SAFI | 83 | [BGP CAR](https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml) | Need to update draft | 
|draft-ietf-idr-car-03 | SAFI | 84 | [BGP VPN CAR](https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml) | WG chair check IANA | 
|draft-ietf-idr-ct-18 |	SAFI | 76 | [Classful-Transport SAFI](https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml)	| WG chair Checks IANA | 

## Pending early allocations 
|  IDR Draft  |  IANA Registry |  Code Point |  Description   |  Status|       
|---|---|---|---|---|---|---|
|draft-ietf-idr-5g-edge-service-metadata-04 | BGP Path Attribute | TBD |  Metadata | TBD | in process (IDR chair review) | 
| draft-ietf-idr-bgpls-inter-as-topology-ext-15 | BGP-LS NLRI Types | TBD | Stub Link | TBD | 
| draft-ietf-idr-bgpls-inter-as-topology-ext-15 | BGP-LS NLRI and Attribute TLVs | TBD | Remote AS Number | TBD | 
| draft-ietf-idr-bgpls-inter-as-topology-ext-15 | BGP-LS NLRI and Attribute TLVs | TBD | IPv4 Remote ASBR ID | TBD | 
| draft-ietf-idr-bgpls-inter-as-topology-ext-15 | BGP-LS NLRI and Attribute TLVs | TBD | IPv6 Remote ASBR ID | TBD | 

## Early allocation - need revision 
|  IDR Draft  |  IANA Registry |  Code Point |  Description   |  Status|       
|---|---|---|---|---|---|---|
| draft-ietf-idr-bgp-ls-sr-policy-00 | BGP-LS NLRI-Types | TBD (5) | SR Policy Candidate Path NLRI | TBD | hold until 8-15-2023 |
| draft-ietf-idr-bgp-ls-sr-policy-00 | BGP-LS NLRI and Attribute TLVs |  TBD | SR Bidirectional Group Constraint | TBD | hold until 8-15-2023 |
| draft-ietf-idr-bgp-ls-sr-policy-00 | BGP-LS NLRI and Attribute TLVs |  TBD | SR Metric Constraint | TBD | hold until 8-15-2023 |
| draft-ietf-idr-bgp-ls-sr-policy-00 | BGP-LS NLRI and Attribute TLVs |  TBD | SR Segment List Bandwidth | TBD | hold until 8-15-2023 |
| draft-ietf-idr-bgp-ls-sr-policy-00 | BGP-LS NLRI and Attribute TLVs |  TBD | SR Segment List Identifier | TBD | hold until 8-15-2023 |
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
| IDR Draft  |  IANA Registry |  Under Registry | Code Point |  Description   |  Status | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 0 | Reserved | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 1 | Segment Type A sub-TLV | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 2 | deprecated | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 3-8 | unassigned | Past WG LC |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 9 | Weight | Past WG LC |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 10-13 | deprecated | Past WG LC |
| [draft-ietf-idr-sr-policy-path-segment-10](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/) | SR Policy List Sub-TLVs  | TBD1 (14) | Path Segment | in process  |   
| [draft-ietf-idr-sr-policy-path-segment-10](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/) | SR Policy List Sub-TLVs  | TBD2 (15) |  Reverse Segment List sub-TLV  | in proces (Needs revised draft) |
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | 16-255 | unassigned| Past WG LC | 

{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy Binding SID Flags
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   |  Status | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 0 | Specified-BSID-Only Flag (S-Flag) | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 1 | Drop on INvalid Flag (I-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 2-7 | Unassigned | Past WG LC |  
{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy SRv6 Binding SID Flags
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   |  Status | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 0 | Specified-BSID-Only Flag (S-Flag) | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 1 | Drop on INvalid Flag (I-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 2 | SR Endpoint Behavior + SID Structure (B-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 3-7 | Unassigned | Past WG LC |  
{.dense}

### draft-ietf-idr-sr-policy-safi registry: SR Policy Segment Flags
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   |  Status | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 0 | Segment Verification (V-Flag) | Past WG LC | 
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 1-2 | Unassigned | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 3 | SR Endpoint Behavior + SID Structure (B-Flag) | Past WG LC |  
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Binding SID Flags | BGP Tunnel Encapsulation | 347 | Unassigned | Past WG LC |  
{.dense}

### draft-ietf-idr-sr-policy-safi registry -  Color Extended Community Color-only Types 
| IDR Draft  |  IANA Registry |  Under Registry | Code Point |  Description   |  Status | draft status |        
|---|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-04](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | Color Extended Community Color-only Types | BGP Tunnel Encapsulation | bit 0-1 | Color-only Types field | Past WGLC | 
{.dense}

### draft-ietf-idr-sr-policy-safi registry: Color Extended community Color-only Types 
| IDR Draft  |  IANA Registry |  Under Registry | Bit |  Description   |  Status | draft status |        
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
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | [Subsequent Address Family Identifiers (SAFI) Parameters](https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml) | SR TE Policy SAFI | SAFI=73 | 5-25-2024 | WG revision   |  
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)| [BGP Tunnel Encapsulation Attribute Tunnel Types](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) | SR Policy | Tunnel type 15 | 05-25-2025 | WG revision |  
|  [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |  Preference sub-TLV  | subtlv 12| 05-25-2025 | WG revision | 
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)  | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |  Binding SID sub-TLV | subtlv 13| 05-25-2025 | WG Revision |  
|  [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)  | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |  ENLP sub-TLV   | subtlv 14 | 05-25-2025 |  WG Revision |  
|  [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |  Priority sub-TLV   | subtlv 15 | 05-25-2025 | WG Revision) |  
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   SRv6 Binding SID sub-TLV   | subtlv 20 | 05-20-2025 | WG Revision)| 
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |  Segment List sub-TLV     | subtlv 128 | 05-25-2024 | WG Revision) | 
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   Policy Candidate Path Name sub-TLV    | subtlv 129 | 05-25-2024 | WG Revision) | 
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)  | [BGP Tunnel Encapsulation Attribute Sub-TLVs](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   Policy Name sub-TLV  | subtlv 130 | 05-25-2024 | WG Revision) | 
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | [Color Extended Community Flags](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml) |   Color Extended Community Flags  | bit position 0-1 | 05-25-2024 | WG Revision) | 
{.dense}

### draft-ietf-idr-sr-policy-safi (was draft-ietf-idr-segment-routing-te-policy) New Registries 
| IDR Draft | IANA Registry | Under Registry | Other Allocations | Date allocation expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-sr-policy-safi-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)   | SR Policy Segment List Sub-TLVs | BGP Tunnel Encapsulation | yes | TBD | Past WGLC |  

|   Color Extended Community Flags  | bit position 0-1 | 05-25-2024 | WG Revision) | 
{.dense}

### draft-ietf-idr-bgp-ls-isis-flood-reflection 
| IDR Draft | IANA Registry | IANA Allocation | IANA Numbers | Date expires | draft status | 
|---|---|---|---|---|---|
| [draft-ietf-idr-bgp-ls-isis-flood-reflection](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-isis-flood-reflection/)  |  [BGP-LS NLRI and Attribute TLVs](https://www.iana.org/assignments/bgp-ls-parameters/bgp-ls-parameters.xhtml) | IS-IS Flood Reflection | TLV Code 1160  |  1/2/2023 | Awaiting 2 implementations ) | 
{.dense}


## BGP-LS Link to ISIS TLVS

| IDR Draft |  TLV Code Name    |  TLV Code Point  Value |  ISIS TLVS numbers      |
|---|---|---|-----------------------------------------|
|  [draft-ietf-idr-bgp-ls-isis-flood-reflection](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-isis-flood-reflection/)  |  IS-IS Flood Reduction  |  1160            |   22\|23\|25\|141\|222\|223\|242\|161   |
{.dense}


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-01-06. It was migrated from the old Trac wiki on 2023-02-14.*
---
title: FSv2 Extended Community Actions 
description: FSv2 Ext-Com
published: true
date: 2026-06-08T20:16:08.718Z
tags: 
editor: markdown
dateCreated: 2026-05-29T13:53:57.579Z
---

# Flow Specification Actions in Extended Community

## Flow Specification Transitive Extended Community (0x07) 
### registry is FCFS 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Transitive (0x07) | 0x02 |  Interface set | [draft-ietf-idr-flowspec-interfaceset](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-interfaceset) | 
| FS Transitive (0x07) | TBD-1 | Redirect to SR Policy Aciton | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) | 
| FS Transitive (0x07) | TBD-2 | SRv6 SID Action  | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) | 
| FS Transitive (0x07) | TBD-3 |  Rule Position | [draft-geng-idr-flowspec-sav](https://www.ietf.org/archive/id//draft-geng-idr-flowspec-sav/) | 
| FS Transitive (0x07) | TBD-4 |  MARK IPv4 CS-ID Action  | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) | 
| FS Transitive (0x07)| TBD-5 | MARK IPv6 CS-ID Action  | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) | 
| FS Transitive (0x07) | TBD-6 | Redirect to IPv4 CSCI-ID Action | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) | 
| FS Transitive (0x07) | TBD-7 |  Redirect to Generalized Segment ID Extended Community  |  [draft-li-idr-flowspec-redirect-generalized-sid](https://www.ietf.org/archive/id/draft-li-idr-flowspec-redirect-generalized-sid) | 
|FS Transitive(0x07)| TBD-8 | Compress Parameter Index (CPI) (add) | [draft-shen-idr-flowspec-traffic-compress-action](https://www.ietf.org/archive/id/draft-shen-idr-flowspec-traffic-compress-action/)  |
{.dense}
#### APN tunnel in tunnel actions
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Transitive (0x07)| TBD-9 |  Group ID | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
flowspec-traffic-compress-action/)  |
| FS Transitive (0x07)| TBD-10 | traffic mark APN | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| FS Transitive(0x07)| TBD-11 | traffic mark APN partial | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| FS Transitive (0x07)| TBD-12 | inherit-apn | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| FS Transitive (0x07)| TBD-13 | Stitch-apn | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
{.dense}

## Flow Specification Non-Transitive Extended Community 
### registry is FCFS 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Non Transitive (0x47) | 0x02 |  Interface set | [draft-ietf-idr-flowspec-interfaceset](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-interfaceset) 
| FS Non Transitive (0x07) | TBD-1 | Redirect to SR Policy Aciton | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) | 
| FS Non Transitive (0x07) | TBD-2 | SRv6 SID Action  | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) | 
| FS Non Transitive (0x47) | TBD-3 |  Rule Position | [draft-geng-idr-flowspec-sav](https://www.ietf.org/archive/id//draft-geng-idr-flowspec-sav/)
| FS Non Transitive (0x47) | TBD-9 |  IPSec SA ID | [draft-dmc-idr-flowspec-tn-aware-mobility](https://www.ietf.org/archive/id/draft-dmc-idr-flowspec-tn-aware-mobility/)
| FS Non Transitive (0x07) | TBD-4 |  MARK IPv4 CS-ID Action  | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) | 
| FS Non Transitive (0x07)| TBD-5 | MARK IPv6 CS-ID Action  | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) | 
| FS Non Transitive (0x07) | TBD-6 | Redirect to IPv4 CSCI-ID Action | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) | 
| FS Non Transitive (0x07) | TBD-7 |  Redirect to Generalized Segment ID Extended Community  |  [draft-li-idr-flowspec-redirect-generalized-sid](https://www.ietf.org/archive/id/draft-li-idr-flowspec-redirect-generalized-sid) | 
| FS Non Transitive (0x07)| TBD-8 | Compress Parameter Index (CPI) (add) | [draft-shen-idr-flowspec-traffic-compress-action](https://www.ietf.org/archive/id/draft-shen-idr-flowspec-traffic-compress-action/)  |
{.dense}
#### APN tunnel in tunnel actions 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive (0x07)| TBD-9 |  Group ID | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
flowspec-traffic-compress-action/)  |
| Generic Transitive (0x07)| TBD-10 | traffic mark APN | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| Generic Transitive (0x07)| TBD-11 | traffic mark APN partial | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| Generic Transitive (0x07)| TBD-12 | inherit-apn | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| Generic Transitive (0x07)| TBD-13 | Stitch-apn | [draft-peng-idr-apn-bgp-flowspec](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
{.dense}

## Flow Specification SFC related 
#### Generic Transitive Experimental Use Extended Community (0x0d)  
#### Tramsitive Extended Community (0x0b)  
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive Experimental (0x0d) | SFC Sub-types | registry | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt)
| Generic Transitive Experimental (0x0d)| 0 | Reserved | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Generic Transitive Experimental (0x0d)| 1 | SFIR pool Identifier | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Generic Transitive Experimental (0x0d)| 2 | MPLS Label Stack Mixed (swapping/stacking) Labels  | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) |
{.dense}

### Flow Specification SFC related 
#### Generic Transitive Experimental Use Extended Community (0x0d)  
#### Transitive Extended Community (0x0b)  
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive (0x80)| TBD-9 | Compress Parameter Index (CPI) | [draft-shen-idr-flowspec-traffic-compress-action](https://www.ietf.org/archive/id/draft-shen-idr-flowspec-traffic-compress-action/)  |
{.dense}
### Transitive FS SFC Extended Community 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Transitive FS SFC (0x0b) | SFC Sub-types | registry | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt)
| Transitive FS SFC | (0x0b) | 0 | Rserved | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Transitive FS SFC (0x0b)| 1 | SFIR pool Identifier | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Transitive FS SFC (0x0b)| 2 | MPLS Label Stack Mixed (swapping/stacking) Labels  | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) |


### Proposed New FSv2 Extended Community Action Registries 
#### Proposed New Sub-Type Registry: "FlowSpec Redirect to indirection-id Extended Community Sub-Type"
| Value | Code | document | 
|---|---|---|---|
| 0x00  | Flowspec Redirect to 32-bit Path-id | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) | 
| 0x01  | Node ID with SID/index in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x02  | Node ID with SID/label in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x03 | Binding SID with SID/index in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x04 | Binding Segment ID with SID/label in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x05 | Tunnel ID (32 bit Identifier) |  [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x06 | Node ID with SID/index in SRv6 |  [draft-chen-idr-srv6-flowpec-path-redirecdt](https://www.ietf.org/archive/id/draft-chen-idr-srv6-flowspec-path-redirect/) | 
| 0x07 | Binding Segment ID with SID/index in SRv6 |  [draft-chen-idr-srv6-flowpec-path-redirecdt](https://www.ietf.org/archive/id/draft-chen-idr-srv6-flowspec-path-redirect/) | 
| 0x08 | Binding Segment ID with SID/index in SRv6 |  [draft-chen-idr-srv6-flowpec-path-redirecdt](https://www.ietf.org/archive/id/draft-chen-idr-srv6-flowspec-path-redirect/)
{.dense}

### Second Proposed Redirect via SID 
#### Can this be added to path redirect registries 
| Value | Code | document | 
|---|---|---|---|
| TBD-0 | Reserved | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-1 | Node segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-2 | Agency Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-3 | AS (Autonomous System) Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-4 | Anycast Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-5 | Multicast Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-6 | Tunnel Segment (Tunnel Binding Segment ) | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-7 |  VPN Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-8| OAM Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-9 | ECMP Segement |  [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-10 | QoS Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-11 | Bandwidth-Guarantee Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-12 | Security Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
| TBD-13 | Multi-Topology Segment | [draft-li-idr-flowspec-sr-policy-03](https://datatracker.ietf.org/doc/draft-li-idr-flowspec-sr-policy/) |
{.dense}


### Proposed New FSv2 Extended Community Action Registries 
#### Proposed New Sub-Type Registry: "Flowspec redirect to IP SEC SA-ID Sub-Type"
| Value | Code | document | 
|---|---|---|---|
| [TBD1] | Inner Encap Type 1 (IPsec + GRE) | [draft-dmc-idr-flowspec-tn-aware-mobility](https://datatracker.ietf.org/doc/draft-dmc-idr-flowspec-tn-aware-mobility/)
| [TBD2] | Inner Encap Type 2 (IPSec + Vxlan) | [draft-dmc-idr-flowspec-tn-aware-mobility](https://datatracker.ietf.org/doc/draft-dmc-idr-flowspec-tn-aware-mobility/)

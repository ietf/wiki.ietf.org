---
title: Implementation Report for draft-ietf-idr-bgp-car
description: report on implementations
published: true
date: 2023-08-14T16:38:35.946Z
tags: 
editor: markdown
dateCreated: 2023-06-09T11:17:21.968Z
---

# Implementation Report for draft-ietf-idr-bgp-car
## Protocol Encodings
### New SAFI
| SAFI | Cisco IOS-XR | Arrcus ArcOS | comments |
|---|---|---|---|
|BGP CAR | Y | Y | |
|VPN CAR | N | N | |
### Route Types
| Route Type | Cisco IOS-XR | Arrcus ArcOS | comments |
|---|---|---|---|
| (E,C) | Y | Y | |
| Prefix | Y | N | |
### Non Key TLVs
| TLV | Cisco IOS-XR | Arrcus ArcOS | comments |
|---|---|---|---|
| Label TLV | Y | Y | |
| Label Index TLV | Y | Y | |
| SRv6 SID TLV | Y | Y | |
### Extended Communities
| TLV | Cisco IOS-XR | Arrcus ArcOS | comments |
|---|---|---|---|
| BGP Color EC | Y | Y | |
| LCM EC | N | N | |
## Protocol Processing
| Processing | Cisco IOS-XR | Arrcus ArcOS | comments |
|---|---|---|---|
| Update generation| Y | Y | |
| Update receive | Y | Y | |
| Route Resolution | Y | Y | |
| AIGP metric computation | Y | Y | |
| Decision process | Y | Y | |
| Route reflection | Y | Y | |
| ADDPATH | Y | Y | |
|BGP multipath or primary backup | Y | N | |
|BGP color EC based steering | Y | Y | |
| Filtering | Y | Y | |

## Interoperability
Interoperability conducted for BGP CAR between IOS-XR (7.8.1.09I engineering image) and ArcOS (5.1.1 release Engineering) for MPLS (label) encapsulation.

## Authors
swaagraw@cisco.com
dhrao@cisco.com
kalyanir@arrcus.com
manoharan@arrcus.com

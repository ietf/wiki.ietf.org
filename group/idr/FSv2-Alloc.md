---
title: BGP Flow Specification Component Allocation for draft-ietf-idr-fsv2-ip-basic
description: FSv2 components
published: true
date: 2026-05-25T18:07:10.951Z
tags: 
editor: markdown
dateCreated: 2026-05-25T17:09:54.584Z
---

# FSv2 Filter components 

## Filter family Types  
### defined in draft-ietf-idr-fsv2-ip-basic 
- 50 - L2 Traffic rules 
- 100 - MPLS traffic rules
- 150 - SFC Traffic rules 
- 200 - Tunneled traffic 
- 256 - iP Basic Filter rules (bit 1 of high bit) 
- 280 - Extended IP Filter rules 

## Filters Components for MPLS Traffic Rule Family  ## Components 
| Filter Family | Component | Description }   
|---|---|---|---|
| 50  | 0 | Reserved |
| 50  | 10 | Ethernet Type | 
| 50  | 20 | Source MAC    |
| 50  | 30 | Destination MAC | 
| 50  | 40 | DSAP in LLC | 
| 50  | 50 | SSAP in LLC | 
| 50  | 60 | Control field in LLC | 
| 50  | 70 | SNAP | 
| 50  | 80 | VLAN ID | 
| 50  | 90 | Inner VLAN ID | 
| 50  | 100 | Inner VLAN ID | 
| 50  | 110 | Inner VLAN PCP | 
| 50  | 120 | VLAN DEI | 
| 50  | 130 | Inner VLAN DEI | 
| 50  | 130 | Source MAC Special Bits | 
| 50  | 140 | Destination MAC Special Bits | 
| 50  | 4095 | reserved | 
{.dense}

## Filters Components for MPLS Traffic Rule Family  ## 
 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 100  | 0 | Reserved |
| 100  | 10 | draft-ietf-idr-bgp-flowspec-label-02 |

### defined draft-ietf-idr-fsv2-ip-basic
### IP Basic Filter Family Components 

| Filter Family | Component | Description | document |  
|---|---|---|---|
| 256  | 0 | Reserved |
| 256  | 5    | some parts of SRHv6 SID | [draft-ietf-idr-flowspec-srv6](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-srv6/) | 
| 256  | 7    | NRP ID  SRv6 Next Hop Header | [draft-ietf-idr-flowspec-network-slice-ts/](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-network-slice-ts-05.txt)
| 256  | 10   | IP Destination Prefix | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 20   | IP Source Prefix      | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic)
| 256  | 30   | IP v4 Protocol / IPv6 Upper Layer Protocol | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 40   | Port | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 256  | 50   | Destination Port | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 60   | Source Port  | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 70   | ICMPv4 Type / ICMPv6 Type |[draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 80   | ICMP Code / ICMPv6 Code | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 256  | 90   | TCP Flags | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 100  | Packet Length | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 110  | DSCP | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 120  | Fragment | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 130  | Flow Label | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
{.dense}

## FSv2 Actions 
## 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive | TBD | Flowspec Encapsulate-NRP-ID | draft-ietf-idr-flowspec-network-slice-ts |


---
title: BGP Flow Specification Component Allocation for draft-ietf-idr-fsv2-ip-basic
description: FSv2 components
published: true
date: 2026-05-25T21:40:04.209Z
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

### IP Basic Filter Family Components 

| Filter Family | Component | Description | document |  
|---|---|---|---|
| 256  | 0 | Reserved |
| 256  | 5    | some parts of SRHv6 SID | [draft-ietf-idr-flowspec-srv6](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-srv6/) | 
| 256  | 7    | NRP ID  SRv6 Next Hop Header | [draft-ietf-idr-flowspec-network-slice-ts](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-network-slice-ts-05.txt)
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


## Filters Components for L2 Traffic Rule Family  ## Components 
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

### Filters Components for MPLS Traffic Filter Family 
### 
 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 100  | 0 | Reserved |
| 100  | 20 | MPLS-Match1 | [draft-ietf-idr-flowspec-mpls-match](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-mpls-match)
| 100  | 30 | MPLS-Match2 | [draft-ietf-idr-flowspec-mpls-match](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-mpls-match)
| 100  | 4095 | reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 

### SFC Filter Family Component Assignments 
### 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 100  | 0 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 100  | 1-4094 | TBD | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 100  | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 

### Tunneled Traffic (NVO3) 
### Filter Family - 200 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 200  | 0 | Reserved | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200  | 10 | VN ID | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 20 | Cookie | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 200 | 30 | Tunnel Header Flags | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 200 | 40 | L2TP Control Version | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 200 | 50 | L2TP Control Connection ID | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 60 | L2TP Ns | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 70 | L2TP Nr | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 80 | Protocol Type | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 90 | GRE Sequence | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
Community 
 
 
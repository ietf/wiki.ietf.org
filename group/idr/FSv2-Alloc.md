---
title: BGP Flow Specification Component Allocation for draft-ietf-idr-fsv2-ip-basic
description: FSv2 components
published: true
date: 2026-10-12T13:16:11.817Z
tags: 
editor: markdown
dateCreated: 2026-05-25T17:09:54.584Z
---

# FSv2 Filter components 

## Filter family Types  
### defined in draft-ietf-idr-fsv2-ip-basic
- 200 - Time 
- 300 - Interface 
- 400 - L2 Traffic rules 
- 500 - MPLS traffic rules
- 600 - SFC Traffic Rules 
- 700 - Queued Pair (QP) 
- 800 - Tunneled traffic 
- 900 - APN filters 
- 1000 - IPv4 Basic Filter rules 
- 1100 - IPv6 Basic Filter Rules 
- 1200 - CATS Traffic rules 
- 1400 - Routing 

### Time 
| Filter Family | Component | Description | document |  
|---|---|---|---|
| 200  | 0 | Reserved |
| 200  | 100 |Scheduling Time Information | [draft-zzd-idr-flowspec-path-scheduling](https://www.ietf.org/archive/id/draft-zzd-idr-flowspec-path-scheduling/)  

### Interface identifier 
| Filter Family | Component | Description | document |  
|---|---|---|---|
| 300  | 0 | Reserved |
| 300  | 100 | incoming Interface set | [draft-geng-idr-flowspec-sav](https://datatracker.ietf.org/doc/draft-geng-idr-flowspec-sav/)

## Filters Components for L2 Traffic Rule Family
| Filter Family | Component | Description }   
|---|---|---|---|
| 400  | 0 | Reserved |
| 400  | 10 | Ethernet Type | 
| 400  | 20 | Source MAC    |
| 400  | 30 | Destination MAC | 
| 400  | 40 | DSAP in LLC | 
| 400  | 50 | SSAP in LLC | 
| 400  | 60 | Control field in LLC | 
| 400  | 70 | SNAP | 
| 400  | 80 | VLAN ID | 
| 400  | 90 | Inner VLAN ID | 
| 400  | 100 | Inner VLAN ID | 
| 400  | 110 | Inner VLAN PCP | 
| 400  | 120 | VLAN DEI | 
| 400  | 130 | Inner VLAN DEI | 
| 400  | 130 | Source MAC Special Bits | 
| 400  | 140 | Destination MAC Special Bits |  
| 400  | 4095 | reserved | 
{.dense}

### Filters Components for MPLS Traffic Filter Family 
 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 500  | 0 | Reserved |
| 500  | 20 | MPLS-Match 1 | [draft-ietf-idr-flowspec-mpls-match](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-mpls-match)
| 500  | 30 | MPLS-Match 2 | [draft-ietf-idr-flowspec-mpls-match](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-mpls-match)
| 500  | 4095 | reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 

### SFC Filter Family Component Assignments 
### 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 600  | 0 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 600  | 1-4094 | TBD | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 600  | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
{.dense}

 ## Tunneled Traffic Queued Pair 
## Filter Family  
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 700 | 0 |  Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 700 | 1-99 | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 700 | 100 | Destination QP |  [draft-lll-idr-flowspec-filter-qp-01.txt](https://www.ietf.org/archive/id/draft-lll-idr-flowspec-filter-qp-01.txt) | 
| 700 | 101-4094 | Unassigned |   [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 700 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |

### Tunneled Traffic (NVO3) 
### Filter Family - 800
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 800  | 0 | Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 800  | 10 | VN ID | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 800 | 20 | Cookie | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 800 | 30 | Tunnel Header Flags | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 800 | 40 | L2TP Control Version | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 800 | 50 | L2TP Control Connection ID | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 800 | 60 | L2TP Ns | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 800 | 70 | L2TP Nr | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 800 | 80 | Protocol Type | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 800 | 90 | GRE Sequence | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 800 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |



 ## Tunneled Traffic APN
## Filter Family  
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 900 | 0 |  Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 900 | 1 | APN ID | [draft-peng-idr-apn-bgp-flowspec-00.txt](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/)
| 900 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |

### IPv4 Basic Filter Family Components 

| Filter Family | Component | Description | document |  
|---|---|---|---|
| 1000 | 0 | Reserved |
| 100 | 10    | some parts of SRHv6 SID | [draft-ietf-idr-flowspec-srv6](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-srv6/) | 
| 256  | 20    | NRP ID  SRv6 Next Hop Header | [draft-ietf-idr-flowspec-network-slice-ts](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-network-slice-ts-05.txt)
| 256  | 30   | CS ID (IPv4/IPv6) | [draft-lin-idr-cats-flowspec-ts](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt)
| 256 |  40    | Bitwise Destination IPv4/IPv6 filter | - [draft-kao-idr-bitwise-ip-filters](https://datatracker.ietf.org/doc/draft-kao-idr-bitwise-ip-filters/)  
| 256 |  50   | Destination-QP | - [draft-lll-idr-flowspec-filter-qp-00](https://datatracker.ietf.org/doc/draft-lll-idr-flowspec-filter-qp/) 
| 256  | 60   | IP Destination Prefix | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256 |  70    | Bitwise Source Filter IPv4/IPv6 source | - [draft-kao-idr-bitwise-ip-filters](https://datatracker.ietf.org/doc/draft-kao-idr-bitwise-ip-filters/)  
| 256  | 80   | IP Source Prefix      | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic)
| 256  | 90   | IP v4 Protocol / IPv6 Upper Layer Protocol | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 100   | Port | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 256  | 110   | Destination Port | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 120  | Source Port  | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 130   | ICMPv4 Type / ICMPv6 Type |[draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 140  | ICMP Code / ICMPv6 Code | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 256  | 150   | TCP Flags | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 160  | Packet Length | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 170  | DSCP | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 180  | Fragment | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256  | 190  | Flow Label | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 256 | 200 | Packet content filter | [draft-cui-idr-content-filter-flowspec](https://www.ietf.org/archive/id/draft-cui-idr-content-filter-flowspec-04.txt) | 
| 256 | 210 | Class ID | [draft-song-idr-flowspec-classid-filter](https://www.ietf.org/archive/id/draft-song-idr-flowspec-classid-filter/) | 
| 256 | 220 | DIP-AS | [draft-wang-idr-flowspec-dip-origin-as-filter](https://www.ietf.org/archive/id/draft-wang-idr-flowspec-dip-origin-as-filter/)
| 256 | 230 | SIP-AS | [draft-wang-idr-flowspec-sip-origin-as-filter](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-sip-origin-as-filter/) | 
| 256 | 240 | DIP-Com | [draft-wang-idr-flowspec-dip-community-filter](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-dip-community-filter/) | 
| 256 | 250 | SIP-Com | [draft-wang-idr-flowspec-sip-community-filter](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-sip-communityn-as-filter/) | 
| 256  | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
{.dense}


### SFC Filter Family Component Assignments 
### 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 300  | 0 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 300  | 1-4094 | TBD | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 300  | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
{.dense}

## Tunneled Traffic CATS 
## Filter Family -220  
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 320 | 0 |  Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 320 | 50 | IPv4 CS-ID | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) 
| 300 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
{.dense}
 


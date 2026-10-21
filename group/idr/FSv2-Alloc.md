---
title: BGP Flow Specification Component Allocation for draft-ietf-idr-fsv2-ip-basic
description: FSv2 components
published: true
date: 2026-10-21T20:29:42.885Z
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
| 200  | 100 |Scheduling Time Information | [draft-zzd-idr-flowspec-scheduling](https://datatracker.ietf.org/doc/draft-zzd-idr-flowspec-scheduling/)

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

### Tunneled Traffic Queued Pair 
## Filter Family  
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 700 | 0 |  Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 700 | 1-99 | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 700 | 100 | Destination QP |  [draft-lll-idr-flowspec-filter-qp-01.txt](https://www.ietf.org/archive/id/draft-lll-idr-flowspec-filter-qp-01.txt) | 
| 700 | 101-4094 | Unassigned |   [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 700 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |

### Tunneled Traffic (NVO3) 
### Filter Family 
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
| 900 | 0-99| Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 900 | 100 | APN ID | [draft-peng-idr-apn-bgp-flowspec-00.txt](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) | 
| 900 | 101-4094| Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 900 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |

### IPv4 Basic Filter Family Components 

| Filter Family | Component | Description | document |  
|---|---|---|---|
| 1000 | 0 | Reserved |
| 1000 | 0-99 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 100 | 100  | Destination QP  |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 101-299 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 100 | 300  | some parts of SRHv6 SID | [draft-ietf-idr-flowspec-srv6](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-srv6/) | 
| 1000 | 301-499 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 256  | 500   | NRP ID  SRv6 Next Hop Header | [draft-ietf-idr-flowspec-network-slice-ts](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-network-slice-ts/) | 
| 1000 | 501-799 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 800  | Bitwise Destination IPv4 | - [draft-kao-idr-bitwise-ip-filters](https://datatracker.ietf.org/doc/draft-kao-idr-bitwise-ip-filters/) | 
| 1000 | 801-809 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 810  | Bitwise Destination IPv6 | - [draft-kao-idr-bitwise-ip-filters](https://datatracker.ietf.org/doc/draft-kao-idr-bitwise-ip-filters/) |
| 1000 | 811-999 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1000  | IPv4 Destination Prefix | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1000-1009 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1010  | IPv6 Destination Prefix | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1011-1099 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1100    | Bitwise Source Filter IPv4 | - [draft-kao-idr-bitwise-ip-filters](https://datatracker.ietf.org/doc/draft-kao-idr-bitwise-ip-filters/) | 
| 1000 | 1101-1009 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1110    | Bitwise Source Filter IPv6 | - [draft-kao-idr-bitwise-ip-filters](https://datatracker.ietf.org/doc/draft-kao-idr-bitwise-ip-filters/) | 
| 1000 | 1111-1199 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1200  | IPv4 Source Prefix      | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1201-1209 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1210 | IPv6 Source Prefix      | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1211-1299 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1300   | IP v4 Protocol  | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1301-1309 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1310   | IPv6 Upper Layer Protocol | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1311-1399 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1400   | Port | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 1000 | 1401-1499 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1500   | Destination Port | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000  | 1501-1599  | Unassigned  | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) 
| 1000  | 1600  | Source Port  | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000  | 1601-1699  | Unassigned  | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1700  | ICMPv4 Type  |[draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1701-1709 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1710  | ICMPv6 Type | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 1000 | 1711-1799 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1800  | ICMPv4 Code  |[draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1801-1809 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 1810  | ICMPv6 Code | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |  
| 1000 | 1811-1899 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1900  | TCP (v4) Flags | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1901-1909 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 1910  | TCP (v6) Flags | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 1911-1999 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 2000  | Packet Length | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 2001-2099  | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 2100  | DSCP | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 2101-2199  | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 2200  | Fragment | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 2201-2299  | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000  | 2300  | Flow Label | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
| 1000 | 2301-2999  | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 256 | 3000 | Packet content filter | [draft-cui-idr-content-filter-flowspec](https://www.ietf.org/archive/id/draft-cui-idr-content-filter-flowspec-04.txt) | 
| 1000 | 3001-3099  | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 3100  | QUIC Destination Connection ID | [draft-lin-idr-flowspec-quic](https://datatracker.ietf.org/doc/draft-lin-idr-flowspec-quic/) | 
| 1000 | 3101-3109 | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 3110  | QUIC Source Connection ID | [draft-lin-idr-flowspec-quic](https://datatracker.ietf.org/doc/draft-lin-idr-flowspec-quic/)  | 
| 1000 | 3111-3119  | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1000 | 3120  | QUIC Header Flag (RFC 9000) | [draft-lin-idr-flowspec-quic](https://datatracker.ietf.org/doc/draft-lin-idr-flowspec-quic/) | 
| 1000 | 3121-4094 | Unassigned | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
{.dense}


## Tunneled Traffic CATS 
## Filter Family 1200
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 1200 | 0 |  Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1200 | 1-199 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1200 | 200 | IPv4 CS-ID | [draft-lin-idr-cats-flowspec-ts](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts) | 
| 1200 | 1-199 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 300 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 
{.dense}
 
 
 ## Routing Information Family 
## Filter Family 1400 
| Filter Family | Component | Description | document |  
|---|---|---|---|
| 1400 | 0 |  Reserved |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1400 | 1-99 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1400 | 100 | DIP-AS | [draft-wang-idr-flowspec-dip-origin-as-filter](https://www.ietf.org/archive/id/draft-wang-idr-flowspec-dip-origin-as-filter/)
| 1400 | 101-199 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1400 | 200 | SIP-AS | [draft-wang-idr-flowspec-sip-origin-as-filter](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-sip-origin-as-filter/) | 
| 1400 | 201-299 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1400 | 300 | DIP-Com | [draft-wang-idr-flowspec-dip-community-filter](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-dip-community-filter/) | 
| 1400 | 301-399 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1400 | 400 | SIP-Com | [draft-wang-idr-flowspec-sip-community-filter](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-sip-communityn-as-filter/) | 
| 1400 | 401-4094 | Unassigned |  [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) |
| 1400  | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 


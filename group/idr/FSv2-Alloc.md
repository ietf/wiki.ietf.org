---
title: BGP Flow Specification Component Allocation for draft-ietf-idr-fsv2-ip-basic
description: FSv2 components
published: true
date: 2026-05-25T21:35:51.828Z
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


## FSv2 Extended Community Actions 
### Generic Transitive  
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive | TBD1[0x080A] | Flow spec VLAN action | [draft-ietf-idr-flowspec-l2vpn](https://datatracker.ietf.org/draft-ietf-idr-flowspec-l2vpn)
| Generic Transitive | TBD2[0x0808] | Flow spec TPID action| [draft-ietf-idr-flowspec-l2vpn](https://datatracker.ietf.org/draft-ietf-idr-flowspec-l2vpn)
| Generic Transitive | TBD | Flowspec Encapsulate-NRP-ID | [draft-ietf-idr-flowspec-network-slice-ts](https://www.ietf.org/archive/id/[draft-ietf-idr-flowspec-network-slice-ts) | 
| Generic Transitive | TBD | label Action |  [draft-ietf-idr-bgp-flowspec-label](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-flowspec-label) | 
| Generic Transitive | TBD | FlowSpec Redirect to indirection-id | [draft-ietf-idr-flowspec-path-redirect](/group/idr/implementations/draft-ietf-idr-flowspec-path-redirect)| 
{.dense}
### Flow Specification Transitive Extended Community (0x07) 
### registry is FCFS 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Transitive (0x07) | 0x02 |  Interface set | [drasft-ietf-idr-flowspec-interfaceset](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-interfaceset) 
{.dense} 
### Flow Specification Non-Transitive Extended Community 
### registry is FCFS 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Non Transitive (0x07) | 0x02 |  Interface set | [drasft-ietf-idr-flowspec-interfaceset](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-interfaceset) 
{.dense}


### Flow Specification SFC related 
#### Generic Transitive Experimental Use Extended Community (0x0d)  
#### Tramsitive Extended Community (0x0b)  
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive Experimental (0x0d) | SFC Sub-types | registry | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt)
| Generic Transitive Experimental (0x0d)| 0 | Reserved | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Generic Transitive Experimental (0x0d)| 1 | SFIR pool Identifier | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Generic Transitive Experimental (0x0d)| 2 | MPLS Label Stack Mixed (swapping/stacking) Labels  | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) |
| Transitive FS SFC (0x0b) | SFC Sub-types | registry | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt)
| Transitive FS SFC | (0x0b) | 0 | Rserved | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Transitive FS SFC (0x0b)| 1 | SFIR pool Identifier | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Transitive FS SFC (0x0b)| 2 | MPLS Label Stack Mixed (swapping/stacking) Labels  | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) |
{.dense}

### Proposed New FSv2 Extended Community Action Registries 
#### Prposed New Sub-Type Registry: "FlowSpec Redirect to indirection-id Extended Community Sub-Type"

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

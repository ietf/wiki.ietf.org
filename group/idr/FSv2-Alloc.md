---
title: BGP Flow Specification Component Allocation for draft-ietf-idr-fsv2-ip-basic
description: FSv2 components
published: true
date: 2026-05-25T17:38:17.798Z
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
 
| Filter Family | Component | Description }   
|---|---|---|---|
| 100  | 0 | Reserved |
| 100  | 

### defined draft-ietf-idr-fsv2-ip-basic
### IP Basic Filter Family Components 

| Filter Family | Component | Description }   
|---|---|---|---|
| 256  | 0 | Reserved |
| 256  | 
| 256  | 5    | some parts of SRHv6 SID | 
| 256  | 10   | IP Destination Prefix |
| 256  | 20   | IP Source Prefix      |
| 256  | 30   | IP v4 Protocol / IPv6 Upper Layer Protocol | 
| 256  | 40   | Port | 
| 256  | 50   | Destination Port |
| 256  | 60   | Source Port  | 
| 256  | 70   | ICMPv4 Type / ICMPv6 Type | 
| 256  | 80   | ICMP Code / ICMPv6 Code | 
| 256  | 90   | TCP Flags | 
| 256  | 100  | Packet Length | 
| 256  | 110  | DSCP | 
| 256  | 120  | Fragment | 
| 256  | 130  | Flow Label | 
| 256  | 4095 | Reserved | 
{.dense}

## Filter Components for IDR WG Drafts
##

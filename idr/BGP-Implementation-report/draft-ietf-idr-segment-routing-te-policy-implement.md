---
title: Implementation Report for draft-ietf-idr-segment-routing-te-policy 
description: IDR Vendor implementation report for draft-ietf-idr-segment-routing-te-policy
published: true
date: 2022-11-27T20:43:49.906Z
tags: 
editor: markdown
dateCreated: 2022-11-27T20:18:02.396Z
---

# Implementation report for draft-ietf-idr-segment-routing-te-policy

## Author
Report created by Ketan Talaulikar (ketant@…)

## Core Functionality 

| Core Functionality | section |	Cisco IOS-XR | Arista EOS |	Juniper |	Huawei VRP	| Nokia SROS |	GoBGP | 
|---|---|---|---|---|---|---|---|
|BGP SR Policy SAFI base support | 2-4 | 6.5.1 |	4.21.0 | TBD | V800R019C10 |	16.0.R1 |	v2.34.0 |
|Support for originating SR Policy | 2-4 | 6.5.1 | ---   | TBD	|  ---       |	16.0.R1 |	v2.34.0 | 
| Support for using SR Policy as headend |	2-4	| 6.5.1 |	4.21.0 | TBD |	V800R019C10 |	16.0.R1 |	TBD |
| Error handling |	5	 | --- | 4.21.0 | --- | --- | --- | --- | 			

### TLV code point support 

| TLV Code Point |	Description	 | Cisco IOS-XR | 	Arista EOS | Huawei VRP |	Nokia SROS | GoBGP | 
|---|---|---|---|---|---|---|
| 12	| Preference sub-TLV   | Yes | Yes          | Yes | Yes | Yes |
| 13	| Binding SID sub-TLV	 | Yes | Yes          | Yes | Yes | Yes |
| 14  |	ENLP sub-TLV	       | --- | Yes (4.22.2) | --- | --- | --- |
| 15	| Priority sub-TLV	   | --- | ---          | --- | --- | Yes |
| 20	| SRv6 Binding SID	   | --- | ---          | Yes | Yes | --- |
| 128 |	Segment List sub-TLV | Yes | Yes	        | Yes	| Yes	| Yes |
|     | Segment sub-TLVs	   | sub-TLV 1 | sub-TLV 1 | Sub-TLV 1,13 |	Sub-TLV 1 | 	Yes | 

### Sub-TLV support 

| TLV Code Point |	Segement Sub TLV	 | Cisco IOS-XR | 	Arista EOS | Huawei VRP |	Nokia SROS | GoBGP | 
|---|---|---|---|---|---|---|
|   9  |	Weight sub-TLV                    | Yes | Yes | Yes | Yes |	Yes |
| 129	 | Policy Candidate Path Name sub-TLV |	--- | --- |	--- | --- |	Yes |
| 130  | Policy Name sub-TLV	              | --- | --- | --- | --- | --- |

### Segment Type Description 

| Sub-TLV |	Segment type Description | Cisco IOS-XR |	Arista EOS |	Huawei VRP | Nokia SR OS | GoBGP |
|---|---|---|---|---|---|---|
| A  | SR-MPLS Label  | Yes | Yes | Yes | Yes |	Yes | 
| B	 | SRv6 SID	      | --- | Yes | Yes | Yes | 	--- | 
| C	 | IPv4 Prefix with optional SR algorithm	 | --- | --- | --- | --- | --- |		
| D	 | IPv6 Global Prefix with optional SR algorithm for SR-MPLS	| --- | --- | --- | --- | --- |		
| E	 | IPv4 Prefix with local interface ID (if ID) | --- | --- | --- | --- | --- |

| F	 | IPv4 addresses for if ID for link endpoints (local, remote)  | --- | --- | --- | --- | --- |		
| G	 | IPv6 Prefix and If ID for link endpoints (local, remote) for SR-MPLS	| --- | --- | --- | --- | --- |
| H	 | IPv6 Addresses for link endpoints (local, remote) for SR-MPLS | --- | --- | --- | --- | --- |	
| I	 | IPv6 Global Prefix with optional SR algorithm for SRv6 | --- | --- | --- | --- | --- |		
| J	 | IPv6 Prefix and If ID for link endpoints (local, remote) for SRv6 | --- | --- | --- | --- | --- |
| K |	IPv6 Addresses for link endpoints (local, remote) for SRv6 | --- | --- | --- | --- | --- |	

### Color Extended Community Support for Steering over SR Policy

| Functionality               | Cisco IOS-XR	| Huawei VRP  | Arista EOS |	Nokia SR OS |	GoBGP |
|---|---|---|---|---|---|---|
| Support for Type 0 (default) mode   | 7.3.2 | V800R019C10 |	4.21.0	| 16.0.R1 |	v2.34.0 |
| Support for Type 1 mode	            | 7.3.2	| ---       	| 4.21.0	| 16.0.R1 |	TBD     |
| Support for Type 2 mode             |	---   | ---         | 4.21.0	| 16.0.R1	| TBD     |
| Support for multiple Color Ext Comm	| 7.3.2 |	V800R019C10(Use the Color EC with the largest value) |	4.21.0 | 16.0.R1	| TBD |

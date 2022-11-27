---
title: Implementation Report for draft-ietf-idr-segment-routing-te-policy 
description: IDR Vendor implementation report for draft-ietf-idr-segment-routing-te-policy
published: true
date: 2022-11-27T20:30:32.766Z
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

## Details 

| TLV Code Point |	Description	 | Cisco IOS-XR | 	Arista EOS | Huawei VRP |	Nokia SROS | GoBGP | 
|---|---|---|---|---|---|---|
| 12	| Preference sub-TLV   | Yes | Yes          | Yes | Yes | Yes |
| 13	| Binding SID sub-TLV	 | Yes | Yes          | Yes | Yes | Yes |
| 14  |	ENLP sub-TLV	       | --- | Yes (4.22.2) | --- | --- | --- |
| 15	| Priority sub-TLV	   | --- | ---          | --- | --- | Yes |
| 20	| SRv6 Binding SID	   | --- | ---          | Yes | Yes | --- |
| 128 |	Segment List sub-TLV | Yes | Yes	        | Yes	| Yes	| Yes |
|     | Segment sub-TLVs	   | sub-TLV 1 | sub-TLV 1 | Sub-TLV 1,13 |	Sub-TLV 1 | 	Yes | 

| TLV Code Point |	Segement Sub TLV	 | Cisco IOS-XR | 	Arista EOS | Huawei VRP |	Nokia SROS | GoBGP | 
|---|---|---|---|---|---|---|
|   9  |	Weight sub-TLV                    | Yes | Yes | Yes | Yes |	Yes |
| 129	 | Policy Candidate Path Name sub-TLV |	--- | --- |	--- | --- |	Yes |
| 130  | Policy Name sub-TLV	              | --- | --- | --- | --- | --- |

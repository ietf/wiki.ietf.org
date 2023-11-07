---
title: Implementation Report for draft-ietf-idr-segment-routing-te-policy 
description: IDR Vendor implementation report for draft-ietf-idr-segment-routing-te-policy
published: true
date: 2023-11-07T07:13:33.095Z
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
| B	 | SRv6 SID	      | --- | --- | Yes | Yes | 	--- | 


### Color Extended Community Support for Steering over SR Policy

| Functionality               | Cisco IOS-XR	| Huawei VRP  | Arista EOS |	Nokia SR OS |	GoBGP |
|---|---|---|---|---|---|---|
| Support for Type 0 (default) mode   | 7.3.2 | V800R019C10      | 4.21.0	| 16.0.R1 |	v2.34.0 |
| Support for Type 1 mode	            | 7.3.2	| ---       	     | 4.21.0	| 16.0.R1 |	TBD     |
| Support for Type 2 mode             |	---   | ---              | 4.21.0	| 16.0.R1	| TBD     |
| Support for multiple Color Ext Comm	| 7.3.2 |	V800R019C10 (N1) | 4.21.0 | 16.0.R1	| TBD |

N1(Note 1):  The Huawei VRP implementation uses the (Use the Color EC with the largest value). 

## interoperability test results 
Interoperability tests between various vendors for this specification has been tested by EANTC for several years now. Specifically, please refer to this test report from the 2019 event
[ENACTC test report](https://eantc.de/fileadmin/eantc/downloads/News/2019/EANTC-MPLSSDNNFV2019-WhitePaper-v1.2.pdf).  

- The BGP SR Policy SAFI usage for signaling between controller & routers was tested.  Also the steering based on Color Extended Community.  Refer to pages 26-27

Additional tests were done in similar events in [2020](https://eantc.de/fileadmin/eantc/downloads/events/MPLS2020/EANTC-MPLSSDNNFV2020-WhitePaper.pdf) and [2022](https://eantc.de/fileadmin/eantc/downloads/events/2022/EANTC-InteropTest2022-TestReport.pdf). 
 
 The interoperability tests do not cover the error conditions or the handing of malformed/invalid BGP
 UPDATE messages.
 
 ## References for Configuration per Vendor

[Juniper reference for segment routing](https://www.juniper.net/documentation/us/en/software/junos/standards/topics/concept/segment-routing.html) 

[GoBGP reference for segment routing](https://github.com/osrg/gobgp/blob/master/docs/sources/lib-srpolicy.md)


 
 

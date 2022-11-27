---
title: Implementation report for draft-ietf-idr-bgpls-srv6-ext 
description: Report on implementations of draft-ietf-idr-bgpls-srv6-ext 
published: true
date: 2022-11-27T19:55:19.943Z
tags: 
editor: markdown
dateCreated: 2022-11-27T19:55:19.943Z
---

# draft-ietf-idr-bgpls-srv6-ext Implementation Report

This is the implementation report for [draft-ietf-idr-bgpls-srv6-ext](https://datatracker.ietf.org/doc/draft-ietf-idr-bgpls-srv6-ext/). 

## Vendors Supporting 

The following lists current implementation supported, and in some cases the initial version which includes the support.


| NLRI Type |  Description   | Cisco IOS-XR | GoBGP |	Huawei VRP | GoBMP |
|---|---|---|---|---|---|
| 6	        |SRv6 SID	|  7.1.1 | V2.17.0 | 	8.19.1 |	v0.1 |


### Author of report 
Report created by Ketan Talaulikar (ketant@…) October 29, 2020

## Specific Support 


| TLV Code Point | Description	| Cisco IOS-XR | GoBGP   | Huawei VRP |	GoBMP |
|---|---|---|---|---|---|
| 1038 | SRv6 Capabilities TLV         | 7.1.1 |  ---    |  8.19.1    | v0.1 |
| 1106 | SRv6 End.X SID TLV	           | 7.1.1 |  ---    |  8.19.1    | v0.1 |
| 1107 | IS-IS SRv6 LAN End.X SID TLV  | 7.1.1 |  ---    |  8.19.1    | ---  | 
| 1108 | OSPFv3 SRv6 LAN End.X SID TLV |  ---	 |  ----   |  8.21.1	  | ---  |
| 1162 | SRv6 Locator TLV	             | 7.1.1 |	---    |  -----     |	v0.1 |
| 518  | SRv6 SID Information TLV	     | 7.1.1 | V2.17.0 |  8.19.1    |	v0.1 |
| 1250 | SRv6 Endpoint Behavior TLV	   | 7.1.1 | V2.17.0 |  8.19.1    | v0.1 |
| 1251 | SRv6 BGP Peer Node SID TLV	   |  ---	 |  ---    | 	8.19.1	  | v0.1 |
| 1252 | SRv6 SID Structure TLV	       | 7.2.1 | V2.17.0 | 8.21.1	    | v0.1 |

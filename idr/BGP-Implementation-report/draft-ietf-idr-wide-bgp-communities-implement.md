---
title: draft-ietf-idr-wide-communities Implementation report
description: IDR WG implementation report on Vendor support for Wide communities
published: true
date: 2022-11-27T21:29:17.197Z
tags: 
editor: markdown
dateCreated: 2022-11-27T21:20:41.312Z
---

# draft-ietf-idr-wide-communities Implementation Report

## Authors

Authors: (TBD) 


## Implementations of draft-ietf-idr-wide-bgp-communities

|  ID      | Vendor | Product Line       | product        |  release-id |
|---|---|---|---|---|
| Huawei-1 | Huawei | Router Product     | NE40E-M2K      | V800R011C00 | 
| Huawei-2 | Huawei | Controller Product | iMaster NCE IP | V100R018C00 | 

These two implementations are on different code bases


## Original REport 


| Header / Type / TLV |	MUST/MAY |	Section |	Huawei-1 | Huawei-2 |
|---|---|---|---|---|
| BGP Community Container Attribute Common Header | MUST | 3.1 (34) |	Support |	Support |
| BGP Wide Community Container (type=1) Support	  | MUST | 3.1	| Support |	Support |
| Target (subTLV: 1) | MUST	| 4.4.1	| Support |	Support |
| Exclude Target (subTLV: 2) |	MUST | 4.4.2	| Support |	Support |
| Parameter (subTLV: 3)	| MUST	| 4.4.3 |	Support |	Support |

---
title: draft-ietf-idr-rpd Implementation Report
description: Report on Vendor implementations of draft-ietf-idr-rpd
published: true
date: 2022-11-27T23:00:45.980Z
tags: 
editor: markdown
dateCreated: 2022-11-27T23:00:45.980Z
---

# draft-ietf-idr-rpd Implementation Report

This is an implementation report for [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)

## Author(s) of report

Huaimo Chen (January 2022) 

 
## Vendor Implementations

| Implementation | Vendor | Product Line | Product | Version | 
|---|---|---|---|---|
| Huawei-1 | Huawei | Router Product line | NE40E-M2K | V800R011C00 |
| Huawei-2 | Huawei | Controller Product Line | iMaster NCE IP | V100R018C00 | 

These two implementaitnos are based on different code bases. 

## RPD NLRI support

| NLRI	  | MUST/MAY | Section | Huawei-1 |	Huawei-2 | 
|---|---|---|---|---|
| Feature |	MUST	   | 4.1	   | Support  |	Support  |
| Ordering ^N1^	| MUST | 	4.1  |	Support	| Support  |
N1 (^N1^)  ordering is by

| Error Handling	  | MUST/MAY | Section | Huawei-1 |	Huawei-2 | 
|---|---|---|---|---|
| NLRI length check |	MUST |	4.1 |	Support |	Support |
| NLRI Policy (1 or 2) | MUST |	4.1 |	Support | Support |
| Distinguisher checks | MUST	| 4.1	| Support	| Support |

### draft-ietf-idr-rpd options

| Type/TLV/Atom/sub-TLV | MUST/MAY |	Huawei-1 | Huawei-2 | 
|---|---|---|---|
| BGP Wide Community Type | MUST | Support |	Support |
| Target TLV ^N2^         |	MUST | Support | Support | 
| Exclude Target TLV ^N2^ |	MUST | Support | Support |
| Parameter TLV ^N2^      | MUST | Support | Support |
| RouteAttr_ Atom	        | MUST | Support | Support |
| MED Change sub-TLV	    | MUST | Support | Support |
| AS-Path Change sub-TLV	| MUST | Support | Support |

N2 (^N2^) - BGP Wide Community TLVs (Target, Exclude Target and Parameter are not focus of draft-ietf-idr-rpd.  

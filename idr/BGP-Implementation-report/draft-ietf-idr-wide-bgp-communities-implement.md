---
title: draft-ietf-idr-wide-communities Implementation report
description: IDR WG implementation report on Vendor support for Wide communities
published: true
date: 2022-11-27T21:55:33.162Z
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

### Requested extension to implementation report

| Header / Type / TLV |	MUST/MAY | Section | Huawei-1 |	Huawei-2 | 
|---|---|---|---|---|
| BGP Community Container Attribute Common Header | MUST |	3.1 (34) | Support | Support |
| Support for: T bit, C bit |	MUST |	3.1	| Not support	| Not support |
| BGP Wide Community Container (type=1) Support |	MUST | 3.1 |	Support |	Support |

### BGP Wide Community container
| Container TLVS  |	MUST/MAY | Section |	Huawei-1 |	Huawei-2 | 
|---|---|---|---|---|
| Community value (checks and error handling) |	MUST  |	4.1	| Support	| Support |
| Source AS (checks and error handling) |	MUST	| 4.2	| Support |	Support |
| Context AS (checks and error handling) |	MUST | 4.3 | Support |	Support |
| length checks (Target, Exclude, Parameter) |	MUST |	4.4 |	Support |	Support |
| Target TLV supported | MUST |	4.4.1	| Support ^N1^ | Support ^N1^ | 
| Exclude TLV supported	  | MUST | 4.4.2 | Support	| Support |
| Parameter TLV supported	| MUST | 4.4.3 | Support ^N2^ |	Support ^N2^ |

N1: Target TLV supports: RouteAtt
N2: Parameter TLV supports: MED SubTLV, ASPath SubTLV

### TLV Support

| TLVS |	MUST/MAY | Section  |	Huawei-1 | Huawei-2 |
|---|---|---|---|---|
| Target TLV (detect, errors) |	MUST |	4.4.1 |	Support |	Support |
| Supports: no targets (match all) |	MUST |	4.4.1	| Not support |	Not support |
| Supports: atoms (1-8)	| optional | 4.4.1	| Not support	| Not support |
| Supports: RouteAttr_ |	^N3^ | rpd ^N4^  | Support |	Support |
| Exclude TargetTLV (detect, errors)| MUST | 4.4.2	| Support |	Support |
| Supports: atoms (1-8)	| optional |	4.4.2 |	Not support |	Not support |
| Supports: RouterAttr_ |	optional |	rpd ^N4^  |	Not support	| Not support |
| Parameter TLV (detect, errors) | MUST |	4.4.3 |	Support |	Support | 
| supports: MED and ASpath Change atoms	| optional | 	rpd ^N4^ | 	Support |	Support |

N3: RouteAttr_ Atom subTLV with sub-subTLVs for list of IPv4-prefix ranges, list of IPv6-prefix ranges, ASPath-regex (regular expression), and list of communities.

N4: [draft-ietf-idr-rpd-15](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)


### WIDE Communities supported

| Community	| document | TLVs	| Atoms Supported |
|---|---|---|---|
| MATCH AND SET ATTR |	[draft-ietf-idr-rpd-15](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/) |	Target, Exclude, Parameter | RouteAttr_ (T), MED change (P), ASPath (P) |
| MATCH AND do not advertise | [draft-ietf-idr-rpd-15](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/) | Target, Exclude, Parameter |	none | 



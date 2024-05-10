---
title: draft-ietf-idr-bgp-ls-sr-policy
description: 
published: true
date: 2024-05-10T10:12:54.442Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:22:57.929Z
---

Implementation Report for: https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy/

## Author
Report created by Ketan Talaulikar (ketant@…)

## Core Functionality 

| Core Functionality | section |	Cisco IOS-XR |  Huawei VRP | |
|---|---|---|---|---|---|---|---|
| SR Policy CP NLRI Type support | 2, 3, 4 | 7.11.1 |	V800R024C00 |
| Originating SR Policy Advertisement from Headend | 6 | 7.11.1 | V800R024C00 | 
| Originating SR Policy Advertisement from PCE |	6	| 7.11.1 |	- | 
| Receiving/Propagating SR Policy Advertisement |	-	 | 7.11.1 | V800R024C00  |

### TLV code point support 

| TLV Code Point |	Description	 | Cisco IOS-XR | Huawei VRP | |
|----------------|---------------|--------------|----|---|
|   554 |   SR Policy CP Descriptor              | Yes | Yes |
|  1201 |   SR Binding SID                       | Yes | Yes |
|  1202 |   SR CP State                          | Yes | Yes |
|  1203 |   SR CP Name                           | Yes | Yes |
|  1204 |   SR CP Constraints                    | Yes |  -  |
|  1205 |   SR Segment List                      | Yes | Yes |
|  1206 |   SR Segment                           | Yes | Yes |
|  1207 |   SR Segment List Metric               | Yes | Yes |
|  1208 |   SR Affinity Constraint               | Yes |  -  |
|  1209 |   SR SRLG Constraint                   | Yes |  -  |
|  1210 |   SR Bandwidth Constraint              | Yes |  -  |
|  1211 |   SR Disjoint Group Constraint         | Yes |  -  |
|  1212 |   SRv6 Binding SID                     | Yes | Yes |
|  1213 |   SR Policy Name                       | Yes | Yes |
|  1214 |   SR Bidirectional Group Constraint    | Yes |  -  |
|  1215 |   SR Metric Constraint                 | Yes |  -  |
|  1216 |   SR Segment List Bandwidth            | Yes |  -  |
|  1217 |   SR Segment List Identifier           | Yes |  -  |


### Segment Type Description 

| Sub-TLV |	Segment type | Cisco IOS-XR |	Huawei VRP | |
|---------|--------------|--------------|-----|--|
|    1    | (Type A)     |  Yes         | Yes |
|    2    | (Type B)     |  Yes         | Yes |
|    3    | (Type C)     |  Yes         |  -  |
|    4    | (Type D)     |  Yes         |  -  |
|    5    | (Type E)     |  Yes         |  -  |
|    6    | (Type F)     |  Yes         |  -  |
|    7    | (Type G)     |  Yes         |  -  |
|    8    | (Type H)     |  Yes         |  -  |
|    9    | (Type I)     |  Yes         |  -  |
|   10    | (Type J)     |  Yes         |  -  |
|   11    | (Type K)     |  Yes         |  -  |


## interoperability test results 

 
## References for Configuration per Vendor


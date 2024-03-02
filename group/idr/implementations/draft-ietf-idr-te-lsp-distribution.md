---
title: draft-ietf-idr-bgp-ls-sr-policy
description: 
published: true
date: 2024-03-02T05:09:24.657Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:22:57.929Z
---

Implementation Report for: https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy/

## Author
Report created by Ketan Talaulikar (ketant@…)

## Core Functionality 

| Core Functionality | section |	Cisco IOS-XR |  | 
|---|---|---|---|---|---|---|---|
| SR Policy CP NLRI Type support | 2, 3, 4 | 7.11.1 |	 |
| Originating SR Policy Advertisement from Headend | 6 | 7.11.1 |    | 
| Originating SR Policy Advertisement from PCE |	6	| 7.11.1 |	 | 
| Receiving/Propagating SR Policy Advertisement |	-	 | 7.11.1 |  |

### TLV code point support 

| TLV Code Point |	Description	 | Cisco IOS-XR | 	 | 
|----------------|---------------|--------------|----|
|   554 |   SR Policy CP Descriptor              | Yes | |
|  1201 |   SR Binding SID                       | Yes | |
|  1202 |   SR CP State                          | Yes | |
|  1203 |   SR CP Name                           | Yes | |
|  1204 |   SR CP Constraints                    | Yes | |
|  1205 |   SR Segment List                      | Yes | |
|  1206 |   SR Segment                           | Yes | |
|  1207 |   SR Segment List Metric               | Yes | |
|  1208 |   SR Affinity Constraint               | Yes | |
|  1209 |   SR SRLG Constraint                   | Yes | |
|  1210 |   SR Bandwidth Constraint              | Yes | |
|  1211 |   SR Disjoint Group Constraint         | Yes | |
|  1212 |   SRv6 Binding SID                     | Yes | |
|  1213 |   SR Policy Name                       | Yes | |
|  1214 |   SR Bidirectional Group Constraint    | Yes | |
|  1215 |   SR Metric Constraint                 | Yes | |
|  1216 |   SR Segment List Bandwidth            | Yes | |
|  1217 |   SR Segment List Identifier           | Yes | |


### Segment Type Description 

| Sub-TLV |	Segment type | Cisco IOS-XR |	 |
|---------|--------------|--------------|--|
|    1    | (Type A)     |  Yes         |  |
|    2    | (Type B)     |  Yes         |  |
|    3    | (Type C)     |  Yes         |  |
|    4    | (Type D)     |  Yes         |  |
|    5    | (Type E)     |  Yes         |  |
|    6    | (Type F)     |  Yes         |  |
|    7    | (Type G)     |  Yes         |  |
|    8    | (Type H)     |  Yes         |  |
|    9    | (Type I)     |  Yes         |  |
|   10    | (Type J)     |  Yes         |  |
|   11    | (Type K)     |  Yes         |  |


## interoperability test results 

 
## References for Configuration per Vendor


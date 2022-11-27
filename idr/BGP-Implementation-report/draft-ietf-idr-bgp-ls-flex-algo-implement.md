---
title: draft-ietf-idr-bgp-ls-flex-algo Implementation Report 
description: Implementation Report for IDR for draft-ietf-idr-bgp-ls-flex-algo
published: true
date: 2022-11-27T19:33:06.251Z
tags: 
editor: markdown
dateCreated: 2022-11-27T19:33:06.251Z
---

# draft-ietf-idr-bgp-ls-flex-algo Implementation Report 


## Vendors implementing Flex Algo
Cisco supports [draft-ietf-idr-bgp-ls-flex-algo](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-flex-algo/) in IOS-XR and IOS-XE. 

Author: Report created by Ketan Talaulikar (ketant@…) May 18, 2020

## Feature Support 

TLV Code Point	Description	Cisco IOS-XR	Cisco IOS-XE
|---|---|---|---|----|
| 1039 | Flex Algorithm Definition TLV          | 7.1.1 | 17.4  | 
| 1040 | Flex Algo Exclude Any Affinity sub-TLV | 7.1.1 | 17.4  |
| 1041 | Flex Algo Include Any Affinity sub-TLV |	7.1.1	| 17.4  |
| 1042 | Flex Algo Include All Affinity sub-TLV	| 7.1.1	| 17.4  |
| 1043 | Flex Algo Definition Flags sub-TLV	    | 7.2.1 |	17.4  |
| 1044 | Flex Algo Prefix Metric TLV	          | 7.2.1 |	17.4  |
|---|---|---|---|----|
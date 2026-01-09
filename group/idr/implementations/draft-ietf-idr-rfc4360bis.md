---
title: RFC4360bis Implementation Report 
description: Report on RFC4360bis implementations in BGP 
published: true
date: 2026-01-09T15:25:49.301Z
tags: 
editor: markdown
dateCreated: 2026-01-04T13:47:50.332Z
---

# RFC4360bis Implementation report 

## Implementations: 
1. Juniper
2. Cisco 
3. Argus 


## compliance with draft 


Implementations: 

| Core Functionality | section |	Cisco IOS-XR |	Juniper	| Notes | 
|---|---|---|---|---|---|---|---|
| Extended Community  | 2 | TBD |	TBD |    |  | 
| Extended Community I bit | 2 | TBD | TBD |  unknown who implemented | 
| Extended Community T bit | 2 | TBD | TBD |  | 
| Two-Octet AS-Specific Extended Community | 3.1 | TBD | TBD |  |  
| IPv4-Address-Specific Extended Community | 3.2 | TBD | TBD |  | 
| Opaque Extended Community | 3.3 | TBD | TBD | 
| Route Target Extended Community | 4 | TBD | TBD |  | 
| Route Target Extended Community high-order octet 0x00 or 0x02 | 4 | TBD | TBD |  | 
| Route Target Extended Community high-order octet 0x01 | 4 | TBD | TBD |  | 
| Route Origin Community (high octet = 0x00) | 5 | TBD | TBD |  | 
| Route Origin Community (high octet = 0x01) | 5 | TBD | TBD |  | 
| Route Origin Community (high octet = 0x02) | 5 | TBD | TBD |  | 
| operations | 6| TBD | TBD |  | 
| Operations: MUST NOT be used to modify best path selection | 6 | TBD | TBD |   | 
| Operations: MAY append to route without Ext. Community attribute | 6 | TBD | TBD |  |  
| Operations: May modify according to local policy | 6 | TBD | TBD |  | 
| Operations: Aggregated path contains union of Ext. Communities | 6 | TBD | TBD | need to check |  | 
| Operations: Carries both BGP Communities and BGP Ext. Communities | 6 | TBD | TBD |  | 
| Operations: Non-Transitive Ext. Communities removed at AS boundary | 6 | TBD | TBD |  | 
| Operations: Non-Transitive Ext. Communities not removed within BGP AS Confederation | 6 | TBD | TBD |  | 
| Error handling per RFC7606 | 7 | TBD | TBD |  | 

---
title: RFC4360bis Implementation Report 
description: Report on RFC4360bis implementations in BGP 
published: true
date: 2026-02-14T08:15:12.190Z
tags: 
editor: markdown
dateCreated: 2026-01-04T13:47:50.332Z
---

# RFC4360bis Implementation report 

## Implementations: 
1. Juniper - JUNOS 25.1R1 (and earlier)
2. Cisco 
3. Arrcus 


## compliance with draft 


Implementations: 

| Core Functionality | section |	Cisco IOS-XR |	Juniper	| Arrrcus |  FRRouting | Notes | 
|---|---|---|---|---|---|---|---|
| Extended Community  | 2 | TBD |	Yes |    | Yes |  | 
| Extended Community I bit | 2 | TBD | Yes\[1\] |  | No | unknown who implemented | 
| Extended Community T bit | 2 | TBD | Yes |  | Yes |
| Two-Octet AS-Specific Extended Community | 3.1 | TBD | Yes |  | Yes |  | 
| IPv4-Address-Specific Extended Community | 3.2 | TBD | Yes |  | Yes |  | 
| Opaque Extended Community | 3.3 | TBD | Yes |  | Yes |
| Route Target Extended Community | 4 | TBD | Yes |  | Yes | 
| Route Target Extended Community high-order octet 0x00 | 4 | TBD | Yes |  |  Yes |  
| Route Target Extended Community high-order octet 0x01 | 4 | TBD | Yes |  |  Yes | 
| Route Target Extended Community high-order octet 0x02 (note - RFC 5668) | 4 | TBD | Yes |  |  Yes | 
| Route Origin Community high-order octet = 0x00 | 5 | TBD | Yes |  |  Yes | 
| Route Origin Community high-order octet = 0x01 | 5 | TBD | Yes |  |  Yes | 
| Route Origin Community high-order octet = 0x02 (note - RFC 5668) | 5 | TBD | Yes |  | Yes |  
| operations | 6| - | - |  |  - | 
| Operations: MUST NOT be used to modify best path selection that leads to forwarding loops | 6 | TBD | Yes |   | Yes | 
| Operations: MAY append to route without Ext. Community attribute | 6 | TBD | Yes |  | Yes |
| Operations: May modify according to local policy | 6 | TBD | Yes |  |  Yes | 
| Operations: Aggregated path contains union of Ext. Communities | 6 | TBD | No\[2\] |  | Yes\[3\] |
| Operations: Carries both BGP Communities and BGP Ext. Communities | 6 | TBD | Yes |  | Yes | 
| Operations: Non-Transitive Ext. Communities removed at AS boundary | 6 | TBD | Yes |  |  Yes\[4\] |
| Operations: Non-Transitive Ext. Communities not removed within BGP AS Confederation | 6 | TBD | Yes |  | Yes | 
| Error handling per RFC7606 | 7 | TBD | Yes |  | Yes |

\[1\] - RFC 4360, et seq., are silent about how to display extended communities that aren't either registered, or that the implementation is ignorant of.  JUNOS makes a best effort guess to provide some level of formatting for unknown communities, including ones with the IANA bit set.
\[2\] - JUNOS does not provide an option to aggregate communities of any form when following BGP aggregation procedures.  This is to prevent the aggregate route's properties, including communities, from churning in the presence of churn of contributors to the aggregate route.
\[3\] - FRRouting aggregates extended communities for AS-SETs only.
\[4\] - FRRouting filters extended communities accross the AS bounaries, but it's relaxed for OAD peerings. See https://datatracker.ietf.org/doc/html/draft-uttaro-idr-bgp-oad.

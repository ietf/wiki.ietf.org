---
title: draft-ietf-idr-bgp-optimal-route-reflection implementations
description: 
published: true
date: 2023-03-13T06:46:32.513Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:46:27.475Z
---

# Implementations of draft-ietf-idr-bgp-optimal-route-reflection
## Known Implementations

  -  JUNOS (reported by Kevin F. Wang on May 22 2017)
  -  Cisco IOS XR (reported by Gaurav Dawra on July 20 2017)
  -  Nokia SROS (reported by Wim Henderickx and Adam Simpson on July 20 2017) 

## Implemented Features 

|                                                         | section     |   JUNOS    |   IOS XR     |   SROS    |
|:-------------------------------------------------------:|-------------|:----------:|:------------:|:---------:|
|  Allows to set IGP location per entire RR instance      |  3.1        |    Yes     |     Yes      |   Yes     |
|  Allows to set IGP location per update/peer group       |  3.1        |    Yes     |     Yes      |   Yes     |
|  Allows to set IGP location per individual peer         |  3.1        |    (1)     |     Yes      |   Yes     |
|  Allows for policy configuration on a per client basis  |  3.2        |    (1)     |     Yes      |   Yes     |
|  Allows for IGP based & policy based path selection     |  3.2        |    Yes     |     Yes      |   Yes     |
|  Allows to configure backup IGP location                |  3.1        |    Yes     |     Yes      |   Yes     |
|  Supports co-existence with add-paths                   |  4.0        |    Yes     |     Yes      |   Yes     |
|  BGP next hop is BGP prefix, resolution SHOULD be the   |  3.1.1      |    TBD     |     TBD      |   TBD     |
|  final IGP cost to reach the next hop                   |             |            |              |           |

(1) - JUNOS supports per peer IGP location or policy when peer is alone in a peer group. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-06-08. It was migrated from the old Trac wiki on 2023-03-12.*
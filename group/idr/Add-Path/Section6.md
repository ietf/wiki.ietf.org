---
title: Section 6: Applications
description: 
published: true
date: 2023-03-13T07:57:14.521Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:57:09.902Z
---

# Add Paths Applications



  Functionality Description: Please list or explain which applications that require the propagation of multiple paths are supported by your implementation.

 RFC2119: N/A

| Implementation  |   Comments                                                                                                                                                                       |
|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Cumulus        |  None yet....RX onlys                                                                                                                                                            |
|  Cisco          |  1. RR client to RR use cases for ipv4 and ipv6. 2. RR to RR clients(could be ASBRs) use cases for ipv4 and ipv6.                                                                |
|  Exa            |  N/A                                                                                                                                                                             |
|  Juniper        |  Persistent route flap damping suppression. Distribution of additional destinations or BGP nexthops for multi-path purposes.                                                     |
|  ALU            |  Add-Paths ion IBGP sessions allows for  better load-sharing (more ECMP paths), advertisement of potential  backup paths, reduced routing churn.                                 |
|  CZ.NIC         |  (iBGP) route reflector / RR client,  (eBGP) route server / RS client, use cases where paths are distributed  for other purposes than filling FIBs (like topology-aware CDNs).   |
|  freeRouter     |  route-reflector, route-server, ibgp, ebgp, confed                                                                                                                               |



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-03-12.*
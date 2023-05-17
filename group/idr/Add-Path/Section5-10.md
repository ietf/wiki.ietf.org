---
title: Add Path Section 5.10. Path Identifier Persistency
description: 
published: true
date: 2023-03-14T01:05:28.747Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:01:34.206Z
---


 Functionality Description: "As the Path Identifiers are locally assigned, and may or may not be persistent across a control plane restart of a BGP speaker..."

   Are the path identifiers persistent across control plane restarts in your implementation?
   
   RFC2119: N/A

|  Implementation |   Yes or No or Other    |      Comment    |
|-----------|---------|--------------------------------------------------|
| Cumulus   |  No     |                                                  |                               
|  Cisco    |   No    |  XE-BGP-ADD-Paths need to have HA enhancements   |
|  Exa      |  Other  |  User controlled       				|
|  Juniper  |  Other  |  In the case of the  BGP graceful restart feature, path IDs are not persistent. In the case  of the JUNOS Non-stop Routing feature, they persist.         |
|       ALU |  No     |   With high availability (HA) the path IDs are persistent if there is  still one remaining control card after reset/failure of the other  control card.   |
{.dense}

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-19. It was migrated from the old Trac wiki on 2023-02-17.*
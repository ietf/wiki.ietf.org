---
title: IX-RS Section 2.1
description: 
published: true
date: 2023-03-13T05:13:45.374Z
tags: 
editor: markdown
dateCreated: 2023-03-13T05:11:54.830Z
---

# IXP Route Server

From draft-ietf-idr-ix-bgp-route-server

Functionality:

 -   A route server MUST accept all UPDATE messages received from each of its clients for inclusion in its Adj-RIB-In. 

 -   These UPDATE messages MAY be omitted from the route server's Loc-RIB or Loc-RIBs, due to filters configured for the purposes of implementing routing policy. 

 -   The route server SHOULD perform one or more BGP Decision Processes to select routes for subsequent advertisement to its clients, taking into account possible configuration to provide multiple NLRI paths to a particular client as described in Section 2.3.2.2 or multiple Loc- 

RIBs as described in Section 2.3.2.1.

  -  The route server SHOULD forward UPDATE messages where appropriate from its Loc-RIB or Loc-RIBs to its clients. 
  
  |  implementation  |  MUST Accept  |  MAY Omit based on Policy  |  SHOULD 2.3.2.1 or 2.3.2.2  |  SHOULD forward   |
|------------------|---------------|----------------------------|-----------------------------|-------------------|
|  Cisco           |  Yes          |  Yes                       |  Yes                        |  Yes              |
|  BIRD            |  Yes          |   Yes                      |  Yes                        |  Yes              |
|  Quagga          |  Yes          |  Yes                       |  Yes                        |  Yes              |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-08-24. It was migrated from the old Trac wiki on 2023-03-12.*
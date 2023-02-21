---
title: Add Paths Section 5.9 Bestpath
description: 
published: true
date: 2023-02-21T06:15:13.524Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:15:13.524Z
---



  Functionality Description: "A BGP speaker SHOULD include the bestpath when more than one path are advertised to a neighbor unless the bestpath is a path received from that neighbor."

   Does your implementation include the bestpath when multiple paths are announced to a neighbor, as described?

   RFC2119: SHOULD

Implementation Yes or No or Other Comment 

|            |         |                                                         |
|------------|---------|---------------------------------------------------------|
| Cumulus    |  Yes    |                                                         |
|  Cisco     |  Yes    |                                                         |
|  Exa       |  Other  |  ExaBGP does not have a FIB, this is user controlled.   |
|  Juniper   |  Yes    |                                                         |
|  ALU       |  Yes    |                                                         |
|  CZ.NIC    |  Yes    |                                                         |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*

---
title: Add Paths Section 5.4 Send and Receive Logic
description: 
published: true
date: 2023-02-21T06:06:15.543Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:06:15.543Z
---

 Functionality: "For a BGP speaker to be able to send multiple paths to its peer, that BGP speaker MUST advertise the ADD-PATH capability with the Send-Receive field set to either 2 or 3, and MUST receive from its peer the ADD-PATH capability with the Send or Receive field set to either 1 or 3, for the corresponding (AFI, SAFI)."

Does your implementation follow the send/receive logic as specified in this section?

 RFC2119: MUST

| Implementation  |  Yes or No  |  Comment   |
|-----------------|-------------|------------|
|      Cumulus    |  yes        |            |
|  Cisco          |  Yes        |            |
|  Exa            |  Yes        |            |
|  Juniper        |  Yes        |            |
|  ALU            |  Yes        |            |
|  CZ.NOC         |  Yes        |            |
|  freeRouter     |  Yes        |            |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*
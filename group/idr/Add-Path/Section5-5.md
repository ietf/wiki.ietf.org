---
title: Add Paths Section 5.5 Update Procedure
description: 
published: true
date: 2023-02-21T06:08:26.813Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:08:21.604Z
---

 Functionality: "A BGP speaker MUST follow the existing procedures in generating an UPDATE message for a particular <AFI, SAFI> to a peer unless the BGP speaker advertises the ADD-PATH Capability to the peer indicating its ability to send multiple paths for the <AFI, SAFI>, and also receives the ADD-PATH Capability from the peer indicating its ability to receive multiple paths for the <AFI, SAFI>..."

Does your implementation follow normal procedures when generating UPDATES if the ADD-PATH capability is not sent and received?

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

---
title: Add Paths 5.6 Update Procedure with encoding
description: 
published: true
date: 2023-02-21T06:10:40.815Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:10:40.815Z
---

 Functionality Description: "...in which case the speaker MUST generate a route update for the <AFI, SAFI> based on the combination of the address prefix and the Path Identifier, and use the extended NLRI encodings specified in this document."

If the ADD-PATH capability has been sent and received, does your implementation generate new UPDATEs using the (prefix, path identifier) pair and the encodings defined in this document?

  RFC2119: MUST

| Implementation  |  Yes or No or Other   |  Comment                    |
|-----------------|-----------------------|-----------------------------|
|  Cumulus        |  Other                |   TX is not supported yet   |
|  Cisco          |  Yes                  |                             |
|  Exa            |  Yes                  |                             |
|  Juniper        |  Yes                  |                             |
|  ALU            |  Yes                  |                             |
|  CZ.NIC         |  Yes                  |                             |
|  freeRouter     |  Yes                  |                             |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*

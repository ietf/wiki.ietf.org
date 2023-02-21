---
title: ADD Path Section 5.7: Multiple Address Family Support
description: 
published: true
date: 2023-02-21T06:12:08.725Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:12:08.725Z
---



  Functionality Description: "The peer SHALL act accordingly in processing an UPDATE message related to a particular <AFI, SAFI>."

  Does your implementation support the use of the ADD-PATH capability for multiple <AFI, SAFI> pairs?

  [RFC2119: SHALL

| Implementation  |  Yes or No or Other   |  Comment                                                                                                                      |
|-----------------|-----------------------|-------------------------------------------------------------------------------------------------------------------------------|
|  Cumulus        |  Yes                  |                                                                                                                               |
|  Cisco          |  Yes                  |                                                                                                                               |
|  Exa            |  Yes                  |                                                                                                                               |
|  Juniper        |  Yes                  |                                                                                                                               |
|      ALU        |  Yes                  |                                                                                                                               |
|  CZ.NIC         |  Other                |  BIRD currently does not support multiple pairs in one connection, separate connection is used for IPv4 and IPv6 (unicast).   |
|  freeRouter     |  Yes                  |                                                                                                                               |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*

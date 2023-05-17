---
title: Section 7: Deployment Considerations
description: 
published: true
date: 2023-03-13T07:59:50.516Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:59:45.463Z
---

# Add Path: Deployment Experience

  Functionality/Description?: Please comment on deployment experience with your implementation.

  RFC2119: N/A

| Implementation  |  Comments                                                                                                                                                                                                                                                          |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Cumulus        |                                                                                                                                                                                                                                                                    |
|  Cisco          |                                                                                                                                                                                                                                                                    |
|  Exa            |  Cisco routers exporting ADD-PATH routes  to ExaBGP, routes are then stored in a distributed Database. A complex  best path selection (including latency) is performed on the stored  routes, and the best routes are then re-injected in the core via ExaBGP.     |
|  Juniper        |                                                                                                                                                                                                                                                                    |
|  ALU            |                                                                                                                                                                                                                                                                    |
|  CZ.NIC         |                                                                                                                                                                                                                                                                    |
|  freeRouter     |                                                                                                                                                                                                                                                                    |




&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-03-12.*
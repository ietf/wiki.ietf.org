---
title: Add Path Section 5.11 Graceful Restart
description: 
published: true
date: 2023-02-21T06:18:09.609Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:18:09.609Z
---



   Functionality Description: "...an implementation SHOULD take special care so that the underlying forwarding plane of a "Receiving Speaker" as described in [RFC4724] is not affected during the graceful restart of a BGP session."

   Please explain how your implementation addresses Graceful Restart.

   [RFC2119]: SHOULD


| Implementation  |  Comments                                                                                                                                                                                                                     |
|-----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Cumulus         |  Quagga has  partial GR support (it is GR aware for other restarting nodes) but does  not maintain the forwarding plane during a restart.                                                                                     |
|  Cisco          |  XE-BGP-ADD-Paths need to have HA enhancements                                                                                                                                                                                |
|  Exa            |  No FIB, not relevant                                                                                                                                                                                                         |
|  Juniper        |  During BGP graceful restart  procedures, the receiving speaker ignores the path-id for purposes of  identifying a matching route.  Once a refreshed route has been  correlated to a previous path, the path-id is updated.   |
|  ALU            |  Graceful restart is supported for the  receiving router role so by definition graceful restart does not affect  the forwarding plane.                                                                                        |
|  CZ.NIC         |  FIB is not modified until initial graceful restart phase is finished.                                                                                                                                                        |
|  freeRouter     |  FIB not modified until graceful restart finished                                                                                                                                                                             |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*

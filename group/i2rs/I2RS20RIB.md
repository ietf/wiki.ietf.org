---
title: I2RS RIB Module
description: 
published: true
date: 2023-01-22T03:16:09.541Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:16:05.069Z
---

# I2RS RIB Module 
## Main unit: Route (section 2.3)
- access read/write
- query rate: ms per route
- notification 1: route-change, ms per change
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-10K per second
- large grouping : 100K to 1 Million at 1-5 second
## sub unit: Next-hop (section 2.4)
- access read/write ,
- query rate: ms per nexthop
- notification 2: nexthop-resolution-status-change, ms per change
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-10K per second
- large grouping: 100K to 1 Million at 1-5 second
## grouping unit: RIB (section 2.2)
- access: read/write
- query rate: highest initial start-up
- notification: none
- normal grouping: 1-20 RIB (10K to 100K routes per RIB)
- large grouping: 100-300 RIBs (10K to 100K routes per RIB)
- grouping unit: List of RIB (section 2.1)
- access: read/write
- query rate: highest at initial start-up
- notification: none
- normal grouping: 1 list of 1-20 RIBS (10 to 100K routes per RIB)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-18. It was migrated from the old Trac wiki on 2023-01-21.*
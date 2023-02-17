---
title: I2RS FB RIB
description: 
published: true
date: 2023-01-22T03:01:59.525Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:01:54.865Z
---

# I2RS Filter-Based RIB Requirement 
## Main unit: policy-rule (section 4.2)
- access: Client (read or write) into ordered list
- access: Routing system inserts into ordered list (write)
- query rate: second per policy-rule
- notification: fb-policy-rule-event
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-10K rules less than second)
- large grouping : TBD
## Main unit: FB-ordered-list (section 4.1-4.3)
- access: Client (read or write) into ordered list
- access: Routing system: changes into ordered list
- query rate: ms per list
- notification: fb-ordered-list-event
- logging rate: less than per ordered list
- reference level: high
- normal grouping: 1-1K per second
- large grouping: TBD
## grouping unit: FB-RIB (section 4.1 to 4.3)
- description: RIB contains list of order lists and interface list
- access: Client (read or write)
- access: Routing system (write)
- notification: FB-RIB change
- logging rate: less than
## grouping sub-unit: interface list
- description: interfaces filter-based RIB operates on
- access: Client (read or write) or routing system to Agent (write)
- query rate: TBD
- notification: (need to add)
- normal grouping: 1-10K per second
- large grouping: TBD
## grouping node sub-sub-unit: interface on interface list
- access: Client (read or write) or routing system to Agent (write)
- query rate: ms per interface
- notification: (need to add)
- normal grouping: TBD
- large grouping: TBD
## grouping node
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-18. It was migrated from the old Trac wiki on 2023-01-21.*

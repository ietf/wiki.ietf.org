---
title: I2RS L3 Topology
description: 
published: true
date: 2023-01-22T03:09:42.937Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:09:38.743Z
---

# I2RS L3 Topology Module 
## Main unit: Node (section 3.1)
- access: Client (read or write) or routing system to agent (write)
- query rate: ms per node
- notification: igp-node-event
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-5K per second
- large grouping : TBD
## Main unit: link (section 3.2)
- access: Client (read or write) or routing system to Agent (write)
- query rate: ms per link
- notification: igp-link-event
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-5K per second
- large grouping: TBD
## grouping unit: network (section 3.1 to 3.2)
- access: Client (read or write) or routing system to Agent (write)
- query rate:
- notification: igp-prefix-event
- normal grouping:
- large grouping: TBD
## grouping sub-unit: termination-point (section 3.1 to 3.2)
- access: Client (read or write) or routing system to AGent (write)
- query rate:
- notification: termination-point-event
- normal grouping: 1-10K per second
- large grouping: TBD
## grouping node sub-unit: termination-point (section 3.1 to 3.2)
- access: Client (read or write) or routing system to AGent (write)
- query rate:
- notification: termination-point-event
- normal grouping: 1-10K per second
- large grouping: TBD
## grouping node sub-unit: prefix
- access: Client (read or write) or routing system to Agent (write)
- query rate:
- notification: igp-prefix-event
- normal grouping: 1-10K per second
- large grouping: TBD
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-18. It was migrated from the old Trac wiki on 2023-01-21.*
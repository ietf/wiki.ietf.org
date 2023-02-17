---
title: I2RS Generic Topology
description: 
published: true
date: 2023-01-22T03:13:33.098Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:13:29.416Z
---

# I2RS Generic Topology 
## Main unit: Node (section 3.1)
- access: Client (read or write) or routing system to agent (write)
- query rate: ms per node
- notification: none at generic level
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-5K per second
- large grouping : TBD
## Main unit: link (section 3.2)
- access: Client (read or write) or routing system to Agent (write)
- query rate: ms per link
- notification: none at generic level
- logging rate: ms to 100 ms per change
- reference level: very high
- normal grouping: 1-5K per second
- large grouping: TBD
## grouping unit: network (section 3.1 to 3.2)
- access: Client (read or write) or routing system to AGent (write)
- query rate:
- notification: none
- normal grouping: 1-1000 per second
- large grouping: TBD
## grouping sub-unit: termination-point (section 3.1 to 3.2)
- access: Client (read or write) or routing system to AGent (write)
- query rate:
- notification: none
- normal grouping: 1-10K per second
- large grouping: TBD
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-18. It was migrated from the old Trac wiki on 2023-01-21.*

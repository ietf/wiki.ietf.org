---
title: MibIss025
description: 
published: true
date: 2023-01-26T02:46:12.074Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:46:08.564Z
---

# NAT MIB v2 Issue 025: Review natNotifPoolWatermarkLow and WatermarkHigh and use of derived values 
**Source:** DBH review, comment 24.

**Details:**

24) natNotifPoolWatermarkLow and WatermarkHigh

We usually try to not use derived values in MIB modules. We try to keep the agent simple, and push complexity toward the NMS, which normally has far more resources available. When you set a watermark/threshold as a percentage, then the system needs to use CPU cycles to calculate the percentage - CPU cycles that might be better used forwarding packets.

The calculations you expect are rather complex - you require summing (allocations - deallocations) over all address ranges, then dividing by the total number of ip addresses in the poll and by the size of the port rang (calculated by portmax-portmin+1).

I'm not sure that that formula is unambiguous; is that (sum(allocations-deallocation)/ipaddresses)/portrange or am I calculating something with (ip addresses and size of portrange) before dividing? Can you use parentheses or something?

How often should this complex calculation be done to monitor the percentage versus the threshold? Should this be re-calculated *every time* one of the following changes: allocation or deallocation across any address range, total number of ip addresses, or size of the port range? (and of course, the watermark setting).

Wow! That seems like a lot of CPU cycles.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*


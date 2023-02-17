---
title: MibIss011
description: 
published: true
date: 2023-01-26T03:21:58.773Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:22:27.474Z
---

# NAT MIB v2 Issue 011: Review whether two-level hierarchy needed for natPoolObjects, natPoolRangeTable 
**Source:** Tracker: [#17](https://wiki.ietf.org/en/group/behave/MibIss009/ticket17).

**Details:**

natPoolTable does not include natPoolRangeTable, which gives an address range for addresses allocated to the pool. A natPoolRangeTable row points to the pool to which it has been allocated.

**Discussion:**

A pool can be given multiple non-adjacent address ranges. The current arrangement provides this flexibility. Proposed to keep it as it is.

**Resolution:**

While reviewing this issue, determined that the INDEX clause for natv2PoolRangeTable needs correction. Should be INDEX { natv2InstanceIndex, natv2PoolIndex, natv2PoolRangeIndex }.

In addition, noted that address type (natPoolRangeType) is a property of the pool, not individual ranges, hence moves up to pool level as natv2PoolAddressType.

Finally, decided that port allocation should be counted at pool level rather than per range. Really only need number of ports actively in use, which is equal to the number of active address and port maps mapped into the pool. Hence delete natPoolRangeAllocations and natPoolRangeDeallocations from natv2PoolRangeTable and add natv2PoolAddressPortMapActives to natPoolTable.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-31. It was migrated from the old Trac wiki on 2023-01-25.*
---
title: MibIss022
description: 
published: true
date: 2023-01-26T02:41:33.849Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:41:29.319Z
---

# NAT MIB v2 Issue 022: Review whether table row reuse a concern when a mapping is removed 
**Source:** DBH review, comment 21.

**Details:**

Is it important to not reuse an index value to make sure that the NMS doesn't associate previously acquired data with a new mapping? (This is important, for example, if ifIndex changes during a reboot, because an NMS could take data associated with an old ifIndex and confuse it as being associated with a new ifIndex, and totally misinterpret trends, and so on. Other MIB modules need to protect against reuse of an index value, at least for some period of time, or until rollover.)

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
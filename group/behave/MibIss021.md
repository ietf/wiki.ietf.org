---
title: MibIss021
description: 
published: true
date: 2023-01-26T02:39:29.675Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:39:25.999Z
---

# NAT MIB v2 Issue 021: Describe which table natNotifMappings refers to and why it is provided 
**Source:** DBH review, comment 21.

**Details:**

21) natNotifMappings - the relationship between the notification and thresholds is clear. The relationship to "which mappings" is a bit less clear. I see a natMapIntAddrTable, and a natMappingTable; which one is related to natNotifMappings? (and is the savings from dropping the y from notify significant?)

I assume the fact we are sending a notification means it is important for the operator to know right away when "active exceeds threshold" happens. have to guess that this might be related to memory/resource management. But I have to guess because nothing is said about why these particular values are tracked.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
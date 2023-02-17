---
title: MibIss033
description: 
published: true
date: 2023-01-26T02:58:50.256Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:58:46.694Z
---

# NAT MIB v2 Issue 033: Remove dependencies on calculated values 
**Source:** DBH review, comments 21, 22, 24, 37.

**Details:**

Earlier comments already reported.

37) natSubscriberLimitMappings - again, we should avoid calculated objects. This depends on "active" mappings, which is a calculated value.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-18. It was migrated from the old Trac wiki on 2023-01-25.*
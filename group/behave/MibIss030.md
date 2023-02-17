---
title: MibIss030
description: 
published: true
date: 2023-01-26T02:54:16.750Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:54:12.504Z
---

# NAT MIB v2 Issue 030: Redo subscriber identifier as sparse augments table 
**Source:** DBH review, comment 34.

**Details:**

34) do the existence of fields natSubscriberVlanIdentifier, natSubscriberVpnIdentifier, natSubscriberIPEncapsIdType, and natSubscriberIPEncapsIdAddr depend on the value of natSubscriberIdentifierType? If so, then it might be better to define this as a sparse augments table. Let me know, and I'll check with the MIB Doctors list about the best way to do this.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
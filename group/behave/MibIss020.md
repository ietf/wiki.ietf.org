---
title: MibIss020
description: 
published: true
date: 2023-01-26T02:38:02.799Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:37:58.548Z
---

# NAT MIB v2 Issue 020: Review whether to track creations and removals or just active mappings 
**Source:** DBH review, comment 20.

**Details:**

20) natNotifMappings

Typically we try to not derive values when defining objects. For example, RFC4188 states as a principle: "Exclude objects that are simply derivable from others in this or other MIB modules." But natNotifMappings is triggered when "the number of active mappings exceeds the value of natMappingsNotifyThreshold" But we don't actually track active mappings; we track creations and removals, and we calculate active by subtracting removals from creations (active=creations-removals). If you want to use active against the threshold, why not simply track active and skip tracking creations and removals?

Is there a reason to track creations and removals? If the maximum number of creations performed is important (maybe for memory management or something?), then why not track creations and active and let somebody else calculate the removals (removals=creations-active)? If the number of removals is important (I have no idea why), then you can track active and removals, and let somebody else calculate (creations=active+removals) This way a notification doesn't have to wait to calculate active.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
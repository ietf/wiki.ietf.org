---
title: MibIss008
description: 
published: true
date: 2023-01-26T03:18:52.485Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:17:06.728Z
---

# NAT MIB v2 Issue 008: Operational considerations needed re use of old and new versions 
**Source:** Tracker: [#16](https://wiki.ietf.org/en/group/behave/MibIss006/ticket16) comment 3.

**Details:**

3) I notice there is no "Operational Considerations" section. I wonder if one is called for here, because operators may be faced with NMS applications and/or agents that support both the deprecated and the new MIB module. What should operators (and NMS applications) do with this potentially conflicting information? What should they explicitly NOT do? E.g., What assumptions should they NOT make about the relationships between specific objects in the old and new versions?

My impression is that the old and the new MIB modules might be appropriate depending on the environment in which they exist, and the old MIB is implemented (to whatever degree of compliance) in existing legacy devices, so simply saying "never use the old MIB" is not going to be an acceptable approach.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-14. It was migrated from the old Trac wiki on 2023-01-25.*
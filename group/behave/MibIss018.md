---
title: MibIss018
description: 
published: true
date: 2023-01-26T02:34:02.528Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:33:58.936Z
---

# NAT MIB v2 Issue 018: Simplify REFERENCE for NatPoolingType 
**Source:** DBH review, comment 10.

**Details:**

10) NatPoolingType is only used to define the type of one object. The description clause in the object is indirect - "Type of address pooling behavior that was used to create this mapping." To understand this object, you need to look at the textual convention. But the textual convention is also indirect - "Pooling type as described in [RFC4787] sections 4.1." Even looking at RFC4787 section 4.1 isn't immediately helpful, because the discussion of arbitrary versus paired is a subset of section 4.1 (that is not called out as a subsection); it is found in the one-paragraph explanatory text for REQ-2. A short description in the OBJECT description clause could be made from a couple sentences from section 4.1, supplemented with a REFERENCE clause, which would be much easier for users than the current indirect-indirect-someplace-in-this-text approach.
**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-16. It was migrated from the old Trac wiki on 2023-01-25.*
---
title: MibIss015
description: 
published: true
date: 2023-01-26T02:29:54.409Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:29:50.362Z
---

# NAT MIB v2 Issue 015: Improve descriptions within the MIB itself 
**Source:** DBH review, summary, comments 9, 22, 23, 31 explicitly and others implicitly.

**Details:**

Some of the descriptions in the module are sparse, while the surrounding text contains a better description. But MIB modules are frequently distributed without the surrounding RFC text. This will make the MIB harder for operators to use in the field.

9) natBehaviorType has only a reference in the description. In general it is better to actually have a description in the description clause and provide the reference in the REFERENCE clause. This is not merely an academic nit. Because GUI-based NMSs frequently display the Description clause in a window so the user can understand the meaning of the object, it is important that the description actually explain the meaning. Providing a reference in the description implies that the user would then need to go find the RFC and find the section of the RFC, and read the whole section to understand what this object means. Not very helpful.

On top of that, an NMS might know how to track down an RFC and provide a link to the document in the REFERENCE clause, but it wouldn't necessarily know to parse the DESCRIPTION clause to find the reference.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-15. It was migrated from the old Trac wiki on 2023-01-25.*
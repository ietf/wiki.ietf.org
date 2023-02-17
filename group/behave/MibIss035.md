---
title: MibIss035
description: 
published: true
date: 2023-01-26T03:01:51.287Z
tags: 
editor: markdown
dateCreated: 2023-01-26T03:01:47.227Z
---

# NAT MIB v2 Issue 035: Improve description of natSubsInterfaceIdRowIndex 
**Source:** DBH review, comment 42.
**
Details:**

42) natSubsInterfaceIdRowIndex - the description is "Row index." There is no description of why this is being defined, or what it is expected to be used for.

The T-C has a better explanation of its uniqueness and its assignment to rows, but no description of why it is needed. It might have been better explained in the natSubsInterfaceIdentifierEntry description, where it is used in the INDEX. But I don't understand the description there - "Each entry provides a single interface index." Can you provide an example of how this table works?

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-18. It was migrated from the old Trac wiki on 2023-01-25.*
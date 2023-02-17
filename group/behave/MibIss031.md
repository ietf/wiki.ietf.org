---
title: MibIss031
description: 
published: true
date: 2023-01-26T02:55:40.051Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:55:36.175Z
---

# NAT MIB v2 Issue 031: Specify values for unused subscriber identifiers 
**Source:** DBH review, comment 35.

**Details:**

35) natSubscriberIdentifierType

"Unused identifier values MUST be zero or equivalent". I think this is under-specified. I think the zero-equivalents should be specified here for each type. When the type is none(0), and the identifier is "none", does this mean the identifier field is not implemented, or has a zero value or empty string or what?

Which of these is the zero equivalent?

The TC SubscriberIdentifierType says the interfaces(1) type means the identifier is a set of one or more interface indexes. What is the zero-equivalent of a set of one or more interface indexes?

!VPNIdorZero says

"The semantics of the value zero-length OCTET STRING are object-specific and must therefore be defined as part of the description of any object that uses this syntax."

So presumably, the zero equivalent is a zero-length OCTET STRING. But the description here does not define the semantics of the zero-length string; it only implies the semantics. And for other(5), we have no idea what a zero-equivalent is.
**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
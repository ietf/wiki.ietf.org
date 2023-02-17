---
title: MibIss009
description: 
published: true
date: 2023-01-26T03:20:36.729Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:18:56.875Z
---

# NAT MIB v2 Issue 009: Review all names taking account of criteria in Tickets: #17, RFC 4181, and details of DBH review 
**Source:** Tracker: [#17](ticket17), DBH review comments 5, 13, 14, 15, 16, 17, 32, 33, 38, 41.

**Details:**

**Summarizing:**

Avoid abbreviations, but if they are used, be consistent.

In general, be consistent in the structure of names.

Identify counters by ending the names with "s". Drop the "Cnt" from existing names.

Meaningful descriptors are preferred.

The descriptor associated with the MODULE-IDENTITY invocation should be of the form xxxMIB, xxxMib, or xxxMibModule, where xxx is a mixed-case version of XXX starting with a lowercase letter and without any hyphens.

Other descriptors within the MIB module should start with the same prefix xxx.

Names of TCs that are specific to the MIB module and names of SEQUENCE types that are used in conceptual table definitions should start with a prefix Xxx that is the same as xxx but with the initial letter changed to uppercase.

The descriptor associated with a conceptual table should be of the form xxxZzzTable; the descriptor associated with the corresponding conceptual row should be of the form xxxZzzEntry; the name of the associated SEQUENCE type should be of the form XxxZzzEntry; and the descriptors associated with the subordinate columnar objects should be of the form xxxZzzSomeotherName.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-14. It was migrated from the old Trac wiki on 2023-01-25.*
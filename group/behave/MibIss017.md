---
title: MibIss017
description: 
published: true
date: 2023-01-26T02:32:39.827Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:32:35.709Z
---

# NAT MIB v2 Issue 017: Expand upon interaction between realms and SNMPv3 views in NAT MIB 
**Source:** DBH review, comment 3.
**
Details:**

3) Section 3.3 explains that implementations of MIB modules that implicitly support realms (e.g., OSPFv2-MIB), and utilize SNMPv3 contexts (or presumably communities in community-based SNMP) in an SNMP-standard compliant manner, will no longer be able to do things in those standard-compliant manners, because the NAT-MIB design spans realms.

This I-D should list the names and references for the "many MIBs" that "implicitly support realms in one form or another" that may be broken by this NAT-MIB's usage of realm. I suggest an "Operational Considerations" section for this information. I think the IETF community needs to better understand this claim before approving this document
**Discussion:**

[TomT 9/10/2014] This appears to be a mis-reading of the Section 3.3 text, which actually says that the NAT MIB can't use the same approach as the other MIB modules because of its realm-spanning nature.

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-16. It was migrated from the old Trac wiki on 2023-01-25.*
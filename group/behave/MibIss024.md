---
title: MibIss024
description: 
published: true
date: 2023-01-26T02:44:45.003Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:44:40.336Z
---

# NAT MIB v2 Issue 024: For natpoolRealm, provide REFERENCE for RFC text defining realm 
**Source:** DBH review, comment 23.

**Details:**

23) natpoolRealm - "Realm to which this pool's addresses belong."

MIB modules are often distributed without the surrounding text from the RFC. So it is important to be sure the description is meaningful without the whole RFC being present. At a minimum, especially since you are defining realm in this document, you should provide a REFERENCE to the text in this RFC that contains the definition for realm.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
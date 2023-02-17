---
title: MibIss027
description: 
published: true
date: 2023-01-26T02:49:55.694Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:49:51.436Z
---

# NAT MIB v2 Issue 027: Correct description of natMappingTable
**Source:** DBH review, comment 29.

**Details:**

29) natMappingTable - "Table of mappings indexed by external 3-tuple." I'm not sure this is accurate, given
```
       INDEX { natInstanceIndex,
               natMappingProto,
               natMappingExtRealm,
               natMappingExtAddressType,
               natMappingExtAddress,
               natMappingExtPort }
 ```
**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-17. It was migrated from the old Trac wiki on 2023-01-25.*
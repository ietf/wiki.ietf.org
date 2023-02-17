---
title: MibIss013
description: 
published: true
date: 2023-01-26T02:26:47.859Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:26:42.703Z
---

# NAT MIB v2 Issue 013: Review change of realm to SNMPAdminString in new version 
**Source:** DBH review, comment 2.

**Details:**

2) This new I-D is redefining a term "realm" that is defined in the original NAT-MIB. (see section 3.3). [RFC4008](http://tools.ietf.org/html/rfc4008) defined realm objects to be of type INTEGER, but the new NAT-MIB defines realm objects as SnmpAdminStrings. An NMS (and operators) need to be able to support devices that implement the "old" NAT-MIB and devices that implement the "new" NAT-MIB. With this new NAT-MIB, an NMS user must be aware when they look at the description of a realm-related object, whether that object was defined in the [RFC4008](http://tools.ietf.org/html/rfc4008) NAT-MIB or in the < new RFC > NAT-MIB, in order to understand which meaning and datatype of the term "realm" applies But since [RFC4008](http://tools.ietf.org/html/rfc4008) is updated by being deprecated in the same document, in the same-named MIB module, the reader of the new NAT-MIB must determine whether the object was defined in the first half of this document, i.e., the first half of the NAT-MIB, i.e., the "old" deprecated NAT-MIB, or in the second half of this document, to understand the meaning of the word realm. I think this is problematic.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-15. It was migrated from the old Trac wiki on 2023-01-25.*
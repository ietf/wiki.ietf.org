---
title: MibIss012
description: 
published: true
date: 2023-01-26T03:22:49.448Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:24:08.936Z
---

# NAT MIB v2 Issue 012: natAddrPortBindLocalAddr redefined in new document 
**Source:** Tracker: [#18](ticket18).

**Details:**

natAddrPortBindLocalAddr - the one being deprecated - is redefined in the new document. The original had InetAddress? syntax with no range; the new doc adds a range (thereby redefining the range). I think this violates SMI rules (but it deserves checking to be sure).
**Discussion:**

This appears as a matter od record only, so that Tracker: #18 can be closed.

**Resolution:**

Fixed in later versions.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-15. It was migrated from the old Trac wiki on 2023-01-25.*
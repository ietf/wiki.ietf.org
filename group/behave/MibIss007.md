---
title: MibIss007
description: 
published: true
date: 2023-01-26T03:18:18.438Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:15:31.504Z
---

# NAT MIB v2 Issue 007: Update security considerations due to potential coexistence of old and new versions TC 
**Source:** Tracker: [#16](https://wiki.ietf.org/en/group/behave/MibIss006/ticket16) comment 2.

**Details:**

2) Since deprecated objects are not obsoleted, I think new security considerations might be called for relating to the deprecated objects - especially if there are security implications of implementing BOTH the current and deprecated objects.

Some NMS applications will support only the old MIB module; others may support only the new MIB module. Some agents will want to implement both, to make their devices manageable from either type of NMS application. Some NMS applications will want to support both, to deal with both legacy and new agents.

MIB modules often make information available that could potentially be used by attackers. Are there particular risks involved in exposing the information of these two NAT-MIBs in combination? Are there potential risks associated with the potential confusion of looking at a NAT from the different perspectives used by these two NAT MIB approaches?

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-14. It was migrated from the old Trac wiki on 2023-01-25.*
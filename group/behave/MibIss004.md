---
title: MibIss004
description: 
published: true
date: 2023-01-26T03:14:06.189Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:06:33.199Z
---

# NAT MIB v2 Issue 004: Inconsistency between natMappingPool syntax and natPoolId TC 
**Source:** Tracker: [#15](https://wiki.ietf.org/en/group/behave/MibIss001/ticket15) comment 4.

### Details:

4) The MIB compiler I used complained about this:

natMappingPool OBJECT-TYPE

SYNTAX NatPoolId (0|1..4294967295)

Because of

NatPoolId ::= TEXTUAL-CONVENTION

SYNTAX Unsigned32 (1..4294967295)

That is, NatPoolId does not allow 0, and so natMappingPool cannot add it and still use the NatPoolId syntax.

### Discussion:

This issue appears as a matter of form only, so that Ticket: [#15](https://wiki.ietf.org/en/group/behave/MibIss001/ticket15) can be closed out.

### Resolution:

Fixed in later versions.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-10-14. It was migrated from the old Trac wiki on 2023-01-25.*
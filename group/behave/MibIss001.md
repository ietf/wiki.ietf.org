---
title: MibIss001
description: 
published: true
date: 2023-01-26T03:12:34.848Z
tags: 
editor: markdown
dateCreated: 2023-01-25T03:47:42.293Z
---

# NAT MIB v2 Issue 001: Missing list of tables in Security Considerations
Source: Ticket: [#15](https://wiki.ietf.org/en/group/behave/MibIss001/ticket15) comment 1.

Details:

1) Section 5 of the current draft has:

Some of the readable objects in this MIB module (i.e., objects with a MAX-ACCESS other than not-accessible) may be considered sensitive or vulnerable in some network environments. It is thus important to control even GET and/or NOTIFY access to these objects and possibly to even encrypt the values of these objects when sending them over the network via SNMP."

Per http://trac.tools.ietf.org/area/ops/trac/wiki/mib-security that's supposed to be followed with:

These are the tables and objects and their sensitivity/vulnerability:

< list the tables and objects and state why they are sensitive >

...

Discussion:

This issue appears as a matter of form only, so that Ticket: [#15](https://wiki.ietf.org/en/group/behave/MibIss001/ticket15) can be closed out.

Resolution:

Fixed in later versions
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-13. It was migrated from the old Trac wiki on 2023-01-24.*
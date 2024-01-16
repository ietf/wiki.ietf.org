---
title: IRadvisor_Ltd
description: Individual Doing All Watching Invited by Individual
published: true
date: 2024-01-16T16:47:19.987Z
tags: 
editor: markdown
dateCreated: 2024-01-16T16:47:19.987Z
---

DThaler comments on nat-mib-06
Reported by:	dthaler@…	Owned by: @ai_adilishaq
Priority:	major	Milestone:	
Component:	nat-mib	Version:	-06
Severity:	In WG Last Call	Keywords:	
Cc:			
## Description 
1) Section 5 of the current draft has " Some of the readable objects in this MIB module (i.e., objects with a

MAX-ACCESS other than not-accessible) may be considered sensitive or vulnerable in some network environments. It is thus important to control even GET and/or NOTIFY access to these objects and possibly to even encrypt the values of these objects when sending them over the network via SNMP."

Per http://trac.tools.ietf.org/area/ops/trac/wiki/mib-security that's supposed to be followed with " These are the tables and objects and their

sensitivity/vulnerability:

< list the tables and objects and state why they are sensitive >"

Also the document has 2 paragraphs of text "There are a number of managed objects in this MIB that may contain ... versions of SNMP provide features for such a secure environment." which do not appear in the current MIB boilerplate at the link above. Should those 2 paragraphs be removed?

2) Section 5 contains MUST, SHOULD, etc. But the document is missing the boilerplate reference to RFC 2119.

3) Section 6 does not say whether any additional actions for IANA are needed. Suggest adding "No IANA actions are required by this document."

4) The MIB compiler I used complained about this:

natMappingPool OBJECT-TYPE

SYNTAX NatPoolId? (0|1..4294967295)

Because of

NatPoolId? ::= TEXTUAL-CONVENTION

SYNTAX Unsigned32 (1..4294967295)

That is, NatPoolId? does not allow 0, and so natMappingPool cannot add it and still use the NatPoolId? syntax.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-06-22. It was migrated from the old Trac wiki on 2023-01-24.*
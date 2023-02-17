---
title: Ticket18
description: 
published: true
date: 2023-01-26T03:23:44.223Z
tags: 
editor: markdown
dateCreated: 2023-01-26T03:23:40.900Z
---

# SMI violation in nat-mib-06
Reported by:	ietfdbh@…	Owned by:	draft-ietf-behave-nat-mib@…
Priority:	major	Milestone:	
Component:	nat-mib	Version:	-06
Severity:	In WG Last Call	Keywords:	
Cc:			
## Description 
natAddrPortBindLocalAddr - the one being deprecated - is redefined in the new document. The original had InetAddress? syntax with no range; the new doc adds a range (thereby redefining the range). I think this violates SMI rules (but it deserves checking to be sure).
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-06-22. It was migrated from the old Trac wiki on 2023-01-25.*
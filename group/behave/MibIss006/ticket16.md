---
title: Ticket16
description: 
published: true
date: 2023-01-26T03:16:08.101Z
tags: 
editor: markdown
dateCreated: 2023-01-26T03:16:03.216Z
---

# David Harrington comments on nat-mib-06
Reported by:	ietfdbh@…	Owned by:	draft-ietf-behave-nat-mib@…
Priority:	major	Milestone:	
Component:	nat-mib	Version:	-06
Severity:	In WG Last Call	Keywords:	
Cc:			
## Description 
1) A while back, I suggested that, if you are deprecating all of the NAT-MIB in rfc4008, that it would be better to do this as a separate document from the NEW-NAT-MIB (or whatever the new module gets called). Simon asked me to get consensus from the MIB Doctors.

I checked with the MIB Doctor list, and only got one reply - from Juergen, who apparently recommended a single document. His response: " I have probably been pushing them into this because at the beginning it was not really clear why the existing NAT-MIB is fatally flawed such that it needs a complete replacement. If the behave WG has meanwhile reached consensus that indeed the existing NAT-MIB is fatally flawed and needs a complete replacement, then indeed what you suggest makes sense. I assume the WG has checked with those who have implementations of the existing NAT-MIB (if any) that they agree on a need for a complete new MIB."

2) Since deprecated objects are not obsoleted, I think new security considerations might be called for relating to the deprecated objects - especially if there are security implications of implementing BOTH the current and deprecated objects.

Some NMS applications will support only the old MIB module; others may support only the new MIB module. Some agents will want to implement both, to make their devices manageable from either type of NMS application. Some NMS applications will want to support both, to deal with both legacy and new agents.

MIB modules often make information available that could potentially be used by attackers. Are there particular risks involved in exposing the information of these two NAT-MIBs in combination? Are there potential risks associated with the potential confusion of looking at a NAT from the different perspectives used by these two NAT MIB approaches?

3) I notice there is no "Operational Considerations" section. I wonder if one is called for here, because operators may be faced with NMS applications and/or agents that support both the deprecated and the new MIB module. What should operators (and NMS applications) do with this potentially conflicting information? What should they explicitly NOT do? E.g., What assumptions should they NOT make about the relationships between specific objects in the old and new versions?

My impression is that the old and the new MIB modules might be appropriate depending on the environment in which they exist, and the old MIB is implemented (to whatever degree of compliance) in existing legacy devices, so simply saying "never use the old MIB" is not going to be an acceptable approach.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-06-22. It was migrated from the old Trac wiki on 2023-01-25.*
---
title: Ticket17
description: 
published: true
date: 2023-01-26T03:20:34.944Z
tags: 
editor: markdown
dateCreated: 2023-01-26T03:20:31.404Z
---

# nat-mib-06 abbreviations
Reported by:	ietfdbh@…	Owned by:	draft-ietf-behave-64-analysis@…
Priority:	major	Milestone:	
Component:	64-analysis	Version:	
Severity:	In WG Last Call	Keywords:	
Cc:			
## Description 
My experience is that operators find abbreviations irritating. "Let's see, was that spelled out as counter, or abbreviated as Cnt, or Cntr, ...?"

Counter names have often historically ended with an "s", which helps identify it as a counter.

I'm not convinced you need the extra hierarchy of natCounters and natLimits and natPoolObjects, but I can live with it.

Meaningful descriptors are preferred. Some NMS applications display the object name without a corresponding description, so meaningful object names help operators. Let's see, I wonder what natCntOOP means? The number of object-oriented programming counters? How about using natCntNoPorts instead?

Do you really need the "Cnt" in the names? Wouldn't natNoPorts suffice? natCntTranslates => natTranslations? natCntResource => natResourceErrors?

natCntStateMismatch => natStateMismatches? I also have concerns that this definition is ambiguous. You give an example rather than a clear description of what MUST and MUST NOT be counted in this counter. If the only thing that gets counted is incompatible flags, then name it natIncompatibleFlags. If other things are supposed to be counted, be explicit about WHAT gets counted in this counter. Ambiguity leads to differing interpretations, which hurts interoperability. I think this description needs tightening (and possibly a reference to a discussion of state mismatch)

natCntQuota => natQuotaErrors? natQuotaRejects? natQuotaRefusedPkts? Does this only apply to incoming packets?

I'm a bit uncomfortable with "The number of packets to which NAT could not be applied because ..." Does this mean "The number of packets not translated because ..."

natCntMappings - it is generally considered bad practice to define objects that are easily derived from existing objects. These objects are instantiated on devices that should be focused on forwarding packets, not running formula calculations. Forwarding devices often have very limited resources, so having the nat device use its CPU to do unnecessary calculations and store the results in scarce memory is not a good idea. Let the NM application get Creations and Removals and let it do the calculations. Complexity should be pushed to the SNMP manager, not the SNMP agent.

Here are the guidelines used in the BRIDGE-MIB: " To be consistent with IAB directives and good engineering practices,

an explicit attempt was made to keep this MIB module as simple as possible. This was accomplished by applying the following criteria to objects proposed for inclusion:

Start with a small set of essential objects and add only as further objects are needed.
Require that objects be essential for either fault or configuration management.
Consider evidence of current use and/or utility.
Limit the total number of objects.
Exclude objects that are simply derivable from others in this or other MIB modules.
Avoid causing critical sections to be heavily instrumented. The guideline that was followed is one counter per critical section per layer.
"

natCntMappings - Can Creations exceed Removals? That would seem reasonable to me. If so, then Mappings = removals - creations would generate negative numbers, right? Shouldn't this be creations - removals?
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-06-22. It was migrated from the old Trac wiki on 2023-01-25.*
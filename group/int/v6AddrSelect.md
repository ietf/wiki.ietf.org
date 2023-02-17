---
title: IPv6 Address Selection Design Team
description: 
published: true
date: 2022-12-15T05:19:01.853Z
tags: 
editor: markdown
dateCreated: 2022-12-15T05:18:57.795Z
---

# IPv6 Address Selection Design Team 

## Design Team Members 
<pre>
	- Marc Blanchet
	- Tim Chown
	- Marcelo Bagnulo Braun
	- Suresh Krishnan
	- Tony Hain
	- Francis Dupont
	- TJ Evans 
	- John.zhao
	- Sebastien Roy
	- Janos Mohacsi
	- Tim Enos
	- Teemu Savolainen
	- Fujisaki Tomohiro
	- Arifumi Matsumoto
	- Ruri Hiromi
</pre>

## Mailing List 
You can subscribe to the design team mailing list at the following web page. https://www.ietf.org/mailman/listinfo/addr-select-dt

## Charter 
This team works on a protocol design for dynamic updating of the RFC 3484 policy table.
	
 1. definition of "default policy" and its maintenance.

 2. policy table updating mechanism
	* Protocol
	* Timing
	* Dynamics
	* Other requirements from address-select-req

 3. draft table of contents
	1. abstract
	2. terminology, definitions
	3. data format, syntacs
	4. data type(request, response)
	5. security consideration

 4. Milestone
	* drafting at the end of Oct. 2008
	* presentation at the 6man next IETF73
	* the Goal is publishing the draft as RFC

## Design Team Outputs 
 * Considerations for IPv6 Address Selection Policy Changes http://www.ietf.org/internet-drafts/draft-chown-addr-select-considerations-01.txt

## References 
 * Default Address Selection for Internet Protocol version 6 (IPv6) RFC 3484
 * proposal for revising RFC3484 http://tools.ietf.org/id/draft-arifumi-6man-rfc3484-revise-00.txt
 * Problem Statement RFC 5220
 * Requirement RFC 5221
 * Solution Analysis http://tools.ietf.org/wg/6man/draft-ietf-6man-addr-select-sol/
 * DHCP option to carry out distributing table http://tools.ietf.org/id/draft-fujisaki-dhc-addr-select-opt-06.txt

## F2F Meeting 20.Nov.2008 
* Agenda

 1. feedback back from IETF73
    * add Dave's comment(about multiple interface)
    * how to merge/update policies?
    * reconfigure?
    * where and who will do this in the mechanism?

 2. consensus on how dynamic
   Here might be 2 groups when facing update of policy
    * changed quickly by receiving policy
    * notified but unchanged its policy

 3. (add examples/use case)

 4. talking about solutions 
    * DHCP?

 5. further discussions from this team?



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2008-11-21. It was migrated from the old Trac wiki on 2022-12-14.*
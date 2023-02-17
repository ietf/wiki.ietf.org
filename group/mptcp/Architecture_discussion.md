---
title: Architecture Discussion
description: 
published: true
date: 2023-01-10T00:56:27.443Z
tags: 
editor: markdown
dateCreated: 2023-01-10T00:56:24.096Z
---

## High-level design decisions / architecture 
==================================================================================

Protocol-related

===================================================================================

- IPv4 & IPv6 will have the same high-level design
- The MPTCP connection is identified, from an apps perspective, by the addresses associated with the original path (even if that subflow /path closes)
- A SYN/ACK exchange (on a single path) checks that both ends support MPTCP, with automatic fall-back to TCP if not
- each MPTCP subflow looks exactly like an ordinary, semantically independent TCP flow. MPTCP effectively runs on top. So re-transmission, FINs etc are independent on each subflow
- control of the MPTCP connection (as opposed to the subflows) is carried in TCP options, eg DATA FIN for closing an MPTCP connection
- the protocol involves an MPTCP stack at both ends of the MPTCP connection
- Either end of the MPTCP connection can add or remove paths to/from the MPTCP connection
	- [Comment / Question: this seemed a bit unclear in the protocol i-d, but is presumably required?]
- Subflow end point definition
	- [Question: Should we allow subflows in a single MPTCP connection to have different ports?]

====================================================================================

Congestion algorithm

====================================================================================

- the goals are:
	[1] MPTCP is at least as good as TCP would be on the best subflow path

	[2] on any path, an MPTCP connection uses less (or the same) capacity as a TCP connection would do

	[3] MPTCP moves traffic off more congested paths and onto less congested ones

- increases in the congestion windows of the subflows are coupled; for decreases in the congestion windows, each subflow does new reno independently (ie they are not coupled)
- slow start, fast re-transmit and fast recovery are the same as [RFC5681](http://tools.ietf.org/html/rfc5681)

====================================================================================

API

====================================================================================

- no changes to existing apps are needed to use MPTCP; MPTCP uses the unaltered TCP socket API
- There is an optional, extended API
	- [Question: would both ends need the extended API, with a fall-back if not?] o 	- [Comment: presumably the actual features of the extended API are outside the initial high-level design decisions]
- congestion control state is shared among application-visible transport instances (eg multiple HTTPs between the same pair of hosts)
- 3 application profiles are mentioned (Bulk data transport, Latency-sensitive transport with overflow, Latency-sensitive transport with hot stand by)
	- [Question: how are these supported? Is a negotiation mechanism needed?]

====================================================================================
Security

====================================================================================

- exchange a token in the initial SYN for the MPTCP connection, and include the token when subflows /paths are added to the connection
	- [Question: Is the same token used whether the sender or receiver (of the MPTCP connection) adds the subflow? Is the same technique used for removing subflows? And closing connections, ie DATA FIN?]
- security mechanisms will not interfere with end-to-end authentication etc and will be compatible with legacy middleboxes

====================================================================================

Modularity

====================================================================================

- the architecture has 2 components, multipath scheduler & path manager – meaning that improved /different modules of each can be slotted in
	- [Comment: it is unclear from the Architecture i-d how the congestion control & protocol i-ds map to these components; some of the text (strangely?) appears in a section about implementation]
	- [Question: what are the mechanisms for evolvability? How is it negotiated which new module (for congestion control or path manager) to use?]
	- [Question: this would seem to imply we need to define an interface between the modules?]
- there is a default path manager module, meaning it is the MUST fall-back option
	- [Comment: the charter restricts us - the path manager we work on will distinguish paths by multiple addresses]
  
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-04-11. It was migrated from the old Trac wiki on 2023-01-09.*
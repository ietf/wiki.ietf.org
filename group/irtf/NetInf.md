---
title: NetInf
description: 
published: true
date: 2023-02-18T03:35:01.568Z
tags: 
editor: markdown
dateCreated: 2023-01-30T04:17:42.337Z
---

# NetInf
## An architecture and protocol for Information Centric Networking
- Uses a convergence layer architecture similar to DTN ([DTN Archhitecture - RFC 4838](http://tools.ietf.org/html/rfc4838))
- Works on complete information objects with names
	- Known as Named Data Objects (NDOs)
	- Expects that name and corresponding NDO content will be securely coupled
	- Designed particularly with ni URI scheme in mind but other schemes could be used
- Uses simple message/response protocol
- Provides operations for
	- Publishing content objects (PUBLISH, PUBLISH_RESPONSE)
	- Retrieving content objects (GET/GET_RESPONSE)
	- Searching for content objects (SEARCH/SEARCH_RESPONSE)
- Various convergence layers defined (notably HTTP, DTN BP, UDP)
- Source code for reference implementation available at Sourceforge
## Links
[The NetInf Protocol](http://tools.ietf.org/html/draft-kutscher-icnrg-netinf-proto-01)

[Naming Things with Hashes](http://tools.ietf.org/html/rfc6920)

[NetInf Reference Implementation](http://sourceforge.net/projects/netinf)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-11-01. It was migrated from the old Trac wiki on 2023-01-29.*


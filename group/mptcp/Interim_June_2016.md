---
title: Interim June 2016
description: 
published: true
date: 2023-01-10T22:42:21.953Z
tags: 
editor: markdown
dateCreated: 2023-01-10T00:34:41.818Z
---

Agenda:-

- Application Layer authentication for Multipath TCP - Alan Ford
- Load balancing MPTCP - Costin Raiciu
- Load balancing for Multipath TCP – Olivier Bonaventure

Audio Archive:

- https://drive.google.com/file/d/0B8EBgJLfaC4HbTZzR08tUHM1c2s/view?usp=sharing

Reading:

- https://mailarchive.ietf.org/arch/msg/multipathtcp/4lgoBI3gfdu8bui9RYAkF279y2M
- https://tools.ietf.org/html/draft-paasch-mptcp-application-authentication
- https://tools.ietf.org/html/draft-paasch-mptcp-tls-authentication
- https://mailarchive.ietf.org/arch/msg/multipathtcp/r5rffL3G93a64Xj3Gb43hT2gYYE
- http://nets.cs.pub.ro/~costin/files/mplb.pdf
- Abstract for item 3: There are many situations where Multipath TCP clients and servers cannot accept the establishment of additional subflows over the address used to create the initial subflow. For clients, this occurs typically when they are behind a NAT or firewall. For servers, this occurs typically when they are behind a load balancers. In these situations, it is beneficial for the affected host to be able to inform the other host of the restriction on the reachablity of their primary address. We propose to reserve one bit to encode this information in the MP_CAPABLE option and show how load balancers can exploit this new feature.
- https://datatracker.ietf.org/doc/draft-ietf-mptcp-rfc6824bis/

---
The agenda topic is solving the load balancer issue. This seems to be the only significant functional addition that has wide-scale interest (ie beyond what's already in the bis doc) (*). Therefore our proposal is to hold a WG Last Call on the draft after the interim and in the period leading up to the IETF. So that we can discuss issues during the Berlin meeting. Beyond that, our current thinking is that we should have some implementation before progressing the doc to the IESG (and that experience may of course lead to mods to the doc).

(*) one of the things we'll ask in the WGLC is whether people think the doc does include all the additional functionality that people want. Of course you can raise things before the wglc.

---

**Webex Info**

Monday, 20 June 2016 15:00 | Greenwich Time (Reykjavik, GMT) | 2 hrs Meeting number (access code): 640 977 925 Meeting password: 6mpBVCz3

When it's time, join the meeting <https://ietf.webex.com/ietf/j.php?MTID=mb86b90685e0b2922ab2e948d57a400cc>.

*Join by phone* *1-877-668-4493* Call-in toll free number (US/Canada) *1-650-479-3208* Call-in toll number (US/Canada) Toll-free calling restrictions <https://www.webex.com/pdf/tollfree_restrictions.pdf>

Can't join the meeting? <https://help.webex.com/docs/DOC-5412>

Attachments: [slides-interim-2016-mptcp-1-2.pdf](/slides-interim-2016-mptcp-1-2.pdf)[slides-interim-2016-mptcp-1-3.pdf](/slides-interim-2016-mptcp-1-3.pdf) [slides-interim-2016-mptcp-1-1.pdf](/slides-interim-2016-mptcp-1-1.pdf) [slides-interim-2016-mptcp-1-0.pdf](/slides-interim-2016-mptcp-1-0.pdf)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-06-27. It was migrated from the old Trac wiki on 2023-01-09.*
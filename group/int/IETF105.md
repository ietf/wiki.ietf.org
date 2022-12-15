---
title: WG Summaries from IETF 105
description: 
published: true
date: 2022-12-15T05:11:52.922Z
tags: 
editor: markdown
dateCreated: 2022-12-15T05:10:25.701Z
---

## 6MAN 

The 6MAN working group met for a one one hour session on Tuesday and one one and a half hour session on Thursday at IETF105. The session was well attended.

The agenda, and slides from 6MAN are available at: https://datatracker.ietf.org/meeting/105/materials.html.
 
The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. Traditionally the 6MAN working group has had a very tight agenda, and we often have had to cut discussions short.

The SRH base specification is at the time of writing this summary at in IETF last call.

The working group decided to adopt two new documents; draft-hinden-6man-mtu-option and draft-ali-6man-spring-srv6-oam.

The working group initiated two working group last calls; draft-ietf-6man-icmp-limits and draft-ietf-6man-ra-pref64.

RFC8200 has a couple of errata reported against the fragmentation section. Those were discussed, and new text to resolving the issues was presented in the meeting.  The  working group will implement the plan suggested by the chairs.  The steps are to agree on new text, submit that in an errata (or the existing errata) and then discuss if an updating document is required. This somewhat depends on the RFC Editor's new errata inline in html tool.


## 6TiSCH 
6TiSCH met for 90 minutes at PM3 on Thursday. A status was made that indicates that all work items are complete or reaching completion.

The WG meeting covered 6 drafts:

* draft-ietf-6tisch-architecture has completed the telechat review cycle and is ready for the RFC Editor phase.
* draft-ietf-6tisch-minimal-security was submitted for publication. New work happened to avoid attacks against ASN.
* draft-ietf-6tisch-msf Authors fixed comments, 2 discussion items remaining and then will be ready for WGLC by fall.
* draft-tiloca-6tisch-robust-scheduling was presented again. Raised a large interest but is mostly IEEE work, just needs a change in minimal security to carry an additional key. We need to contact IEEE and assess interest on thier side
* An update of draft-ietf-6tisch-dtsecurity-zerotouch-join was presented by Michael Richardson. Most of the work is now taking place in a normative reference draft-ietf-anima-constrained-voucher. The work would easily be transferred should the WG conclude.
* Michael Richardson also presented draft-ietf-6tisch-enrollment-enhanced-beacon. The draft is ready. WGLC will be issued.

The WG will meet again in Singapore to conclude work on MSF. At this time, we plan to conclude. Depending on the discussions at RAW, it is also possible to recharter for Track Provisioning describing flows and data models that describe the setting of a the state in intermediate nodes, and teh G-MPLS-like operation of forwarding based on cells.

## LPWAN 

During IETF 105, the LPWAN WG had a WG meeting and a hackathon session.

The WG meeting covered 8 drafts:

* draft-ietf-lpwan-ipv6-static-context-hc was presented by Dominique Barthel. The doc passed IETF last call and will be scheduled in an upcoming telechat in August. An implementation called PYSCHC from a Chilean university was presented as well.
* draft-ietf-lpwan-schc-over-sigfox was presented by Juan-Carlos Zuniga. There is active test ad implementation work, no doc update to report.
* draft-ietf-lpwan-ipv6-schc-over-lorawan was presented by Ivaylo Petrov. The doc is well advanced and mostly ready for WGLC. 2 reviewers were identified to prepare for that and solve the remaining issue on the longer FPORT format.
* draft-toutain-lpwan-schc-yang-data-model was presented by Laurent Toutain. The authors are looking for help from Yang Doctors, request made through chairs and ADs.
* draft-ietf-lpwan-coap-static-context-hc was presented by Laurent Toutain. This document is stable. Dominique suggested to add example of CoAP compression in the SCHC / IPv6 draft that as the general operations. Pascal preferred to leave SCHC IPv6 follow its IESG course and put the examples in this document. Question was asked whether we should wait to get more examples of CoAP to improve coverage. The room consensus was to publish the document as opposed to wait more, and possibly extend it later.
* draft-barthel-lpwan-oam-schc was presented by Dominique Barthel. The document presents various cases where PING, TraceRoute and ICMP errors could be potimized for LPWANs.
* draft-gomez-rto-considerations-lpwan was presented by Carles Gomez. The context is the impact of the pull model where an upstream frame is needed to trigger the transmission of a downstream frame (e.g., LoRaWAN class A). This has general impacts on the upper Layer protocols. The chairs suggested that a problem statement doc would be useful.

Then we had a rechartering discussion. The new charter would build on the one presented at IETF 101, adding Lightweight M2M to the SCHC compression, and the RTO related work. The AD will complete the work on SCHC IPv6 UDP and them push the charter ot the IESG.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-09-04. It was migrated from the old Trac wiki on 2022-12-14.*
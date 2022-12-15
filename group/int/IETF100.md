---
title: WG Summaries for IETF 100
description: 
published: true
date: 2022-12-15T04:03:33.086Z
tags: 
editor: markdown
dateCreated: 2022-12-15T04:03:33.086Z
---

INT AREA WIKI Page for IETF 100

## 6TiSCH

The 6TiSCH working group has a stable set of "6TiSCH Minimal" specifications:

-   6tisch-minimal (RFC8180)
-   \`draft-ietf-6tisch-minimal-security\`
-   \`draft-chang-6tisch-msf\`

This forms a complete protocol stack, which can be implemented and benchmarked. Ongoing work in the WG focuses on augmenting this \"Minimal\" solution with:

-   additional Scheduling Functions
-   zero-touch security
-   optimizations related to routing and beaconing

7 drafts were presented t IETF 100, both related to the 6TiSCH Minimal specs and its extensions

-   \`draft-ietf-6tisch-6top-protocol\` transitioned to AD Evaluation status. The draft is stable and has been implemented and tested. The WG is waiting for reviews, in particular from the IoT-dir
-   \`draft-ietf-6tisch-minimal-security\` is, pending the description of DSCP bits, ready for WGLC. The WG believes that the next revision will be ready for WGLC.
-   \`draft-ietf-6tisch-dtsecurity-zerotouch-join\`: the work is progressing fast. The WG acknowledged the good progression of the work.
-   \`draft-ietf-6tisch-6top-sfx\`: some editorial changes are needed because this (experimental) draft can go into WGLC. The chairs believe the WGLC period will be opening before IETF101.
-   \`draft-chang-6tisch-msf\`: this specification is part of the Minimal 6TiSCH solution. 2 implementations already exist. The chairs are confident this solution will be stable before IETF101.
-   \`draft-satish-6tisch-6top-sf1\`: the draft is important for the WG, but several key points lack specifics. The chairs recommended for the authors to continue the work.
-   \`draft-richardson-6tisch-roll-join-priority\` was not presented due to lack of time.

~~\-\-\-\-\--~~

## LPWAN

The LPWAN Working Group met on Monday 13th for 2.5 hours and followed its agenda as scheduled with no particular issue.

\* A discussion of the LPWAN WG rechartering concluded that the group should focus on SCHC-over-FOO, and BAR-over-SCHC. FOO could include the four baseline technologies, or additional that may manifest themselves. BAR may include applications sitting on top of CoAP, such as LWM2M, CoMI or other. We consider setting up a repository for CoAP pcap traces, which will be used for profiling the applications. Additional items for the rechartering include the Data Model of the SCHC compression contexts and the minimal context provisioning protocol, as well as work on ICMPv6.

\* During the discussion on ICMPv6, it was observed that the work is two-fold. On the one hand, we need to describe how we treat ICMPv6 messages, such as whether we send the ECHO-request all the way to the device or proxy at the gateway, and whether we need new ICMPv6 codes in the ECHO-request to indicate the expected behavior. On the other hand, we need to specify new ICMP message codes to cover new situations that are related to the function placement in LPWAN networks, e.g. Error:Non-compressible packet. Many questions arise for ICMPv6 error messages, depending if the erroneous message is compressed or not, and which entity should receive the error message. Finally, standard traceroute uses random UDP ports for route mapping, which would result in un-compressible messages (messages that match no context or that match generic contexts).

\* Statuses of the drafts. \* LPWAN Overview (draft-ietf-lpwan-overview) submitted for publication to IESG. Two directorates have been notified (IOTDIR and INTDIR), with reviews expected by mid-December. \* SCHC IPv6/UDP (draft-ietf-lpwan-ipv6-static-context-hc) is stable, with some final polishing and corner cases to be cleared in the fragmentation operation. A 2.5h follow-up meeting was scheduled on the next day, and the identified corner cases were solved. Once retrofitted in the document, SCHC IPv6/UDP will be ready for last call. \* SCHC CoAP (draft-ietf-lpwan-coap-static-context-hc) requires additional clean-up and validation using BAR-over-SCHC examples. This will be satisfied once the CoAP pcap repository is set up and the group has had some time to evaluate the provided examples with the compression. This will take at least 6 months to complete.

\* Non-WG documents for SCHC-over-FOO were presented for FOO in [LoRaWAN,](SIGFOX).

\* A presentation of the ETSI ERM TG28 was done by the Chairs on behalf of TG chairs with the intention to dig into ETSI LTN in the next meeting.

\* Overview of IEEE meeting in Orlando was given by Bob Heile. Of interest is a new PAR on work on new PHY for LPWAN. Also, a study group on next-generation security was formed, as well as extensions to Field Area Networks.

\* During the Hackathon, several of the participants have improved the open-source SCHC implementation.

## DHC

The Dynamic Host Configuration Working Group met on Thursday, November 16, 2017, 18:10-19:10 (a 1 hour session).

\* The chairs provided a Working Group status update and agenda bashing.

\* Tomek Mrugalski then presented a draft for a recharter and reviewed the current remaining work items and potential future items. There was some discussion on the charter and the chairs will update draft and distribute to the mailing list for further discussion.

\* Next, Ian Farrer presented an update on the DHCPv6 Yang model and next steps. He was also seeking additional participation, and several people volunteered to help out in reviewing the document and becoming potential co-authors.

\* Then Srivivasa Rao Nallurim presented two IoT DHCP option drafts, one a working group work item (\`draft-ietf-dhc-dhcpv6-lwm2m-bootstrap-options\`) and another he is interesting in having the working group take on (\`draft-nalluri-dhc-dhcpv6-mqtt-config-options\`).


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-11-20. It was migrated from the old Trac wiki on 2022-12-14.*
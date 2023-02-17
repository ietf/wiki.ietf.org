---
title: WG Summaries for IETF 99
description: 
published: true
date: 2022-12-15T04:00:56.024Z
tags: 
editor: markdown
dateCreated: 2022-12-15T04:00:49.942Z
---

INT AREA WIKI Page for IETF 99


## 6TiSCH

There were 3 6TiSCH-related events at IETF99.

The 1st F-Interop 6TiSCH **Interoperability Event** (http://www.etsi.org/news-events/events/1197-6tisch-interop-prague-2017) took place on 14-15 July, just preceding the IETF. 16 entities participated, with a test decription focusing on 6TiSCH (RFC8180, draft-ietf-6tisch-6top-protocol, draft-ietf-6tisch-minimal-security) and related security (OSCOAP, EDHOC). 6TiSCH is now supported by all mahor 156 tests were run, 86% of them passing.

6TiSCH-related projects took part at the **hackathon**, on 16 July. 6TiSCH is now supported on all major open-source implementations: OpenWSN (http://www.openwsn.org/), Contiki (http://www.contiki-os.org/), RIOT (http://riot-os.org/). Further work included full support of the entire 6TiSCH security bootstrap in OpenWSN.

The 2Hours **WG meeting** was organized around 3 sections.

Dynamic Scheduling
- 6P protocol virtually finished, SF0 goes experimental: immediate future work on SF.

- draft-ietf-6tisch-6p-protocol-07\ is almost final, with some final suggestions coming out of the plugtests. There was some discussion about the \"generation counter\" field, which was resolved during a side-meeting later at IETF99.
- draft-ietf-6tisch-6top-sf0-05\: the WG discussed whether to change the status of this draft to experimental.

Security 
- minimal-security stable and implemented, several complementary work, concern about EDHOC not having a home at IETF.

-  draft-ietf-6tisch-minimal-security-03: the complete solution was shown to work at the plugtests. There were discussion about the fact that, after 5 hops, the solution requires 6LoWPAN fragmentation. The chairs expressed concern about the fact that EDHOC still has no home at the IETF.
-  draft-ietf-6tisch-dtsecurity-secure-join: optimized procedure of ANIMA BRSKI for 6TiSCH
-  draft-richardson-6tisch-join-enhanced-beacon: an additional header in the beacons to configure nodes to serve as join proxies or not. 10 people thought it's a good idea to adopt the draft, none against.
-  draft-richardson-6tisch-minimal-rekey: COMI-based rekeying

Unchartered items
- lots of new work around 6TiSCH

-  draft-duquennoy-6tisch-asf-00: interesting new SF concepts, chairs encourage authors to continue working on it
-  draft-munoz-6tisch-examples-02: important support document, discussion about where/how to publish it
-  draft-papadopoulos-6tisch-pre-reqs-00: new concept, no time to discuss
-  draft-lijo-6lo-expiration-time-04: not presented (out of time)



## 6lo

6lo WG met on Tuesday afternoon 2nd session for 2 hours. Document status: New RFCS -- RFC 8105 (ipv6-over-dect-ule), RFC 8163 (ipv6-over-lobac) 
- Dropped since last IETF due to lack of interest from Jupitermesh SDO and no updates of the document: draft-ietf-6lo-mesh-link-establishment

WG documents:

6lowpan-ND related extensions:

-   https://datatracker.ietf.org/doc/html/draft-ietf-6lo-rfc6775-update ( WGLC deadline terminated, comments received and discussed, new revision will be published for the next step)

-   https://tools.ietf.org/html/ draft-ietf-6lo-backbone-router ( in progress )

-   https://tools.ietf.org/html/draft-ietf-6lo-ap-nd ( Under security expert review)

Applicability & usecases:

<https://datatracker.ietf.org/doc/html/draft-ietf-6lo-use-cases> (improved to focus on 6lo applicability and guideline for 6lowpan stack adaptation on a L2-constrained networks)

Non-WG documents:

-   draft-lijo-6lo-expiration-time-03 was discussed and requested for adoption.
-   draft-huo-6lo-plc-01 talked about ipv6-over-plc; draft content has been also discussed with ITU-T SG-15.
-   A preliminary draft on wireless body area network was presented by a first timer at IETF: draft-sajjad-6lo-wban-00. The document requires many improvements.

Discussion on Fragment Forwarding:

draft-thubert-6lo-forwarding-fragments was presented 2nd time to make the WG aware of issues of 6lo packet fragmentation over route-over links such as in RPL topologies. There were long discussions on forwarding requirements and possible solutions and the decision was to form a design team to further investigate 6lo fragmentation requirements on route-over topologies and come up with one or more possible solutions. The chairs are collecting names for people interested in the fragmentation design team.



## DHC

The DHC Working Group met on Wednesday July 19th at 13:30 for 90 minutes.

The WG chairs (Tomek Mrugalski and Bernie Volz) discussed the agenda for the session and provided a brief WG status summary and update on the status of draft-ietf-dhc-rfc3315bis.

Next, John Brzozowski presented on the DHCPv6 Deployment at Comcast for millions of devices and where 99% of all cable modems are IPv6-only and 16 million set-top boxes use DHCPv6 (they request an IA_NA and IA_PD) using the Dibbler client.

Tomek then presented on the current status of the draft-ietf-dhc-sedhcpv6 work and recent issues. Following this there was a lively discussion on what to do about this work. The consensus of the room seemed to be to put the work on hold, update the draft-ietf-dhc-rfc3315bis by removing the reference to the sedhcpv6 work, and documenting the state of and need for security/privacy for DHCPv6.

Next was a (remote) presentation from Srinivasa Rao Nallurim on DHCP/DHCPv6 options for LWM2M bootstrapping (draft-nalluri-dhc-dhcpv6-lwm2m-bootstrap-options). Some feedback was given on this draft and the WG will do a call for adoption when requested by the authors as there is no other home for this work.

The last presentation was from Danny Moses on Ondemand Extensions to DHCPv6 for IP Session Continuity Requests (draft-moses-dmm-dhcp-ondemand-mobility). Some feedback was given on this draft and it was recommended that the authors and LWM WG keep the DHC WG updated on the draft as it progresses or if there are major changes.

## LPWAN

The LPWAN Working Group met on Friday 21st AM1 for 2 hours and followed its agenda as scheduled with no particular issue.

- Work done at the Hackathon was presented. 2 SCHC implementations were present, one of them opensource (**IMT**). A number of lessons were learned, e.g. how to place the padding bits and the encoding of a non-present fields. Tickets will be opened on the SCHC documents which otherwise appears ready for mast call. The same sensors expressing pressure and temperature were used over a local **LoRa** network and a **Sigfox** network serving the city.
- The LPWAN overview document draft-ietf-lpwan-overview passed last call and version 06 was published with the updates. Links to some ANSI references are missing for **Wi-Sun** but that can be edited on the way. The shepherd (Alex) will now kick off the shepherding process. 
- The IP/UDP **SCHC** document draft-ietf-lpwan-ipv6-static-context-hc\` is mostly ready for last call, which will start when the tickets above are addressed. Minor improvements were added to the fragmentation piece which is now stable but lacks implementation feedback, and has a few minor items still left to be resolved (e.g. the security section is probably not complete)
- The **SCHC** CoAP document draft-ietf-lpwan-coap-static-context-hc needs a little more return from experience since CoAP is such a rich ecosystem. A need for collaboration to expressed time scale at which reliability operated (very slow in LPWANs) was identified. More discussion at the forthcoming CORE meeting. This item should not impact the SCHC spec, but maybe trigger new work at CORE to define a CoAP option.
- A **SCHC** ICMP compression draft-lagos-lpwan-icmpv6-static-context-hc was proposed. Very early work, but inspiration for rechartering.
- A rechartering discussion followed. Some concepts such as Radio Resource Management and interface between the Radio GW and the Network GW were proposed. A word of caution from chairs and AD was that items that impact the technologies should be openly discussed on the ML and the work should be supported by the technologies. Discussions are now expected.
- A short "news of the world" presentation was given by Bob Heile, with a focus on 802.15.12 (which could include LPWAN SCHC in some future like it includes 6LoWPAN in its design now) and **IG LPWAN** (a pointer was given to the Mentor slides)



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-07-28. It was migrated from the old Trac wiki on 2022-12-14.*
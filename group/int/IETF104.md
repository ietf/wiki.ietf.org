---
title: WG Summaries for IETF 104
description: 
published: true
date: 2022-12-15T05:04:54.152Z
tags: 
editor: markdown
dateCreated: 2022-12-15T05:04:50.141Z
---

The following INT working groups met at the IETF 104 in Prague



## 6TiSCH 

During IETF104, the 6TiSCH WG had a WG meeting, and participated in the hackathon.

The WG meeting covered 6 drafts:

* draft-ietf-6tisch-architecture has received early reviews. Input during the WG meeting was that the use of terminology should be more homogeneous. Suresh Krishnan asked to discuss with Pascal Thubert the intended status of the draft.
* draft-ietf-6tisch-minimal-security has just passed a second WGLC. During this, an issue was raised, for which the Malisa Vucinic (editor) proposed 3 possible resolutions. Malisa Vucinic and Goran Selander (reviewer) will work together on a resolution, which Malisa will implement. Once the new version of the draft is published, the WG will push it to the IESG.
* draft-ietf-6tisch-msf has received comments from 3 review. Tengfei Chang will publish a new version of the draft which integrates those comments, after which Yasuyuki Tanaka, Thomas Watteyne and Fabrice Theoleyre have agreed to review it. Once those reviews are integrated, a WGLC will be issued.
* draft-tiloca-6tisch-robust-scheduling was presented for the second time to the WG, and now integrates changes from the previous presentation. Marco Tiloca asked for reviews: Xavi Vilajosana, Tengfei Chang, Michael Richardson and Pascal Thubert volunteered to do a review within a month.
* An update of draft-ietf-6tisch-dtsecurity-zerotouch-join was presented by Michael Richardson, who flags the fact that some of that work is blocked by the fact that the EDHOC draft still doesn't have a home.
* Michael Richardson also presented draft-ietf-6tisch-enrollment-enhanced-beacon. Author Diego Dujovne will edit the introductory text of the draft (which has been stable), after which a WGLC will be issued.

The WG meeting also highlighted three implementation-related elements:

* the hackathon, to which the 6TiSCH WG participated with the OpenWSN implementation (http://www.openwsn.org/), which now contains a dashboard to extract the implementation's performance
* the 6TiSCH Open Data Action (https://benchmark.6tis.ch/) which aims at providing clear, unbiased, and continuous benchmarking of 6TiSCH implementations on institutional testbeds
* the 6TiSCH simulator (https://bitbucket.org/6tisch/simulator), which implements the full stack; the latest release (1.1.9) was done at the IETF and comes with a nice UI

## dhc 

During IETF 104, the DHC WG meeting met Wednesday morning.

The following presentations / discussions took place during the session:

* "Link-Layer Addresses Assignment Mechanism for DHCPv6 (refresher)" about draft-bvtm-dhc-mac-assign, by Bernie Volz. This had failed an adoption call recently as no one commented either for or against. After the presentation and discussions, there was interested in retrying the adoption call. The chairs will shortly initiate the adoption call and need comments to the mailing list.
* "SLAP quadrant selection options for DHCPv6" about draft-bernardos-dhc-slap-quadrant, by Carlos J. Bernardos. After some discussion, interest in doing an adoption call. Chairs will initiate shortly.
* "YANG DHCPv6 update" about draft-ietf-dhc-dhcpv6-yang by Ian Farrer (remote). Work has slowed down as several authors have lost interest. Discussed how to proceed. Ian to try to pull interested parties together to reboot effort.
* "Future of the DHC WG, Chairs" by Tomek Mrugalski. Consensus seems to be to go dormant for a while after finishing work to advance RFC8415. One question as to whether temporary addresses might be something to deprecate from RFC8415.
* "Problem Statement of Multi-requirement Extensions for DHCPv6" about draft-ren-dhc-problem-statement-of-mredhcpv6 by Lin He. Consensus was that this information on extending DHCP functionality is useful especially in light of future of WG. Call for adoption to be started.


## PAW 

The PAW BoF happened on Thursday March 28th. It was a non WG forming BoF, intended to assess needs and interest in work focused on “deterministic networking” on wireless. 

The chairs presented an initial context on determinism and how far we can expect such properties in wireless. Indeed the term deterministic taken literally can never be achieved on wireless, and is even harder to approach in unlicensed bands than it is in licensed. Still, if the MAC layer can be scheduled, then a bounded latency can be enforced, and the game is to optimize the delivery through the use of all possible forms of diversity that radios enable. An important point was made that we need to define how we express the reliability of the network, X nines being probably not the best way. Such networks often accept one loss but suffer from consecutive ones, which is badly expressed in, say, 5nines reliability. So there’s probably work to do in documenting what predictability, availability and reliability mean in our case so we can express the goals we wish to achieve.

Then we moved to the use cases presentation, each case showing its own set of requirements for a scheduled PAW network. The early draft is a complement of similar work presented at the IEEE RTA interest group and in the DetNet Use cases, which includes some wireless cases. Aggregating this work we see immediate needs for the PAW properties in many environments including online gaming, amusement parks, airplane communication, industrial factory automation and process control, pro audio and video, UAV and robot remote control.

Then we moved to work already happening in the IETF. A remark there is that while there is a large coverage of the Wired cases in CCAMP, TEAS and DetNet together, wireless specifics are not a priority and not currently covered in those groups. In particular DetNet which is the parent group for the work PAW would look at, decided not to consider wireless specific work for now. Daniele provided deeper hints on the work at CCAMP and then again, it appeared that work by a group focusing on wireless could help extend to work done there to radio links.

6TiSCH was also presented as a parent work for PAW. 6TiSCH provides a generic architecture for IPv6 and multiprotocol switched traffic over 802.15.4 TSCH, but the actual standards that the group produced are focused on best effort IP over that medium. 6TiSCH expected help from DetNet for the deterministic multiprotocol switched traffic, and published draft-thubert-6tisch-4detnet in 2015. But so far the specifics of the wireless medium expressed in that document are not addressed. On the one hand, 6TiSCH is too specific to 802.15.4 TSCH, and in the other, the skill in the group are more of INT Area, IPv6 over foo. In contrast, what we need now is a more abstract approach to radios – think 6lo vs. 6LoWPAN – and at the same time a more Routing-Area oriented skill set – meaning DetNet and TE -. All in all, it appears to be making more sense to spawn a new group with a partially renewed crowd than to recharter 6TiSCH. At the same time, distributing the wireless work over the multiple existing WGs will fail to attract the wireless skills, so we really need an arena where the discussions can focus on wireless and the people of the art, usually not traditional IETF dwellers, can meet and progress.

The next question was whether there are indeed radios that would provide the properties that we are after, in particular radios that can be scheduled to enforce and end to end latency. When 6TiSCH started, TSCH was probably the only playground available, and it was largely leveraged to demonstrate capabilities, in particular in the process control space, with 10s of thousands networks deployed. The next presentations introduced OFDMA operations that are now used in Wi-Fi 6 and LTE, and are being extended respectively at the IEEE Extreme High Throughput TG and 3GPP Ultra Reliable Low Latency Communications. These are networks that are capable of bounded latency and controlled power operation and it makes sense to consider the learning done over the years on TSCH and generalize of other MAC/PHY combinations. In particular, the 6TiSCH presentation showed that the group went a long way describing the operation of complex multihop “GMPLS” complex paths called tracks, from extensions to PREOF to iOAM measurement and control operation. Another network being designed for airplane communications, LDACS, was also presented.

Some work in progress drafts demonstrating early activity were then presented. The first one discussed distributed track setup using RPL. The other described a model what PREOF becomes in wireless, including ARQ, overhearing, and constructive interference.

In the recap, we found that there’s clearly work to do to decide what work can take place and where. Suresh made points that were not fully captured and we need him to update the notes here. There was confusion expressed by Lou on what we really want to achieve, either implement the deterministic piece of 6TiSCH or extend the DetNet/CCAMP/TEAS/… work in a wireless focused group. We need to go though the details of what both options mean – are they similar ? – and where the related work should happen for both. This needs to be clarified for a successful WG forming BoF.

Suresh indicated that he found two interesting pieces of work to do: 

   1. Mainly OAM work, like the packet loss eval, something to balance the resiliency and the energy usage
   2. Signaling to do paw flow, with spatial time and frequency constraints. 

We need to figure out how to get these done, like if this should be a new WG or just parcel out the work to other groups and have some loose coordination between the groups. I was hoping we could do this today but we ran out of time. We need something more specific, more socialized, with DetNet, TEAS and all. As Lou said, some of this already has home in Routing. We have to figure out if this requires a new WG or not. We have time to do that between now and Montreal. We need to make sure everyone understands the deliverables and where they could be done.



## LPWAN 

During IETF 104, the LPWAN WG had a WG meeting and a hackathon session.

The WG meeting covered 8 drafts:

* draft-ietf-lpwan-ipv6-static-context-hc was presented by Dominique Barthel. The doc was submitted for publication. The editor reworked the text based on Charlie Perkins inputs and partial review received from Carsten Bormann (on behalf of IoT-Directorate); Dominique also presented the hackathon activity on openSCHC including a micropython implementation. 
* draft-zuniga-lpwan-schc-over-sigfox was presented by Juan-Carlos Zuniga. The issue of whether SiGfox is an open standard (it is not, apparently) was raised upon the announcement of the publication of the low layer specs. At the end of the meeting the room consensus was to adopt the document as WG doc, to be confirmed on the ML.
* draft-petrov-lpwan-ipv6-schc-over-lorawan was presented by Ivaylo Petrov with various improvements e.g. terminology. feedback was asked to ensure all practical use cases are covered. At the end of the meeting the room consensus was to adopt the document as WG doc, to be confirmed on the ML.
* draft-minaburo-lpwan-nbiot-hc was presented by Ana Minaburo. Changes involve various use cases on how SCHC can be here SCHC can be placed in the 3GPP Architecture, in the PDCP or in the RLC layer. When transported in the control plane, SCHC packets would be similar to SMS, 11 to 25 bytes and fragmentation is needed. At the end of the meeting the room consensus was to adopt the document as WG doc, to be confirmed on the ML.
* draft-toutain-lpwan-schc-yang-data-model was presented by Laurent Toutain. This is new work and central to the new charter. It will describe the generic data model that all the technology specific documents will inherit from. At the end of the meeting the room consensus was to adopt the document as WG doc, to be confirmed on the ML.
* draft-gomez-rto-considerations-lpwan was presented by Carles Gomez. This is new work that studies the round trip delays in LPWANs, important to set times in CoAP and applications.
* draft-ietf-lpwan-coap-static-context-hc was presented by Laurent Toutain. This document is stable. Dominique suggested to add example of CoAP compression in the SCHC / IPv6 draft that as the general operations. Pascal preferred to leave SCHC IPv6 follow its IESG curse and put the examples in this document. Question was asked whether we should wait to get more examples of CoAP to improve coverage. The room consensus was to publish the document as opposed to mwait more, and possibly extend it later.
* draft-ietf-lpwan-ipv6-static-context-hc was presented by Dominique Barthel. The document merges two previous personal submissions. Discussions are needed, in particular WRT support of the classical ping vs. a LPWAN specific ping that could be proxied at the NGW.
* The group concluded with the consensus to adopt the documents detailed above. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-04-02. It was migrated from the old Trac wiki on 2022-12-14.*
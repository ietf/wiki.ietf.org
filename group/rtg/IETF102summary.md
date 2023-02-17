---
title: IETF 102 High Level Summary
description: 
published: true
date: 2023-01-07T00:33:27.520Z
tags: 
editor: markdown
dateCreated: 2023-01-07T00:33:22.578Z
---

# IETF 102 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 102


## Summary Template 
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
[https://datatracker.ietf.org/meeting/102/agenda/xxx/]
[http://datatracker.ietf.org/wg/xxx/charter/]
[https://www.ietf.org/proceedings/102/xxx.html]


## BABEL

## BESS

Meeting: Friday, 9:30am

WG Highlights:

WG is still extremely active, with a very full agenda. We are working through a large backlog of drafts covering VPLS, EVPN interoperability, and OAM. New (or resurrected) drafts were presented on EVPN OAM, running L3 VPNs in a secure way across a public infrastructure, and sending VPN context information in the absence of MPLS.

WG Status Summary:

RFCs Published Since Last IETF:
- RFC 8388 - Usage and Applicability of BGP MPLS-Based Ethernet VPN
- RFC 8365 - A Network Virtualization Overlay Solution Using Ethernet VPN (EVPN)
- RFC 8395 - Extensions to BGP-Signaled Pseudowires to Support Flow-Aware Transport Labels
Documents in RFC Ed Queue:
- draft-ietf-bess-dci-evpn-overlay: MISSREF waiting for draft-ietf-idr-tunnel-encaps 
- draft-ietf-bess-evpn-prefix-advertisement: MISSREF: draft-ietf-bess-evpn-inter-subnet-forwarding
AD Review (Martin):
- draft-ietf-bess-evpn-vpls-seamless-integ 
- draft-ietf-bess-df-election-framework
- draft-ietf-bess-mvpn-expl-track

Links: 
[https://datatracker.ietf.org/meeting/102/agenda/bess/]
[http://datatracker.ietf.org/wg/bess/charter/]
[https://www.ietf.org/proceedings/102/bess.html] 


## BFD

Meeting Day/Time: Wednesday, July 18, 15:30

As always, current status of WG in the [BFD Wiki](/group/bfd/)

Current items of interest:
* BFD multipoint documents have been submitted to IESG. They've generated a lot of feedback and are being reconciled.
* BFD YANG module in IESG.  Minor late changes, including how IANA documents are named, causing last minute minor churn.
* BFD for VxLAN has been adopted ready for WGLC.
* WGLC for BFD secure sequence numbers, BFD stability and Optimizing BFD authentication didn't succeed.
* BFD for large packets will get some discussion at our upcoming session.

## BIER

## CCAMP

Meeting: 
1 session:
* 15:50-18:20	Tuesday Afternoon session II

WG Highlights:

* MANET drafts presented in CCAMP. To discuss if CCAMP is the right place to move them forward. 
* Microwave and millimiter wave: Device model passed YANG doctors review. Progresses on the network model. Proposal to have them tested ad the ETSI plugfest.
* Transport NBI DT: All work merged into single draft including gap analysis. (less informational drafts) 
* YANG models updated: WSON, Flexi Grid, IPoWDM interface, OTN, microwave.
* New Work consolidated: Beyond 100G (G709v5), FlexE, YANG models for Client-layer Topology, Client-layer Tunnel and Optical Transport Network Client Signals

WG Status Summary: 

* 1 new RFC: RFC 8363 -  GMPLS OSPF-TE Extensions in Support of Flexi-Grid Dense Wavelength Division Multiplexing (DWDM) Networks
* RFC Editor’s Queue: draft-ietf-ccamp-microwave-framework
* IESG processing: draft-ietf-ccamp-dwdm-if-mng-ctrl-fwk (liaison sent to ITU-T)

Links: 
[https://datatracker.ietf.org/meeting/102/agenda/ccamp/]
[http://datatracker.ietf.org/wg/ccamp/charter/]
[https://www.ietf.org/proceedings/102/ccamp.html] 

## DETNET 

Meeting: Monday, 9:30-12:00

WG Highlights:  
* Two documents passed WGLC:
   * Problem statement -- draft-ietf-detnet-problem-statement-06
   * Use cases -- draft-ietf-detnet-use-cases-17
* Extended WGLC will be concluded soon on the architecture -- draft-ietf-detnet-architecture-06
* Data plane solution split into two documents:
   * MPLS -- draft-ietf-detnet-dp-sol-mpls-00
   * IP -- draft-ietf-detnet-dp-sol-ip-00

WG Status Summary: 
* Three documents are getting done
* Data plane solution drafts to be finalized, e.g., conformance language
* Flow information model draft to be updated based on the other drafts
* WG adoption of YANG draft soon
* combine drafts related to congestion protection

Links: 
[https://datatracker.ietf.org/meeting/102/materials/agenda-102-detnet-02]
[https://datatracker.ietf.org/wg/detnet/charter/]
[https://datatracker.ietf.org/doc/minutes-102-detnet/]

## I2RS

* Not meeting.  In processes of handling last 2 documents. 

## IDR

* Sessions at the end of the Week (Thursday 18:10-19:10 ET, Friday 11:50-13:20)
* BGP Yang data model, BGP neighbor discovery, BGP flowspec, 
* Extended Community proposals, 
* BGP-LS, BGP-LS+TE, BGP-LS+SR, BGP-LS+SR+TE + Yang BGP-SR  

## L2TPEXT

## LISP

Meeting Thursday, July 19th, 1:30pm - 3:30pm 

WG Highlights:
* Four Documents passed WGLC and are now waiting for the shepherd's writeup.
   * The Locator/ID Separation Protocol (LISP)  -- draft-ietf-lisp-rfc6830bis-13.txt
   * Locator/ID Separation Protocol (LISP) Control-Plane   -- draft-ietf-lisp-rfc6833bis-10.txt
   * Locator/ID Separation Protocol (LISP) Map-Versioning --  draft-ietf-lisp-6834bis-00.txt
   * LISP Generic Protocol Extension --  draft-ietf-lisp-gpe-03.txt
* One document currently in WGLC:
   * Vendor Specific LISP Canonical Address Format (LCAF) --  draft-ietf-lisp-vendor-lcaf-02.txt

WG Status Summary:
* Most important work items are done for the WG (6830bis and 6833bis).
* The WG is ready to move forward and take over the work that was postponed so far.

Links:
[https://datatracker.ietf.org/meeting/101/materials/agenda-102-lisp/]
[https://datatracker.ietf.org/wg/lisp/about/]
[https://datatracker.ietf.org/meeting/102/session/lisp]


## LSR

Meeting Monday, July 16th, 9:30 AM - 12:00 PM

WG Highlights:
* 3 new RFCs including OSPFv3 Extended LSAs (RFC 8362)
* 4 more sent to AD or IESG for publication
* IS-IS Segment Routing extensions ready for IESG.

WG Status Summary:
* OSPF/ISIS Base YANG documents will soon be WG last called.
* OSPFv3 Segment Routing extensions should be WG last called soon (OSPFv2 on RFC Queue)
* LSR Flex Algorigthm is combined ISIS/OSPF draft
* Lots of proposals for flooding reduction - need to determine whether and what to advance.
  * Requiremments
  * Overlap and Fairness

Links:
[https://datatracker.ietf.org/meeting/102/materials/agenda-102-lsr/]
[https://datatracker.ietf.org/wg/lsr/about/]
[https://datatracker.ietf.org/meeting/102/session/lsr]



## LSVR

##  MANET

Not meeting at IETF 102.

WG Status Summary: 

Three documents ready to progress toward publication:
https://datatracker.ietf.org/doc/draft-ietf-manet-dlep-multi-hop-extension/
https://datatracker.ietf.org/doc/draft-ietf-manet-dlep-pause-extension/
https://datatracker.ietf.org/doc/draft-ietf-manet-dlep-lid-extension/

Links: 
[http://datatracker.ietf.org/wg/manet/charter/]

## MPLS

Met on Tuesday morning (9.30 - 12). Packed agenda and productive meeting.
New work is brought in, coordination with TEAS, SPRING and SFC.

Nic could not attend, thanks to Joel Halpern that helped running
the meeting.

One new RFC since London. One document approved by the IESG, and 
in the RFC editors queue.

Several new individual and wg drafts.

We hosted a PALS draft discussion.

Deborah did an "invited talk" on DO's and DON'T's on wg documents.
Would be worth doing in a RTG Area Open meeting.

## NVO3

Meeting: Wednesday, 1:30pm

WG Highlights: 
- Focus on security requirements for the standards track dataplane encapsulation (GENEVE).
- Also ongoing drafts focussing on OAM in overlay networks, particularly alt-making in GENEVE and the identification and encapsulation of OAM in overlays.
- For the control plane, there is an ongoing poll for adoption for a draft that describes the applicability of EVPN for NVO3.

WG Status Summary: 
- New RFC: RFC 8394: Split Network Virtualization Edge (Split-NVE) Control-Plane Requirements
- Past WG last call: draft-ietf-nvo3-vmm-01. Some comments from Ops area review. May also need review by TCPM working group.
- On-going WG Adoption Poll: draft-mglt-nvo3-geneve-security-requirements-03, draft-rabadan-nvo3-evpn-applicability-01

Links:
[https://datatracker.ietf.org/meeting/102/agenda/nvo3/]
[http://datatracker.ietf.org/wg/nvo3/charter/]
[https://www.ietf.org/proceedings/102/nvo3.html] 

## PALS

## PCE

## PIM

Meeting Tuesday, July 17th, 1550 - 1750

WG Highlights:
* Meeting in own time slot (not shared with MBONED), just too many drafts and we went overtime. Will no longer share a time slot but will meet back to back.
* igmp/mld/snooping/msdp yang drafts progressing.
* Framework for multicast applied to SR-MPLS presented and we will issue adoption call since SPRING is not chartered for multicast.
* Lots of new proposed work inc SR multicast, pim null register, pim graceful insertion, backup dr, graceful dr shutdown, p2mp bfd and pim reserved bits.

## RIFT

Meeting Thursday, July 19th, 1:30pm - 3:30pm 

WG Highlights:

* We had a hackathon at Montreal. Two implementations established LIE adjacency w/o difficulty. Will likely have a virtual one again in September or October.
* We had two two-hour virtual interim meetings on 5/2/2018 and 5/3/2018. Good participation and energy.

WG Status Summary:
* The WG is mostly focused on the base protocol spec and making good progress. Currently -02 revision and will go through a couple of revisions in the near future.
* YANG model draft not adopted as WG doc yet. Will need to create Threat Analysis doc and Applicability Statement doc and progress them all.

Links:
[https://datatracker.ietf.org/meeting/102/agenda/rift/]
[http://datatracker.ietf.org/wg/rift/charter/]
[https://www.ietf.org/proceedings/102/rift.html] 

## ROLL

 Meeting: 1 session:

* 9:30-12:00 Tuesday Morning session I

 WG Highlights:

  * ROLL-Bier design team was presented, weekly meetings arranged to solve how to include BIER In RPL.
 
  * ROLL has to decide about topics such as if a new MOP is needed to signal hybrid approach (storing mode and non storing mode) for dao-projection draft.

  * The topics discussed by rpl observations raised the question to start an updated version of RFC 6550.



 WG Status Summary:

  * AD processing: draft-ietf-roll-useofrplinfo

  * WGLC:  draft-ietf-roll-efficient-npdao, draft-ietf-roll-aodv-rpl.

  * WGAdoption: draft-rahul-roll-rpl-observations

* WG draft presented:  draft-ietf-roll-efficient-npdao, draft-ietf-roll-aodv-rpl, draft-ietf-roll-dao-projection, draft-ietf-roll-mpl-yang

  * Individual draft presented: draft-koutsiamanis-roll-nsa-extension, draft-ji-roll-traffic-aware-objective-function, draft-thubert-roll-unaware-leaves, draft-rahul-roll-rpl-observations



## RTGWG

## SFC

## SIDR

## SPRING

Meeting Day/Time: Monday July 16th, 13:30-15:30

WG Highlights:
* Rechartering for SPRING is with the IESG - [https://datatracker.ietf.org/doc/charter-ietf-spring/ charter document]
* Core documents are progressing OK - albeit with some delay addressing comments - SR architecture is in AUTH48, SR-MPLS is in WGLC, LDP interop and MSDC are in IESG.
* SR-TE Policy draft was accepted by the WG since IETF 101, the document has been broken into multiple parts to ensure clarity.
* Work to clarify service chaining  - and the relationship between SR-based chaining and SFC/NSH-based chaining clarified. Jim Guichard and François Clad  presented drafts on this topic.
* Work to ensure the operability of SPRING networks continues to be a focus - multiple drafts on OAM, and performance measurement for both the SR-MPLS and SRv6 dataplanes have been brought to the WG.
* The SPRING YANG module is ready for YANG Doctor review.

Links: 
[https://datatracker.ietf.org/meeting/102/agenda/spring/]
[http://datatracker.ietf.org/wg/spring/charter/]
[http://etherpad.tools.ietf.org:9000/p/notes-ietf-102-spring?useMonospaceFont=true]

## TEAS

Meeting
* Wednesday 09:30 - 12:00

WG Highlights
* YANG Models:
  * TE-Topology: Almost ready to be an RFC.
  * TE/RSVP: Base models (almost) ready for LC.
* ACTN: Framework and Info model are in IESG processing.
* New Work: Adopted SF Aware Topology documents.
WG Status Summary
* Recent RFCs: 
  * RFC 8370: Techniques to Improve the Scalability of RSVP-TE Deployments
  * RFC 8400: Extensions to RSVP-TE for Label Switched Path (LSP) Egress Protection
  * RFC 8413: Framework for Scheduled Use of Resources
* RFC-Editor’s Queue:
  * draft-ietf-teas-actn-framework
  * draft-ietf-teas-actn-info-model
  * draft-ietf-teas-lsp-diversity
  * draft-ietf-teas-rsvp-ingress-protection
  * draft-ietf-teas-sr-rsvp-coexistence-rec
  * draft-ietf-teas-yang-te-topo
* AD Watch-list
  * draft-ietf-teas-actn-requirements
* Publication Requested: 
  * draft-ietf-teas-assoc-corouted-bidir-frr
* New Adoptions: 
  * draft-ietf-teas-actn-vn-yang                  
  * draft-ietf-teas-sf-aware-topo-model           
  * draft-ietf-teas-use-cases-sf-aware-topo-model
  * draft-ietf-teas-rsvp-rmr-extension 


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-08-29. It was migrated from the old Trac wiki on 2023-01-06.*

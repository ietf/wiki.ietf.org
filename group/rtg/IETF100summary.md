---
title: IETF 100 Routing Area Working Group High-Level Summary
description: 
published: true
date: 2023-01-06T00:59:28.055Z
tags: 
editor: markdown
dateCreated: 2023-01-06T00:59:22.963Z
---

# IETF 100 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 100


## Summary Template 
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
https://datatracker.ietf.org/meeting/100/agenda/xxx/
http://datatracker.ietf.org/wg/xxx/charter/ 
https://www.ietf.org/proceedings/100/xxx.html 


## BABEL

Meeting Thursday, 18:10-19:10

WG Highlights:  rfc6126bis, a strandards track update of the base BABEL protcol, is in WG LC and seems ready except for security. According to the BABEL Charter, rfc6126bis needs to include, or normatively reference, improved security.

WG Status Summary: rfc6126bis, the stadndards track update of the base BABEL protocol, is in WG LC.

Links: 
https://datatracker.ietf.org/meeting/100/materials/agenda-100-babel/
http://datatracker.ietf.org/wg/babel/charter/ 
https://www.ietf.org/proceedings/100/babel.html

## BESS

Meeting Day/Time:
Friday, 9:30-11:30

WG Highlights:
* WG still highly focused on improvements to EVPN and MVPN
* Expectation of tightened relationship with NVO3 as work on Geneve develops, with applicability statements in NVO3 and control plane solutions in BESS


WG Summary:
* 1 new RFC since last meeting
* 24 WG Documents
    * 10 WG Documents post WG LC (5 in chairs hands and 5 in ADs hands)
* 2 adoptions since last meeting

https://datatracker.ietf.org/meeting/100/proceedings#bess 

## BFD

BFD is not meeting at IETF100.

WG Highlights:
* BFD multipoint documents expired, will be refreshed soon. Received some feedback, awaiting some additional commentary from implementors.
* BFD Yang module revised. Fixed issue with interworking with IGP modules and made changes because of modifications in MPLE-TE model (NMDA). Next step is YANG Doctor review.
* BFD directed document in the MPLS working group still has some controversy. Impact on BFD if the work continues may require a RFC 5884 update.
* Three BFD related documents, ongoing discussions on how to progress on all 3 in parallel (different WGs):
 * draft-mirsky-spring-bfd
 * draft-mirsky-bfd-mpls-demand
 * draft-mirsky-p2mp-bfd
* Two BFD security documents, need to advance to WGLC for both:
 * draft-ietf-bfd-optimizing-authentication
 * draft-ietf-bfd-secure-sequence-numbers

## BIER

## CCAMP

Meeting: 
I session: 15:50-17:50 - Tuesday Afternoon session II
(23 drafts on agenda - we will meet twice @IETF 101)

WG Highlights:

* Microwave and millimiter wave DT closed: both framework and YANG model adopted. All uW major vendors involved.
* Transport NBI DT: use cases adopted. 2 drafts analysis presented. 
* YANG models updated: WSON, Flexi Grid, IPoWDM interface, OTN, microwave.
* New Work: Beyond 100G (G709v5), FlexE, YANG models for Client-layer Topology, Client-layer Tunnel and Optical Transport Network Client Signals

WG Status Summary: 

* RFC Editor’s Queue: draft-ietf-ccamp-flexible-grid-ospf-ext
* IESG processing: draft-ietf-ccamp-ospf-availability-extension
* 2 WG LC and 1 WG adoption to start immediately after the meeting

Links: 
https://datatracker.ietf.org/meeting/100/agenda/ccamp/
http://datatracker.ietf.org/wg/ccamp/charter/
https://www.ietf.org/proceedings/100/ccamp.html  


## DCROUTING
session: 09:30-12:00 - Wednesday Morning session

BOF intent
* Key question addressed with this BOF
  * Does it make sense for the IETF to increase focus on DC routing and operational specifics?
* Focus:
  * Provide ADs input on potential future actions for this developing problem space (modern DC)
  * Discovery of modern DCs needs regarding routing, management, resiliency, programming, operation, etc
  * It is not the direct intention of this BoF to form a general DC Routing WG (However, such result is not excluded)

WG Highlights:
* Requirements discussion (survey and room feedback) gave strong indication that the needs of modern DC need enhanced routing protocol behaviour
* Growing understanding that focus upon modern DC should not try to boil the ocean and focus upon a too large problem space
* Growing understanding that the problem space is too large to be addressed by a single solution
* The BOF room feedback leaned to a focus upon subsets of requirements and work upon technology to address those subsets instead of having the work executed within a generalized umbrella working group 
* questions answered during BOF provided visibility that both BGP-SPF & RIFT technologies had a fair number (+-20 people each) of supporters to further progress the work if it would be chartered 

## DETNET

Meeting Day/Time: Thursday. 9:30 AM

WG Highlights:
 * Trying to wrap up foundational drafts
 * Made progress on working through issues with data plane solution identified as part of WG adoption
   * DetNet CW / data plane (including protection)
 * Will start an adoption call on Detnet Flow Information Model draft-farkas-detnet-flow-information-model-02
 * Begining work on DetNet node and service paramter deffinition (for YANG model)

WG Status Summary:
  * One new WG draft: 	https://tools.ietf.org/html/draft-ietf-detnet-dp-sol-00

## I2RS

I2RS is wrapping up its work and going into haitus: 

I2RS had done WG LC on all the following yang modules in NMDA form. 
(topology, L3 topology, RIB) and RIB Informational model.
I2RS plans WG LC for the following modules in the next 6 weeks: 
L2 topology, Filter-based RIB, dc-fabric-network-topology. 

Our last remaining piece of work to complete is the ephemeral datastore module. 

One key piece of work we are moving over to the rtgwg is a dyanmic ephemeral 
module set (Info Model, Data Model) linked to BNG (next generation access). 
Next-Generation BNG tries to minimize edge access functions and move 
much of the filtering into VMs in the data-center.  The dynamic datastore 
functionality allows for configuration in VMs created for a split 
of Forwarding plane and Control plane. 
 
 
## IDR
IDR is considered BGP-LS extensions, Congestion
related Communities and BGP NMDA Yang model. 
 
BGP-LS additions for Entropy Labels, PCE Discovery, 
IPv6 Segment routing, service chaining (MPLS/IPv6). 

## ISIS

Meeting Day/Time: Thursday 09:30 - 12:00 

WG Status Summary: 
* RFCXXXX - Advertising L2 Bundle Member Link Attributes in IS-IS (MISREF draft-ietf-isis-segment-routing-extensions-13)

Of Interest:
* Question of adoption of draft-hegde-isis-advertising-te-protocols-03
* Joint Session with OSPF

##  L2TPEXT

* L2TPext is not meeting in Singapore
   • A seasonal WG with active and dormant times, that exists to extend and maintain the Layer 2 Tunneling Protocol (L2TP) and IP Pseudowires and access
* Update on Current work:
   *  Produced RFC 8159 (Keyed IPv6 Tunnel)
   * draft-ietf-l2tpext-keyed-v6-tunnel-yang-03 (A YANG Data Model for Keyed IPv6 Tunnels)
      * Is active, just refreshed, and next in the WG queue.

## LISP

Meeting Day/Time: Friday, November 17, 2017
9:30 - 11:30, Morning Session I (120 Minutes)
 

WG Highlights: 
   * Two documents have been adopted as WG items:
      * draft-farinacci-lisp-eid-anonymity-02.txt
      * draft-rodrigueznatal-lisp-vendor-lcaf-00.txt

WG Status Summary: 
   * Most important work items remain 6830bis and 6833bis. It seems that we are converging at least on the first one. The second should follow shortly.   
  * The LISP Security document (draft-ietf-lisp-sec-13.txt) came back from IESG with the request to move it directly from experimental to standard track, in accordance with the current charter.

Links: 
https://datatracker.ietf.org/doc/agenda-100-lisp/
http://datatracker.ietf.org/wg/lisp/charter/
https://datatracker.ietf.org/meeting/100/materials/minutes-100-lisp/



## MANET

* MANET will be meeting at 18:10-19:10 Thursday Afternoon session III in the Orchard room.

* Multiple DLEP (Dynamic Link Exchange Protocol) extension drafts are being considered for last call and a few others are being developed and introduced into the WG.
  * Rick Taylor will also be giving a presentation about DLEP what it is and why you might care in the open routing area meeting the session before MANET meets Thurs Afternoon II

* New RFCs since last MANET meeting (98th) RFC8116 OLSR Security Threats (I), RFC8175 DLEP (S), RFC8218 Multipath for OLSR (E), RFC8245 Packetbb Usage (S)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

## MPLS

Meeting Tuesday, November 14th,13:30pm - 15:30pm 

WG Highlights:  
* Five new RFCs
  * RFC8223 - Application-Aware Targeted LDP
  * RFC8227 - MPLS-TP Shared-Ring Protection (MSRP) Mechanism for Ring Topology
  * RFC8234 - Updates to MPLS Transport Profile (MPLS-TP) Linear Protection in Automatic Protection Switching (APS) Mode
  * RFC8256 - Requirements for Hitless MPLS Path Segment Monitoring
  * RFC8277 - Using BGP to Bind MPLS Labels to Address Prefixes
* Three new working Group documents
  * draft-ietf-mpls-rfc6374-sfl
  * draft-ietf-mpls-sfl-framework
  * draft-ietf-mpls-summary-frr-rsvpte

WG Status Summary: 
* Four (editorial) errata since IETF99
* Two liaisons to MPLS (from  BBF and  ITU) since IETF99
* Six missing progress reports for existing WG documents

Links: 
https://datatracker.ietf.org/meeting/100/agenda/mpls/ 
http://datatracker.ietf.org/wg/mpls/charter/ 
https://www.ietf.org/proceedings/100/mpls.html 


## NVO3

Met Wednesday November 15th at 1:30pm.
Having selected a standards track encapsulation (GENEVE), NVO3 is increasing focus on security and OAM support. 

WG Highlights:
- No new RFCs since last IETF
- Multicast framework with RFC editor
- Hope to send standards track encapsulation (GENEVE) to WG last call soon, but will need security and transport area reviews
- New OAM proposals for GENEVE, e.g. Alt-Mark and IOAM
- Security work for GENEVE is progressing
- First draft of an Applicability Statement for E-VPN for NVO3 

Links: 
https://datatracker.ietf.org/meeting/100/agenda/nvo3/ 
http://datatracker.ietf.org/wg/nvo3/charter/ 
https://www.ietf.org/proceedings/100/nvo3.html 

## OSPF

Meeting Thursday, November 16th at 9:30 AM: 

WG Highlights:  
* Joint Meeting with IS-IS for first time
* OSPF YANG Model Finished 
  * YANG Doctor review and WG last call pending
* OSPF Attribute discussion concluded
* Lots of maintenance and enhancement work
* Possible enhancements resulting from DC Routing BOF 

WG Status Summary: 
* OSPF Tunnel Encap on RFC Editor Queue awaiting IDR Tunnel Attributes
* OSPFv2 Segment Routing to IESG 
* OSPFv3 Extended LSAs completed WG Last 
  * Completely TLV based including legacy LSA content 

Links: 
https://datatracker.ietf.org/meeting/100/agenda/ospf/ 
http://datatracker.ietf.org/wg/ospf/charter/
https://www.ietf.org/proceedings/100/ospf.html 

## PALS

Meeting Day/Time: Monday, November 13, 17:40-18:40

WG Highlights:

* The primary focus of the WG continues to be draft-ietf-pals-ethernet-cw, which mandates the use of the Control Word for Ethernet pseudowires (PWs) if both endpoint routers support the Control Word. This is to prevent reordering problems that result from some core routers mistakenly applying ECMP to Ethernet PWs if they look below the MPLS header and see a first nibble of 0x4 or 0x6 in the Ethernet MAC address, and they mistake these packets for IPv4 or IPv6. This problem has been observed in the field. Use of the control word should prevent ECMP from being applied. Unfortunately, we've discovered that some vendors are doing DPI past the control word, and mostly getting it wrong, and we have to address that in the draft as well. Now that it's been adopted, PALS plans to liaise to our SDO partners (e.g., BBF, ITU-T SG15, IEEE 802.1&.3) to let them know about the work so they can plan appropriate action.

• IESG review of draft-ietf-pals-p2mp-pw (which references PW signaling using LDP) had been stalled on the issue of LDP security still relying on MD5, which isn't the responsibility of the PALS WG. The PALS and MPLS WG Chairs are working with Deborah and the SEC ADs to formulate a draft for LDP security to bring it up to current best practices, and the draft has been updated to reflect this.

WG Status Summary:

* Two new RFCs since IETF 99.
   * WG has published 16 RFCs since November 2015.

* One draft in the RFC Editor's queue.

* One draft in IESG review and processing (see above).

* draft-ietf-pals-ethernet-cw is our last active WG draft. Once we finish that, we can contemplate the WG's next step.

Links: 
https://datatracker.ietf.org/meeting/100/materials/agenda-100-pals/ 
http://datatracker.ietf.org/wg/pals/charter/ 
https://datatracker.ietf.org/meeting/100/materials/minutes-100-pals/ 

## PCE

PCE met on Monday, November 13th, 15:50-17:20, in Sophia

Major milestones:
* We published the stateful PCE extensions! [RFC8231]
* Also published secure PCEP (PCEPS aka PCEP over TLS) [RFC8253]

Other WG status:
* Two other RFCs published
  * [RFC8232] LSP state synchronization optimizations
  * [RFC8233] PCEP extensions for service-aware LSPs
* Rapid progress is being made on several fronts
  * 3 documents with RFC editor
  * 1 document with IESG
  * 4 documents have passed WGLC

WG highlights:
* Applying stateful PCE to many applications
  * Associated bidirectional LSPs
  * E2E protection
  * LSP scheduling
  * etc. etc.
* New direction - PCE as a central controller
  * Follows architecture work in TEAS
  * Extends PCEP to work as southbound interface from a network controller

Links: 
https://datatracker.ietf.org/meeting/100/agenda/pce/
http://datatracker.ietf.org/wg/pce/charter/ 
https://www.ietf.org/proceedings/100/pce.html 

## PIM

PIM met on Tuesday 9:30-12:00

WG highlights:
* Good progress with yang models for pim and igmp/mld. 
* Publication requested for PIM YANG which is updated to NMDA
* Will continue meeting jointly with MBONED which is working great
* Good progress with DR related work
* Non PIM work, such as BIER, presented at PIM for expertise
* Publication requested for a couple of drafts

WG Status:
* Continue YANG models and work on improvements to PIM, IGMP/MLD as it makes sense


## ROLL

Agenda of the ROLL  WG

Date: Wednesday, November 15, 2017 

Time: 13:30-15:00 Wednesday Afternoon session I 

WGLC: draft-ietf-roll-useofrplinfo (update 6550, 6553, 8183), 	
draft-ietf-roll-aodv-rpl-02 

New topics: RPL DAG Metric Container (MC) Node State and Attribute (NSA) object type extension,
Use of Bitmaps and Bloom Filters (BBF) for routing tables and headers,

Expired drafts: Looking for coauthoring.

Wiki information on DODAG manipulating RPL drafts.


## RTGWG

RTGWG met Monday 9:30-12:00 and Thursday 13:30-15:30

WG Highlights:
 
Initial wave of YANG models done in RTGWG are finishing up.
* First wave: key chains, VRRP, RIP, routing types, logical network element, network instance
* Second wave ? : RIB, QOS, policy
* Routing Area Yang Design Team plans to disband before IETF101. (Mission Accomplished!)

Micro-loop prevention solutions: 
* local delay (IESG), 
* standard SPF backoff algorithm (near WG last call )
* two potential tunneling solutions (individual drafts)

## SFC

SFC WG met on Tuesday, November 14th 09:30 - 12:00

Major milestones:
* draft-ietf-sfc-nsh-28 now in RFC editor queue

WG highlights:
* Major focus of the WG leading up to the Singapore meeting has been to get the SFC encapsulation work completed; this is now done with the NSH document waiting for RFC publication. 
* Further updates to the OAM framework document have been done and several discussions to progress OAM work through the WG, both SFC OAM and in-situ OAM are being actively discussed.
* WG now evaluating re-charter so that additional important work can be tackled; the WG chairs will send out preliminary focal areas to the WG with a plan to re-charter before the next meeting in London.

## SIDR

Meeting Day/Time:  not meeting

WG Highlights:  

* documents addressing three operational protocols were published just after IETF99
* the document set that specifies path validation (BGPsec) was published in September
* a small set of documents still active, finishing wg work

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF)

 * three RFCs published just after IETF99
  * RFC 8181 A Publication Protocol for the Resource Public Key Infrastructure (RPKI)
  * RFC 8182  The RPKI Repository Delta Protocol (RRDP)
  * RFC 8183  An Out-of-Band Setup Protocol for Resource Public Key Infrastructure (RPKI) Production Services

* seven RFCs published in Sep describing BGPsec
  * RFC 8205  BGPsec Protocol Specification
  * RFC 8206  BGPsec Considerations for Autonomous System (AS) Migration
  * RFC 8207 BGPsec Operational Considerations
  * RFC 8208  BGPsec Algorithms, Key Formats, and Signature Formats
  * RFC 8209  A Profile for BGPsec Router Certificates, Certificate Revocation Lists, and Certification Requests
  * RFC 8210  The Resource Public Key Infrastructure (RPKI) to Router Protocol, Version 1
  * RFC 8211  Adverse Actions by a Certification Authority (CA) or Repository Manager in the Resource Public Key Infrastructure (RPKI)

* three drafts still active
  * one addressing IESG review comments,  draft-ietf-sidr-rpki-validation-reconsidered-09 
  * one  in Routing AD hands, publication requested,  draft-ietf-sidr-slurm-04 
  * one finished wglc, addressing wglc comments,  draft-ietf-sidr-rtr-keying-14 

Links: 
* No Agenda, not meeting
* http://datatracker.ietf.org/wg/sidr/charter/ 
* No Minutes, not meeting


## SPRING

Meeting: Wed. 15:20-16:50

Highlights:
* 5 documents progressing to IESG: IESG telechart 2017-12-14
* 1 document returning to WG to review the changes.
* New topics emergings: SR based Service Chaining, Path identification
* Reinforcing the need for rechartering discussion.

WG status:
* 0 WG adoption
* 0 new RFC
* 1 WGLC

https://datatracker.ietf.org/meeting/100/proceedings#spring

## TEAS

Meeting
* Tuesday 09:30 - 12:00

WG Highlights
* YANG Models:
  * TE-Topology: WG LC complete
  * TE/RSVP: NMDA Compliant; Base models are stable
* ACTN: Framework, Requirements and Info Model drafts are ready for WG LC.
* SR-RSVP Co-existence: WG LC complete for draft discussing options for SR-RSVP Co-existence .

WG Status Summary
* Recent RFCs: 
  * RFC8258 - Generalized SCSI: A Generic Structure for Interface Switching Capability Descriptor (ISCD)
  * RFC8271 - Updates to the Resource Reservation Protocol for Fast Reroute of Traffic Engineering GMPLS Label Switched Paths
* RFC-Editor’s Queue:
  * draft-ietf-teas-pce-central-control
* Publication Requested: 
  * draft-ietf-teas-lsp-diversity 
  * draft-ietf-teas-network-assigned-upstream-label
  * draft-ietf-teas-rsvp-te-scaling-rec
  * draft-ietf-teas-rsvp-egress-protection
  * draft-ietf-teas-rsvp-ingress-protection
* New Adoptions: 
  * draft-ietf-teas-actn-yang
  * draft-ietf-teas-yang-path-computation

## TRILL
Meeting Day/Time:
Monday, 13 November, 17:40 - 18:40

TRILL is in the process of completing its charter work. As a result, the TRILL WG will be forwarding 15+ documents and 3 yang documents.

In addition, we are closing out additions for directory mechanisms, multi-topology, multi-level, ECN, and group keying. 

Current Status:

   We have 3 at the IESG, 4 in shepherd review write-up, 3 in WG LC, 5 in pre-WG LC review, as well as 3 yang modules in rewrite for NMDA. 

We greatly appreciate those who are and will help us with reviews (RTG-DIR, OPS-DIR, SEC-DIR, GEN-ART)
and especially our swamped AD (Alia Atlas).


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-11-16. It was migrated from the old Trac wiki on 2023-01-05.*
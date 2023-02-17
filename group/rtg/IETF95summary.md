---
title: IETF 95 Summary
description: 
published: true
date: 2023-01-05T00:13:17.213Z
tags: 
editor: markdown
dateCreated: 2022-12-23T00:53:57.892Z
---

# IETF 95 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 95


## Summary Template 
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
[Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-94-xxx)
[WG Charter](http://datatracker.ietf.org/wg/xxx/charter/)
[Minutes](https://www.ietf.org/proceedings/95/xxx.html)


## BABEL
Meeting !Day/Time:  MOnday, April 4, 2016 1550-1720

WG Highlights:  Presentation of topic and proposed charter

WG Status Summary: Indication of good support for writers and reviewers;  Strong support for forming a working group, with some dissent.

Links: 
[Agenda](https://datatracker.ietf.org/meeting/95/agenda/babel/)
[draft BoF Charter](https://datatracker.ietf.org/group/babel/charter/)
[Minutes](https://www.ietf.org/proceedings/95/xxx.html)

## BESS
Meeting: Thursday, 7th of April, Afternoon session I 14:00-16:00

### WG Highlights 
Still more requests than we could accommodate for in 2h. Reflects good dynamics of the group and enables for prioritization of topics to discuss.

One implementation policy has been setup

Late IPR becoming common

EVPN/DC remains big topic
MVPN continues to be a work item
Yang is maturing
Proposals popping up around automation and OAM


### WG Status Summary 
Pretty dense inter-meeting period:
4 new RFCs
* RFC 7716 Global Table Multicast with BGP Multicast VPN (BGP-MVPN) Procedures
* RFC 7734 Support for Shortest Path Bridging MAC Mode over Ethernet VPN (EVPN)
* RFC 7740 Simulating Partial Mesh of Multipoint-to-Multipoint (MP2MP) Provider Tunnels with Ingress Replication
* RFC 7814 Virtual Subnet: A BGP/MPLS IP VPN-Based Subnet Extension Solution

3 WG Last Calls

5 drafts adopted as WG documents

1 draft not adopted as WG document

## BFD

Working Group Status. [BFD Wiki](/group/bfd/)

Not meeting in Buenos Aires

### New RFCs: 
 * RFC 7726 - Clarifying Procedures for Establishing BFD Sessions for MPLS Label Switched Paths (LSPs)

### Existing Work: 

Multipoint work stable, getting implementations for base spec.  Trill has dependency on active head case.  Technically ready for WGLC, but no consensus to move forward last IETF-94.

S(eamless)-BFD documents all working their way through the IESG queue.
 * We decided to publish the Use Cases draft.
 * Documents flagged for language clarification editorial work.
 * Various related support drafts in other Working Groups also in IESG:
   - draft-ietf-pals-seamless-vccv 
   - draft-ietf-isis-sbfd-discriminator 
   - draft-ietf-l2tpext-sbfd-discriminator
   - draft-ietf-ospf-sbfd-discriminator

BFD MPLS MIB stalled.

Crypto:
 * Generic keying mehanism stalled.
 * SHA-1 similarly stalled.
 * New work on optimizing authentication - some progress, needs discussion with security area.

BFD Yang, no progress since last IETF.

### Potential new work: 
 * BFD multi-chassis LAG.  Logical extension on existing BFD on LAG work.
   - draft-tanmir-rtgwg-bfd-mc-lag-ip-00
   - draft-tanmir-rtgwg-bfd-mc-lag-mpls-00

### Work on BFD outside of Working Group: 
 * draft-nitish-vrrp-bfd-02 - proposals for p2p and p2mp BFD use merged, requires editorial clarifications to make specific use cases clear as to why you'd use each feature.
 * draft-ietf-mpls-bfd-directed-02 - apparently stalled in mpls during WGLC?




## BIER

Meeting on Wednesday 

WG Highlights: 
  * Discussion about adoption of several drafts as WG items
  * Discussion about possible move to STANDARDS track 
  * Things are going generally well (looks like things are on track, ahead of schedule, under budget) 

## CCAMP
Meeting: Monday - 14:00-15:30 - Afternoon session I

WG Highlights:  
 * First YANG draft adopted (WSON), 1 individual draft (IP-WDM if), 3 brand new drafts (microwave, WDM management and transport NBI). Coordination with TEAS needed for the latter. 
 * Black links work turned into Management and Control of DWDM optical interfaces parameters: Framework WG-adopted
 * 2 Brand new topics: microwave, flexible ethernet. 

WG Status Summary: 
 * Recent RFCs: 
   * RFC 7688: draft-ietf-ccamp-wson-signal-compatibility-ospf 
   * RFC 7689: draft-ietf-ccamp-wson-signaling 
   * RFC 7698: draft-ietf-ccamp-flexi-grid-fwk
   * RFC 7699: draft-ietf-ccamp-flexigrid-lambda-label  
   * RFC 7792: draft-ietf-ccamp-flexible-grid-rsvp-te-ext 
 * Errata: RRO in place of ERO in Section 5.2.1 of RFC3473
 * Editor queue: -
 * IESG Processing: draft-ietf-ccamp-otn-signal-type-subregistry
 * Liaison: 
   * From ITU-T SG15: Received 8th, March 2016, “LS on ITU-T SG15 OTNT standardization work plan” 
   * To BBF: Sent 02th, December, 2015, “ In Response to Broadband Forum Liaison: Achieving Packet Network Optimization using DWDM Interfaces”
   * To BBF: Sent 02th, February, 2016, “Response to 18 Dec 2016 liaison concerning: Achieving Packet Network 

Links: 
[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-95-ccamp)
[WG Charter](http://datatracker.ietf.org/wg/ccamp/charter/)
[Minutes](https://www.ietf.org/proceedings/94/ccamp.html)

## DETNET
Met: Tuesday April 5, 2016  
10:00-12:30 Tuesday Morning session I  

* Covered:
  - Updates to draft-ietf-detnet-use-cases
  - Initial alternatives draft from data plane design team: draft-dt-detnet-dp-alt
  - Had good discussion on target DetNet service and terminology
  - Moving towards adopting draft-finn-detnet-architecture (after next revision)

* draft-ietf-detnet-problem-statement-00 recently adopted

Links: 
[Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-95-detnet)
[WG Charter](http://datatracker.ietf.org/wg/detnet/charter/)
[Raw Notes](http://etherpad.tools.ietf.org:9000/p/notes-ietf-95-detnet)

## I2RS
* I2RS is a "re-use" protocol where the goal is to re-use and extend 
  a protocol rather than create new one. 

* This process takes a different path: define the problem, 
  the new architecture, the potential "re-use" protocols,
  the requirements for extension, the security for the protocol
  the security environment, and the protocol "strawman"
  that describes how the "new protocol" comes from the old protocol.
  This mechanism means that we do not "re-invent" the protocols,
  and hopefully speed things to market. 

* One challenge/benefit with this process is it takes a great 
  deal cooperation/flexibility between "old protocol" and "new protocol"
  developers. 

* The second challenge is that the process of finalizing 
  the work requires a lot of "double-checking" to make 
  sure all the necessary changes. 

* In 2015, we finalized the general scope of 
  the problem, architecture, two potential "re-use" 
  protocol (NETCONF/RESTCONF), the extensions, 
  the security, and the security environment, 
  a protocol strawman, and our base yang modules. 

* IETF 95 focused on checking to see if we needed
  another "re-use protocol", checking to see if the 
  all the requirements and protocol strawman are 
  ready to go to netconf or netmod.  

* netmod/restconf chairs/experts + security have been very helpful and cooperative. 

* At the same time, the IETF hackathon had 
  two projects (NETCONF push) and the I2RS 
  RIB Yang model project that made significant progress
  in getting an open source project up and working.

## IDR
IDR 4/5 10:00-12:30am 
Topics: 
*1) Protecting BGP against Bogus things 
*1a) route leaks - Mitigation + Detection/Filtering  
* draft-ietf-idr-route-leak-detection-mitigation-02.txt
* draft-ymbk-idr-bgp-open-policy-00

*1b) Bogus Attribute bits  
draft-keyupate-idr-bgp-attribute-announcement-00.txt

*2) Updates/revisions BGP-LS, Aids to Segment Routing, New Communities, Add Paths  
* draft-gredler-idr-bgp-ls-segment-routing-ext [9 minutes]
* draft-ietf-idr-bgpls-segment-routing-epe-02.txt 
* draft-ietf-idr-te-lsp-distribution-04.txt
* draft-li-idr-congestion-status-extended-community-00.txt
* draft-keyupate-idr-bgp-selective-add-paths

*3) Tunnels Create aid in BGP 
draft-dong-idr-ls-ip-tunnel-00 [11:15-11:25]

*3) Policy in BGP 
*3a) BGP Flow Specification (BGP-FS ) is revising RFC 5575 (aka Policy in BGP )
 to add RFC5575 filters and actions in two ways.  We have 15 drafts requesting 
 these changes 
* Option 1:  Just extend  RFC5575 (DDoS use case)   
* Option 2:  New NLRI + BGP Wide Communities (NFV/central control)
* For option 2, the IDR chairs are asking for providers to let us know their needs. 

* 3b) TE policy in BGP 
* draft-previdi-idr-segment-routing-te-policy-00. 

*4) Requests from Data Center Providers on Aids in BGP 
* 4a)draft-lapukhov-bgp-opaque-signaling-01.txt
* 4b)draft-lapukhov-bgp-ila-afi-00.txt 
 
*PlanneIDR Interims before IETF96: 5/2/2016 6/6/2016, 6/27/2016 
* Interim topics:  Flow Specification + Yang + (your topic here)

## ISIS
* Not meeting in Buenos Aires
* New RFCS
  - RFC 7775 - IS-IS Route Preference for Extended IP and IPv6 Reachability
  - RFC 7794 - IS-IS Prefix Attributes for Extended IPv4 and IPv6 Reachability
  - (imminent) - draft-ietf-isis-sbfd-discriminator-02
* Submitted to IESG
  - draft-ietf-isis-node-admin-tag-08
  - (AUTH48) draft-ietf-isis-pcr-05
  - (AUTH48) draft-ietf-isis-te-metric-extensions-11
* WG Last Call
  - draft-ietf-isis-remaining-lifetime-00
  - draft-ietf-isis-rfc4971bis-00
  - draft-ietf-isis-l2bundles-01
* WG Adoption Call
  - draft-xu-isis-encapsulation-cap-06
* Noteworthy
  - Declined to adopt flowspec, other methods like netconf/yang instead.
* New IDs
  - draft-chen-isis-rfc5316bis-00               
  - draft-previdi-isis-ipv6-prefix-sid-01       
  - draft-ginsberg-isis-mi-bis-00               
  - draft-shen-isis-geo-coordinates-01          
  - draft-tantsura-isis-segment-routing-msd-00  
  - draft-li-isis-spp-extensions-00             

## L2TPEXT
* L2TPext is not meeting in Buenos Aires.
* Update on Current work:
   *  draft-ietf-l2tpext-keyed-ipv6-tunnel-06 (Keyed IPv6 Tunnel)
      * Publication requested, working through RTGDir Review comments.
   * draft-ietf-l2tpext-keyed-v6-tunnel-yang-01 (A YANG Data Model for Keyed IPv6 Tunnels)
      * I-D Exists, complements the above item.
   *  draft-ietf-l2tpext-sbfd-discriminator-03 (Advertising S-BFD Discriminators in L2TPv3)
      * In IETF LC
   * draft-shen-l2tpext-l2tpv3-yang-model-03 (A YANG Data Model for L2TPv3 Tunnel)
      * I-D Exists.
   *  draft-ietf-pals-seamless-vccv-02 (Seamless BFD for VCCV)
      * Related but advancing in PALS
      * In IETF LC


## LISP
* Meeting: Thursday, April 3, 17:30, Room Atlantico B

* WG Highlights:
  * The WG group is rechartering
    * The proposed Charter, under review by the IESG, is now ready for External Review.
 
* WG Status Summary:
  * No new RFCs
  * LISP DDT revised document needed (fixing comment from document shepherd)
  * LCAF Document has been stable for a while and seems good to move forward.
  * The EID Block and EID Block Management document have been move forward for publication.
  * This make a total of 5 documents in the RFC Editor Queue. 
   
* Links: 
  * WG Charter: http://datatracker.ietf.org/wg/lisp/charter
  * Agenda: http://tools.ietf.org/wg/lisp/agendal
  * Minutes : http://tools.ietf.org/wg/lisp/minutes




## MANET
* MANET is not meeting in Buenos Aires.
* WG Highlights: 
    * DLEP (Dynamic Link Exchange Protocol) finished last call and has been 
      passed out of working group.  
    * AODVv2 is the last remaining charter item to complete.  Work is ongoing and will be last 
      called soon.
    * New work on informational RFC5444 usage draft started.

* WG Status Summary:
    Drafts Published:
    * RFC 7722 (was draft-ietf-manet-olsrv2-multitopology)
        * Experimental RFC
    Drafts submitted to IESG for Publication: 
    * draft-ietf-manet-rfc6779bis
        * AD Evaluation::Revised I-D Needed
        * Proposed Standard
    * draft-ietf-manet-olsrv2-dat-metric
        * RFC Ed Queue : AUTH48
        * Experimental
    * draft-ietf-manet-ibs
        * RFC Ed Queue : EDIT
        * Experimental
    * draft-ietf-manet-dlep
        * Publication Requested
        * Proposed Standard
    * draft-ietf-manet-credit-window
        * Publication Requested
        * Proposed Standard
    Existing WG documents:
    * draft-ietf-manet-aodvv2              (to be last called soon)
    * draft-ietf-manet-olsrv2-multipath    (to be last called soon)
    * draft-ietf-manet-olsrv2-sec-threats  (to be last called soon)
    * draft-ietf-manet-rfc5444-usage       (new work)
    * draft-ietf-manet-smf-sec-threats     (past last call to be submitted)
* Links: 
 * [WG Charter](http://datatracker.ietf.org/wg/manet/charter/)

## MPLS

* MPLS is  meeting Wednesday morning in Buenos Aires.
  * We also have a joint meeting with TEAS, PCE and CCAMP on common
    interest in YANG models.
* WG Highlights: 
    * 6 New RFCs, 19 wg documents (including 2 in IESG review).
    * 3 new errata - 1 verified, 2 held for updates
    * 1 wglc, that failed to reach consensus.
    * Three core bis-draft in progress
       * draft-ijln-mpls-rfc5036bis (new version will posted this week)
       * draft-ietf-mpls-rfc4379bis
       * draft-rosen-mpls-rfc3107bis

Links: 
   * [Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-95-mpls)
   * [WG Charter](http://datatracker.ietf.org/wg/mpls/charter/)
   * [Minutes](https://www.ietf.org/proceedings/95/mpls.html)

## NVO3
NVO3 met on Monday (4-APR) at 14:00.

WG Highlights:
   - Planning to revise milestones with 2016 dates, aim for WG completion this year.
   - Called for volunteers to help organize interoperability-focused interim meetings culminating in a public demo.

WG Status:
   - No new RFCs since last meeting.
   - A couple documents survived WGLC with comments, to be followed-up by Chairs.
   - "Split NVE" control plane work underway in IEEE, following liaison from NVO3.

## OSPF
Meeting Thursday/14:00 - Quebracho A

WG Highlights:  
 * OSPFv2 Segment Routing with multiple vendor and open source implementations is ready for WG Last Call. 
 * OSPFv2 YANG model offers a full function OSPF model with multi-vendor participation. 
 * OSPF TTZ Publication Requested as Experimental RFC 
 * OSPFv3 Extended LSA implementations rumored 
 * Come to meetings to here about interesting new work!!!  

WG Status Summary: 
 * Recent RFCs: 
   - RFC 7684 - OSPFv2 Prefix/Link Attributes
   - RFC 7770 - Extensions to OSPF for Advertising Optional Router Capabilities (RFC4970Bis)
   - RFC 7777 - OSPF Node Admin Tag
 * IESG Processing: 
   - OSPF TTZ 
   - OSPF S-BFD Discriminator 
 * Drafts completed WG Last Call
   - OSPF 2-part Metric
   - OSPFv3 over IPv4 
Links: 
   * [Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-95-ospf)
   * [WG Charter](http://datatracker.ietf.org/wg/ospf/charter/)
   * [Minutes](https://www.ietf.org/proceedings/95/ospf.html)

## PALS
Meeting: Tuesday - 16:20-17:20 - Afternoon session II

WG Highlights:  
 * Lots of productivity; since last IETF, six RFCs published, four drafts with the IESG, one that's completed WG LC. Thanks to Deborah, document shepherds, and authors.
 * Concentrating on dual homing protection, P2MP PWs, and Yang models.

WG Status Summary: 
 * New RFCs: 
   * RFC 7708: draft-ietf-pals-vccv-for-gal 
   * RFC 7727: draft-ietf-pwe3-iccp-stp 
   * RFC 7769: draft-ietf-pals-mpls-tp-mac-wd
   * RFC 7771: draft-ietf-pals-ms-pw-protection  
   * RFC 7795: draft-ietf-pals-redundancy-spe 
   * RFC 7796: draft-ietf-l2vpn-vpls-pe-etree 
 * Editor queue: -
 * IESG Processing: 
   * draft-ietf-pals-congcons (revised ID needed)
   * draft-ietf-pals-rfc4447bis (response to review comments required)
   * draft-ietf-pals-seamless-vccv-02 (in IETF last call)
   * draft-ietf-pals-mpls-tp-pw-over-bidir-lsp-06 (AD action required)
 * Completed WG LC:
   * draft-ietf-pals-endpoint-fast-protection-02 (shepherd action required) 
 
Links: 
[Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-95-pals)
[WG Charter](https://datatracker.ietf.org/wg/pals/charter/)
[Minutes](https://www.ietf.org/proceedings/95/pals.html)

## PCE
Meetings:
* Tuesday - 17:40-19:10 - Afternoon Session III (joint with TEAS,MPLS)
* Wednesday - 14:00-16:00 - Afternoon session I

WG Highlights:  
 * Stateful PCE base draft - almost ready to be forwarded to the IESG.
 * PCEP-over-TLS passed WG last call
 * Lots of new work items being brought to the WG
   * Service chaining
   * PCE as a central controller
   * Hierarchical-stateful / Hierarchical SDN
   * Virtual networks / ACTN

WG Status Summary: 
 * No new RFCs 
 * RFC Editor queue: draft-ietf-pce-pcep-domain-sequence
 * IESG Processing: draft-ietf-pce-iro-update

Links: 
 * [Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-95-pce)
 * [WG Charter](https://datatracker.ietf.org/wg/pce/charter)
 * [Minutes](https://www.ietf.org/proceedings/95/pce.html)

## PIM
Meeting Day/Time: Wednesday, April 6th, 2016, 1000-1230

WG Highlights:

* Published 4601bis pim-sm as Internet Standard
* One draft about to be published and one in IETF last call
* 5 other active WG drafts and many drafts to be considered for adoption
* YANG models for pim and igmp/mld. Would like additional review from YANG experts, waiting for other models to completed.

Links: 
[https://www.ietf.org/proceedings/95/agenda/agenda-95-pim Agenda]
[http://datatracker.ietf.org/wg/pim/charter/ WG Charter]
[https://www.ietf.org/proceedings/95/pim.html  Minutes]


## ROLL
* In Buenos Aires: Date: Tuesday, April 5, 2016 (ART). 
* Time: 16:20-17:20 - Tuesday Afternoon session II
WG Highlights:  
 * Four new RFCs: RFC7731,RFC7732,RFC7733, and RFC7774

Active Internet Drafts
* draft-ietf-roll-routing-dispatch-00 -- In WG LC 
* draft-ietf-roll-useofrplinfo-02 
* draft-ietf-roll-applicability-ami-12 --  Submitted to IESG
* WG Re charter discussion
* Related Internet-Drafts
* draft-jadhav-roll-no-path-dao-ps-00- No-Path DAO Problem Statement -- presented in IETF 95
* draft-thubert-roll-dao-projection-02 - Root initiated routing state in RPL
* draft-turner-roll-dio-ctx-00 - RPL DIO Option for Specifying Compression Contexts
* draft-vanderstok-roll-mpl-yang-00 - A YANG model for Multicast Protocol for Low power and lossy Networks (MPL) -- presented in IETF 95
* draft-wang-roll-adaptive-data-aggregation-00 - Design of Adaptive Data Aggregation Schemes
* draft-zhong-roll-dis-modifications-00  - DIS Modifications


## RTGWG

Meeting Thursday/10:00 
 * IPv6 PA multi-homing and dest/source routing
 * IP FRR and microloop avoidance topics
 * Overlay OAM design team 
 * Dataplane probes

Meeting Friday/10:00 
 * YANG models
 * Routing Area YANG Architecture design team
 * Identifier Locator Addressing

WG Highlights: 
 * IPv6 multi-homing with provider-assigned addressing: Work on dest/source routing in RTGWG had been motivated mainly by homenet. RTGWG got a request from v6ops to address the more general case of multi-homing medium-range networks.  Discussion ongoing regarding requirements routing based on source prefix for an arbitrary destination prefix vs. only for the default destination prefix. 
 * RTGWG has several YANG models.  Looking for advice for YANG DT regarding impact of opstate and schema mount changes on those models.
 * Two WG drafts related to micro-loop avoidance are being implemented.  We are incorporating experience from those implementations in the drafts.

WG Status Summary: 
 * draft in IESG and beyond
   - draft-ietf-rtgwg-mrt-frr-algorithm and draft-ietf-rtgwg-mrt-frr-architecture - approved by IESG, now in AUTH48
   - draft-ietf-rtgwg-bgp-routing-large-dc - submitted to IESG

 * Microloop-related drafts
   - draft-ietf-rtgwg-backoff-algo - planning to incorporate implementation feedback
   - draft-ietf-rtgwg-uloop-delay - planning to incorporate implementation feedback
   - draft-ietf-rtgwg-spf-uloop-pb-statement - poll for WGLC in a few weeks

 * Dest/source routing
   - draft-ietf-rtgwg-dst-src-routing - homenet vs. more general v6ops requirements and generic dest/source routing vs. simplified dest/source routing

 * YANG models
   - WG documents
     * draft-ietf-rtgwg-yang-key-chain
     * draft-ietf-rtgwg-yang-rip
     * draft-ietf-rtgwg-policy-model
   - Several non-WG documents
   - Possible dependence on opstate and schema mount developments

 * Other
   - draft-ietf-rtgwg-ipfrr-ip-mib - WG discussing whether or not to progress


Links: 
   * [https://www.ietf.org/proceedings/95/agenda/agenda-95-rtgwg Agenda]
   * [http://datatracker.ietf.org/wg/rtgwg/charter/ WG Charter]
   * [https://www.ietf.org/proceedings/95/rtgwg.html  Minutes]


## SFC
Meeting: 17:40-19:40 	Monday Afternoon session III 

WG Highlights:
  * NSH as one key document started WGLC
  * planning for a virtual interim after this IETF meeting to ensure WG progress

WG Status:
 * Current active WG documents
   * draft-ietf-sfc-control-plane: Short before WGLC, sorting out authorship, as too many are listed on author list
   * draft-ietf-sfc-dc-use-cases: active
   * draft-ietf-sfc-nsh: WGLC just started, discussed at the meeting
   * draft-ietf-sfc-oam-framework: active
   * draft-ietf-sfc-use-case-mobility: updated required, next one in WGLC
 * Non-WG, but notable:
   * draft-mglt-sfc-security-environment-req: First attempt to address the IESG requirement to work on SFC security.

## SIDR

Meeting
* Session 1: Monday Afternoon session I
* Session 2: Wednesday Afternoon session I

WG Highlights: unusual level of activity since last IETF - 2 drafts through wglc, publication requested for three others, one RFC published, good substantive reviews to BGPsec protocol)

WG Status Summary:
* RFCs published: 1 (RFC 7730)
* wglc issued: 2 (no issues, awaiting shepherd writeup for publication requests)
  *  draft-ietf-sidr-rfc6485bis
  *  draft-ietf-sidr-bgpsec-15
* adoption calls: 1
  *  draft-kent-sidr-adverse-actions-02
* new drafts: 1
  *  draft-ietf-sidr-rpki-tree-validation
* publication requested: 3 (one in IETF Last Call)
  *  draft-ietf-sidr-as-migration
  *  draft-ietf-sidr-rpki-rtr-rfc6810-bis
  *  draft-ietf-sidr-rpsl-sig
* past wglc: 3 (have been or are still awaiting activity in other drafts or wg)
  *  draft-ietf-sidr-bgpsec-overview
  *  draft-ietf-sidr-bgpsec-algs
  *  draft-ietf-sidr-origin-validation-signaling

Links: 
   * [https://www.ietf.org/proceedings/95/agenda/agenda-95-sidr]
   * [https://datatracker.ietf.org/group/sidr/charter/]
   * [http://etherpad.tools.ietf.org:9000/p/notes-ietf-95-sidr?useMonospaceFont=true]



## SPRING

Meeting !Day/Time:  Tuesday, April 5, 2016, 14:00 - 16:00

WG Highlights: 
* Existing work
  * Segment Routing Conflict Resolution (long discussion this meeting)
  * Adoption call to start after -01 issued, next week
* New (not currently chartered):
  * MCast, packet-optical, node protection, etc.
* Short-term work plan:
  * Use case and related documents, with a goal of significant progress (completion?) by IETF-96
  * Architecture, MPLS instantiation, LDP interop

WG Status Summary: 
* draft-ietf-spring-problem-statement with IESG, multiple updates to resolve discusses, optimistic it's done or nearly so
* draft-ietf-spring-oam-usecase WGLC to begin this week

Links: 
[https://www.ietf.org/proceedings/95/agenda/agenda-95-spring Agenda]
[https://datatracker.ietf.org/wg/spring/charter/ WG Charter]
[http://etherpad.tools.ietf.org:9000/p/notes-ietf-95-spring  Minutes]

## TEAS
Meeting(s): 
 * Regular Session: Monday - Morning Session I - 10:00-12:30 
 * Joint Session with MPLS/PCE/CCAMP: Tuesday - Afternoon Session II - 17:40-19:10 

WG Highlights:
 * Interim Meeting (Jan 28th 2016):
  * Scope: Focus on RSVP Ingress-Protection & Egress-Protection Drafts.
   * Conclusions:
    * draft-ietf-teas-rsvp-ingress-protection
     * Interest in ensuring that a particular problem is documented.
     * No support (at this time) for new Standards Track mechanisms.
    * draft-ietf-teas-rsvp-egress-protection
     * Discussion deferred (lack of time).
   
 * YANG Models:
  * TE-Topology Data Model:
   * Focus on Transitional-Links and Inter-Layer-Locks.
  * RSVP/TE Data Models:
   * Focus on structure and relationship of various models.

WG Status Summary:
 * New RFCs:
  * RFC 7709 draft-ietf-teas-fast-lsps-requirements
  * RFC 7823 draft-ietf-teas-te-express-path
 * RFC-Editor’s Queue:
  * draft-ietf-teas-rsvp-te-domain-subobjects
 * IESG Processing:
  * draft-ietf-teas-interconnected-te-info-exchange-04
  * draft-ietf-teas-rsvp-te-srlg-collect-04

Links:
 * [https://www.ietf.org/proceedings/95/agenda/agenda-95-teas Agenda]
 * [https://datatracker.ietf.org/wg/teas/charter/ WG Charter]
 * [https://www.ietf.org/proceedings/95/teas.html Minutes]

## TRILL

 Trill 4/6/2016 10:00 - 14:00 

* Trill is making great progress on standardizing Aids to scale and deploy TRILL
  * 1) Standardize OAM 
  * 2) Active-Active at the TRILL edge
  * 3) Multi-destination frame reduction / Directory
  * 4) TRILL over Pseudowires and TRILL over IP
  * 5) Multi-level and Multi-topology
  * 6) Reduced Control Plane Protocol
  * 7) Security Analysis
  * 8) InteroperabiliTty / Implementation Report 

We have completed a lot of 1-3, and we have 
proposals for 1-6.  

* At IETF 95 we are talking about:
 
  * 1) Trill - Aids to Scaling 
  * Trill Address Flush (draft-hao-trill-address-flush)
  * Trill ECN Support (draft-eastlake-trill-ecn-support-00)
  * Trill Smart End Nodes (draft-ietf-trill-smart-endnodes-03) 
  * Trill over-IP (draft-ietf-trill-over-ip-05) 

* 2) Multi-topology / Multi-level 
  * draft-ietf-trill-rbridge-multilevel-01,
  * draft-ietf-trill-multi-topology-01,
  * draft-ietf-trill-multilevel-single-nickname-01,
  * draft-zhang-trill-multilevel-unique-nickname-00 
 
* 3) TRILL Charter Revision, Jon Hudson
  
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-06. It was migrated from the old Trac wiki on 2022-12-22.*
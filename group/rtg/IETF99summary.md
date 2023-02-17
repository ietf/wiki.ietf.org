---
title: IETF 99 Routing Area Working Group High-Level Summary
description: 
published: true
date: 2023-01-05T21:22:25.270Z
tags: 
editor: markdown
dateCreated: 2023-01-05T21:22:20.390Z
---

# IETF 99 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 99


## Summary Template ##
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
https://datatracker.ietf.org/meeting/99/agenda/xxx/ 
http://datatracker.ietf.org/wg/xxx/charter/ 
https://www.ietf.org/proceedings/99/xxx.html 


## BABEL

Meeting: Monday 17:20-18:40

WG Highlights: Working on questions related to mandatory sub-TLVs and unicast hellos in the Babel protocol.

WG Status Summary: Applicability draft failed WGLC and need some changes to resolve RTG Directorate review.

Links: https://www.ietf.org/proceedings/99/babel.html Proceedings

## BESS

Meeting Day/Time:  Thursday, Afternoon Session II

WG Highlights:

stable workload for the WG:

22 WG documents (2 recent adoptions)
3 in IESG's/RFC Editor's hands
7 in WG LC or about to be sent to IESG
no new RFC since IETF 97 however

Yang maturing, but impacts due to recent network-instance mods

New work coming up in support of NVO3 advances

And, as always, EVPN and MVPN improvements.

Links: 
https://www.ietf.org/proceedings/99/bess.html

## BFD

As always, current status of WG in the [BFD Wiki](/group/bfd)

Current items of interest:
* BFD multipoint documents in extended WGLC.  Received some feedback, awaiting some additional commentary from implementors.
* BFD Yang module revised.  Issues with interworking with IGP modules.  Likely to cause short virtual interim after IETF 99 if mail list discussion doesn't resolve.
* BFD directed document in the MPLS working group still has some controversy.  Impact on BFD if the work continues may require a RFC 5884 update.
* Two BFD related documents being presented in MPLS WG on Friday:
  * draft-mirsky-spring-bfd 
  * draft-mirsky-bfd-mpls-demand 


## BIER

Meeting: Karlin I/II session 18:10-19:10 - Thursday Afternoon Session III

WG Highlights: Draft in Editor’s Queue
* draft-ietf-bier-architecture
  - One open discuss

EoWGLC
* draft-ietf-bier-mvpn
* draft-ietf-bier-ospf-bier-extensions
* draft-ietf-bier-mpls-encapsulation
* draft-ietf-bier-isis-extensions
  - no response on list
* draft-ietf-bier-idr-extensions
  - no response on list

Moving to Standards Track
* Justification draft just began

Links:
https://datatracker.ietf.org/meeting/99/agenda/bier 
https://datatracker.ietf.org/doc/charter-ietf-bier/

## CCAMP

Meeting: 
* CCAMP session: 15:50-17:50 - Thursday Afternoon session II
* Joint YANG session (with TEAS-MPLS-PCE, hosted by TEAS): 13:30-15:30	Thursday Afternoon session I

WG Highlights:

* Microwave and millimiter wave DT: both framework and YANG model adopted. All uW major vendors involved.
* Transport NBI DT: use cases draft available and first gap analysis presented. 
* YANG models updated: WSON, WSON iv, Flexi Grid, IPoWDM interface, L1 topo
* Recently adopted as WG: OTN topology and tunnel models (augmentation of TE Topology and TE tunnel)
* New Work: Beyond 100G (G709v5), FlexE

WG Status Summary: 

* RFC Editor’s Queue: draft-ietf-ccamp-flexible-grid-ospf-ext
* 1 outgoing liaison: to ITU-T SG15 - FlexE for IP/MPLS Networks
* 3 incoming liaisons: 
 * From: ITU-T SG15 - LS/r on Flex Ethernet for IP/MPLS Networks (reply to IETF ccamp WG-LS15 (26 May 2017) 
 * From: ITU-T SG15 - LS on OTNT Standardization Work Plan 
 * From: BBF - Liaison to IETF on Flex Ethernet for IP/MPLS Networks 

Links: 
https://datatracker.ietf.org/meeting/99/agenda/ccamp/ 
http://datatracker.ietf.org/wg/ccamp/charter/
https://www.ietf.org/proceedings/99/ccamp.html  

## DETNET

Meeting
THURSDAY, July 20, 2017
0930-1200  Morning Session I  -  Congress Hall I

Links:
https://datatracker.ietf.org/meeting/99/session/detnet 
http://etherpad.tools.ietf.org:9000/p/notes-ietf-99-detnet?useMonospaceFont=true 
http://www.meetecho.com/ietf99/detnet
http://ietf99streaming.dnsalias.net/ietf/ietf993.m3u 

The focus of this meeting is the DETNET data plane.  It looks like we're
converging on PW/MPLS-TE and IP over 802.1TSN.  We're also looking at
the definition of the service parameters and traffic treatment required
to support DETNET service.  Other discussion topics are security and a
demonstration of the DETNET data plane providing hitless protection.

## I2RS

* I2RS - 2 sessions (Tuesday 15:50-17:50)
* Main 2 Data models (Topology and RIB) are in WG LC. 
* Interest in 2 new Data Models (Fabric and Control Plane/User plan separation)
* Need editors for 2 Main documents (datastore + RESTCONF)
* Editing session for document at 18:10-19:10 for these documents.
* If you are interested contact the chair. 


## IDEAS BOF

Meeting Day/Time: Wednesday 13:30 - 15:00

WG Highlights:  
 - Why IDEAS BoF is being held
 - IDEAS Problem Statement
 - Identity versus Identifiers
 - Potential charter discussion

WG Status Summary: TBD

## IDR

* IDR Thursday 9-12:00am 
* topics: 
* Chair's topics: Squatting vs. Early Allocation, Grow-Feedback 
* Existing work:   
* Flow Specification V1 - Revision (Ready for WG LC),
* BGP Tunnel attributes (draft-ietf-tunnel-encaps) (ready for WG LC?) 
* Making Route Servers aware of link loss at IXPs (draft-ietf-idr-rs-bfd), 
* Route Lead prevention (discussion:draft-ietf-idr-bgp-open-policy) 
* New work: 
* Carrying congestion status in BGP extended community [Zhenqiang Li] (10) (draft-li-idr-congestion-status-extended-community)
* Populating FIB Action for FlowSpec [Zhenqiang Li] (10) (draft-li-idr-flowspec-populate-to-fib) 
* BGP Logical Link Discovery Protocol (LLDP) Peer Discovery (draft-acee-idr-lldp-peer-discovery) 
* BGP Support for Fast Link Status Notification (draft-sun-idr-bgp-ls-notification) 


## ISIS

Meeting Day/Time: Monday 15:30 - 17:30

WG Highlights:
 - Discussed Combining with OSPF - Running 4 month experiment
   - IS-IS and OSPF mailing lists connected
   - Combined session @ IETF 100
   - Room was evenly split (and active) on doing this or not.

WG Status Summary:
 - RFC8196 - IS-IS Auto-Configuration
 - RFC8202 - IS-IS Multi-Instance (bis adds Multi-Topology)
 - RFCXXXX - Advertising L2 Bundle Member Link Attributes in IS-IS
             (MISREF draft-ietf-isis-segment-routing-extensions-12)

## L2TPEXT

## LISP

Meeting Monday Afternoon Session I 13:30 -> 15:30

WG Highlights: 
* One RFC has been recently published:
   * RFC 8111 - Locator/ID Separation Protocol Delegated Database Tree (LISP-DDT) 
   
WG Status Summary: 
* Document  draft-ietf-lisp-sec-12.txt under final IESG Review. 

* Document draft-ietf-lisp-signal-free-multicast-02.txt past WG Last Call, now waiting shepherd write-up.

* Adopted following new documents:
    * LISP L2/L3 EID Mobility Using a Unified Control Plane - draft-ietf-lisp-eid-mobility-00.txt 
    * LISP Mobile Node - draft-ietf-lisp-mn-00.txt
    * LISP Predictive RLOCs - draft-ietf-lisp-predictive-rlocs-00.txt
    * LISP Traffic Engineering Use-Cases - draft-ietf-lisp-te-00.txt 
    * LISP Virtual Private Networks (VPNs) - draft-ietf-lisp-vpn-00.txt 

* Two main documents, 6830bis and 6833bis, making steady progress.

* Several individual submissions presented at this meeting, for which authors have asked adoption (to be confirmed on mailing list):
   * LISP EID Anonimity - draft-farinacci-lisp-eid-anonymity-02.txt.
   * Vendor Specific LCAF type - draft-rodrigueznatal-lisp-vendor-lcaf-00.txt

Links: 
https://datatracker.ietf.org/meeting/99/agenda/lisp/ 
https://datatracker.ietf.org/wg/lisp/charter/ 


## MANET

## MPLS

Two Sessions:
  * Session I: Tuesday 13:30-15:30 (MPLS WG Session)
  * Session II: Friday 09:30-11:30 (MPLS WG Session)
  * Thursday, 13:30 - 15:30, joint YANG session with TEAS, MPLS and PCE (hosted by TEAS)

WG Highlights:
  * Discussed IPR process and technical comments related to one of our drafts
  * Quite a bit a new work coming in

New RFCs:
  * RFC 8029 - Detecting Multiprotocol Label Switched (MPLS) Data-Plane Failures
  * RFC 8150 - MPLS Transport Profile Linear Protection MIB
  * RFC 8169 - Residence Time Measurement in MPLS Networks
Two drafts of interest for the MPLS wg from PALS
  * RFC 8184 - Dual-Homing Protection for MPLS and the MPLS Transport Profile (MPLS-TP) Pseudowires
  * RFC 8185 - Dual-Homing Coordination for MPLS Transport Profile (MPLS-TP) Pseudowires Protection

   * About 20 new or updated IDs


## NVO3

Meeting: Wednesday 15:20

WG Highlights:
	•	WG has has made progress over data pane encapsulation: draft-ietf-nvo3-geneve selected as standards track solution
	•	Held roundtable discussion format at IETF98, to discuss and progress Control plane, security and data plane related work.
	•	Security round table has resulted in some new drafts addressing security requirements, architecture and solutions for GENEVE. These will be discussed this week.
	•	RTGWG Overlay OAM DT: We tried to adopt a couple of the drafts that were an output of this design team (OAM header and VC/CC). Some push back regarding the desirability of a common header. Currently trying to resolve this.

WG Status Summary:
	•	New RFC8151: Use cases for DCVPNs
	•	NVO3 Multicast Framework Publication Requested.

Links:  
https://datatracker.ietf.org/meeting/99/agenda/nvo3/ 
http://datatracker.ietf.org/wg/nvo3/charter/
https://www.ietf.org/proceedings/99/nvo3.html 

## OSPF

Meeting: Tuesday 15:30 - 17:30

WG Highlights:
   - OSPFv3 Extended LSA implementations (moving forward with 
     document publication)
   - OSPF TE Attribute in generic LSA Prefix / Link LSAs (RFC 7684) 
     and OSPFv3 Extended LSA discussions ongoing - support on 
     WG list, more discussion among main participants.  
   - IS-IS and OSPF mailing lists connected
   - Combined session @ IETF 100

WG Status Summary:
   - No new RFCs
   - OSPFv2 Segment Routing draft WG last call and
     AD comments answered. 
   - OSPF Tunnel Encap - WG last call and AD
     comments answered. 
 
Links:  
https://datatracker.ietf.org/meeting/99/agenda/ospf/ 
http://datatracker.ietf.org/wg/ospf/charter/
https://www.ietf.org/proceedings/99/ospf.html 

## PALS

Meeting Day/Time:  Monday, July 17, 17:40-18:40

WG Highlights:

* PALS met for the first time since IETF 95.

* The primary focus of the WG is draft-bryant-pals-ethernet-cw, which mandates the use of the Control Word for Ethernet pseudowires (PWs) if both endpoint routers support the Control Word. This is to prevent reordering problems that result from some core routers mistakenly applying ECMP to Ethernet PWs if they look below the MPLS header and see a first nibble of 0x4 or 0x6 in the Ethernet MAC address, and they mistake these packets for IPv4 or IPv6. This problem has been observed in the field. Use of the control word will prevent ECMP from being applied. As both WG co-chairs are co-authors of the draft, Matthew Bocci (former PWE3 co-chair) has agreed to shepherd and run the process. Once it's been adopted, PALS plans to liaise to our IETF partners (e.g., BBF, ITU-T SG15, IEEE 802.1&.3) to let them know about the work so they can plan appropriate action. We hope to complete the draft by IETF 100.

* A proposal for a PW YANG data model was presented. The authors are going to work with the authors of the YANG Data Model for MPLS-based L2VPNs in the BESS WG to merge their work.

WG Status Summary:

* Two new RFCs since IETF 98.
   * WG has published 14 RFCs since November 2015.

* Two drafts in the RFC Editor's queue.

* Two drafts in IESG review and processing.

* No other WG drafts, but draft-bryant-pals-ethernet-cw is expected to be adopted soon. 

Links: 
https://datatracker.ietf.org/meeting/99/agenda/pals/ 
http://datatracker.ietf.org/wg/pals/charter/ 
https://www.ietf.org/proceedings/99/pals.html 

## PCE

Meeting Day/Time:  Tuesday, July 18, 1550-1750 @ Congress Hall III

WG Highlights:

*  PCE as a central controller (PCECC)
   *  Follows architecture work in TEAS
   *  PCEP extensions for hop-by-hop programming
   *  !FlowSpec for traffic classification rules
*  Stateful, hierarchical PCE
   *  PCE applied to ACTN
   *  Stitching label
*  PCEP extensions for flexi-grid WDM


WG Status Summary:

*  No new RFCs but lots of progress
*  Four drafts with RFC editor
   *  Stateful PCE (draft-ietf-pce-stateful-pce)
   *  Stateful PCE optimizations (draft-ietf-pce-stateful-sync-optimizations)
   *  Service-aware PCEP (draft-ietf-pce-pcep-service-aware)
   *  Inter-layer extensions (draft-ietf-pce-inter-layer-ext)
*  Three drafts with IESG
   *  PCE-initiated LSPs (draft-ietf-pce-pce-initiated-lsp)
   *  PCEP with TLS (draft-ietf-pce-pceps)
   *  P2MP RFC-bis (draft-ietf-pce-rfc6006bis)
*  Four drafts post-WGLC
   *  Inter-Area/AS Applicability (draft-ietf-pce-inter-area-as-applicability)
   *  GMPLS extensions (draft-ietf-pce-gmpls-pcep-extensions)
   *  RWA extensions (draft-ietf-pce-wson-rwa-ext)
   *  LSP Setup Type (draft-ietf-pce-lsp-setup-type)
*  In queue for WGLC
   *  Segment Routing (draft-ietf-pce-segment-routing)
   *  Hierarchical PCE extensions (draft-ietf-pce-hierarchy-extensions)
*  Three new drafts adopted since IETF 98
   *  ACTN Applicability Statement (draft-ietf-pce-applicability-actn)
   *  Stateful, hierarchical PCE (draft-ietf-pce-stateful-hpce)
   *  LSP scheduling (draft-ietf-pce-stateful-pce-lsp-scheduling)

Links: 
https://datatracker.ietf.org/meeting/99/agenda/pce/ 
https://datatracker.ietf.org/wg/pce/charter/
https://www.ietf.org/proceedings/99/pce.html 

## PIM

Meeting Day/Time : Tuesday 18th, Morning session I (9:30-12:00) in Athens/Barcelona
Joint Meeting with mboned wg

WG Highlights:

* draft-ietf-pim-yang. publication requested
* draft-ietf-pim-source-discovery-bsr. passed WGLC, publication requested
* igmp-mld and igmp-mld-snooping yang drafts
  * igmp-mld draft approved by yang doctors and wg chairs but may need one update for new yang config format
  * igmp-mld-snooping is new draft which needs more comments and participation
* multiple-upstream-reqs update
  * wg consensus for wglc
* new draft pim-with-ipv4-prefix-over-ipv6-nh
  * 4 people read and all feel its work we should address in pim
  * potential new work also needed in mboned

## ROLL

Meeting Day/Time : Thursday  20th, Afternoon session I (13:30-15:30) in Karlin I/II

WG Highlights:

 * draft-ietf-roll-useofrplinfo in WGLC, we added an update to RFC6553 and RFC 6550 => WG to decide.


WG Status Summary:

* Working on topics proposed in our last re-chartered charter.

* RFC8138 concluded

*  Presented in this IETF
   *  Constrained-Cast: Source-Routed Multicast for RPL
   *  Root initiated routing state in RPL: DAO-projection
   *  No-Path DAO modifications
   *  Asymmetric AODV-P2P-RPL in Low-Power and Lossy Networks (LLNs) 
*  Not- Presented in this IETF:
   *  DIS Modifications
   *  A YANG model for Multicast Protocol for Low power and lossy Networks (MPL)

Links: 
https://datatracker.ietf.org/meeting/99/agenda/roll/ 
https://datatracker.ietf.org/wg/roll/charter/ 
https://www.ietf.org/proceedings/99/roll.html 


## RTGWG

Meeting Day/Time:  Monday, 17-July-2017 09:30 - 12:00 / Friday, 21-July-2017 09:30 - 10:30

WG Highlights:  
   * YANG models, Routing in DC, SR Fast convergence, VPN+
   * System approach to latency - draft-arkko-arch-low-latency

WG Status Summary: 

* Published: 
   * RFC 8177, YANG Data Model for Key Chains
* Publication Requested:
   * draft-ietf-rtgwg-yang-rip
   * draft-ietf-rtgwg-yang-vrrp

* WGLC:
   * draft-ietf-rtgwg-routing-types
* Waiting for write up:
  * draft-ietf-rtgwg-bgp-pic
  * draft-ietf-rtgwg-uloop-delay

* WGLC ready:
   * draft-ietf-rtgwg-ni-model
   * draft-ietf-rtgwg-lni-model


Links: 
https://datatracker.ietf.org/meeting/99/agenda/rtgwg/ 
http://datatracker.ietf.org/wg/rtgwg/charter/
https://www.ietf.org/proceedings/99/rtgwg.html 


## SFC

Meeting : Monday, 17-July-2017 15:50 - 17:20

WG Highlights:  
    Trying to get the NSH document completed.
    Lots of discussion on OAM issues.  Some related to the recently updated framework, and what we want to do with that.  Some related to various use cases.
    Still new ideas coming in regularly.

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)
    NSH document is at draft -14.  The WG has found a few more items to be fixed before handing the document to the AD

Links: 
https://datatracker.ietf.org/meeting/99/agenda/sfc/ 
http://datatracker.ietf.org/wg/sfccharter/ 
https://www.ietf.org/proceedings/99/sfc.html  

## SIDR

## SPRING

Not meeting in Prague (to let Alvaro take a breath).

WG Highlights:  
* draft-ietf-spring-conflict-resolution is in WG LC.
* 8 major documents now in IESG's hands.
* Next WG steps: advance the few remaining documents, initiate discussion on rechartering, possibly adopt a couple of drafts in the meantime.

WG Status Summary: 
* ldp-interop just sent to IESG
* oam-use-cases might move to Standard Track


A big thanks to Alvaro who has to carry the load.


## TEAS

Meetings
* Session I: Tuesday 09:30 - 12:00
* Session II: Thursday 13:30 - 15:30

WG Highlights
* YANG Models:
  * TE-Topology: NMDA compliant; LC ready (as per authors)
  * TE/RSVP: Base models are fairly stable; Not NMDA compliant yet
* ACTN: Framework and Requirements are almost baked. Other related work-items getting ready for adoption.
* SR-RSVP Co-existence: Draft discussing options for SR-RSVP Co-existence just got adopted.

WG Status Summary
* Recent RFC: 
  * RFC8149 - RSVP Extensions for Reoptimization of Loosely Routed Point-to-Multipoint Traffic Engineering Label Switched Paths (LSPs)
* Publication Requested: 
  * draft-ietf-teas-gmpls-lsp-fastreroute
  * draft-ietf-teas-gmpls-scsi
  * draft-ietf-teas-lsp-diversity 
  * draft-ietf-teas-network-assigned-upstream-label
  * draft-ietf-teas-pce-central-control
  * draft-ietf-teas-rsvp-te-scaling-rec
* New Adoptions: 
  * draft-ietf-teas-sr-rsvp-coexistence-rec
  * draft-ietf-teas-assoc-corouted-bidir-frr


## TRILL

* TRILL 11:50-13:20 Karlin III
* Completing a lot of existing work (17 drafts going to WG LC in next 6 months) prior to hiatus 
* Nice engineering solutions - that other WGs (e.g. NVo3) should take a look at 
* Areas of existing work being completed: directory service, multi-topology/multi-level, security, ECN)  
* Due to great reviews by directorates (RTG, INT, OPS, SEC) we have issues to resolve on some of these drafts. 
* Focused discussion on these drafts for TRILL over IP, ARP optimization, Fine-Grain label encoding
* 
* Presentation of last new work being adopted prior to hiatus  
*  WG adoption of draft-rp-trill-parent-selection-03.txt

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-07-19. It was migrated from the old Trac wiki on 2023-01-05.*




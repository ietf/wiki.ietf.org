---
title: IETF 96 Routing Area Working Group Summaries
description: 
published: true
date: 2023-01-05T00:30:49.645Z
tags: 
editor: markdown
dateCreated: 2023-01-05T00:30:44.921Z
---

# IETF 96 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 96


## Summary Template 
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
[Agenda](https://www.ietf.org/proceedings/96/agenda/agenda-96-xxx)
[WG Charter](http://datatracker.ietf.org/wg/xxx/charter/)
[Minutes](https://www.ietf.org/proceedings/96/xxx.html)


## BABEL

Meeting Day/Time: Thursday 16:30

WG Highlights: New WG

WG Status Summary:

draft-ietf-babel-applicability: Accepted as WG document
Several other drafts submitted.
Working group is active.

## BESS

* Meeting on Thursday 14:00-16:00
* 3 RFCs published since last IETF
* 7 drafts adopted, including 2 Yang drafts
* We have one document that's been returned to the WG because of the lack of energy to move it forward, we'll have to see what we do with it
* It's now been a few month where we've applied a one implementation policy at WGLC time, and it seems to work smoothly.
* We also have been calling for volunteer shepherds at WGLC time, and it helps manage the workload (already 3 volunteers)

## BFD 

* BFD WG meeting Friday 12:20-13:20, Potsdam II

* WG Highlights:
  * Status current on WG wiki: https://wiki.ietf.org/group/bfd/
  * This session, covering:
    * BFD for VxLAN
    * BFD Yang module updates.  Please also see the LIME Working Group for some interesting interaction.
    * BFD fast authentication - better crypto more sustainably.
    * BFD stability
    * BFD for multi-chassis LAG
    * BFD for EVPN

* WG Status Summary:
  * RFC 7880 - Seamless Bidirectional Forwarding Detection (S-BFD). Published July 2016
  * RFC 7881 - Bidirectional Forwarding Detection (S-BFD) for IPv4, IPv6, and MPLS. Published July 2016.
  * RFC 7882 - Seamless Bidirectional Forwarding Detection (S-BFD) Use Cases. Published July 2016.
  * BFD Multipoint under WGLC. No comments yet and no support.
  * BFD MPLS MIB under WGLC. No comments yet and no support.

## BIER
* BIER WG meeting Monday evening 1800-2000, Schoenberg
* WG Highlights:
   * Four drafts adopted as working group items. Authors have been asked to update with WG ID
      * draft-kumarzheng-bier-ping-02
      * draft-mirsky-bier-path-mtu-discovery-01
      * draft-mirsky-bier-pmmm-oam
      * draft-chh-bier-bier-yang

* WG Status:
   * Current charter is Experimental
      * Sufficient operator and vendor interest to move to Standards track
      * Waiting multiple functional implementations to evaluate change of track
   * Drafts presented this week
      * draft-chenvgovindan-bier-bgp-ls-bier-ext
      * draft-wijnands-bier-mld-lan-election
      * draft-eckert-bier-te-arch
      * draft-eckert-bier-te-frr
   * Current charter specifies MPLS encapsulation "and one more"
      * This weeks WG will explore need for an additional encapsulation
   
Links:
   * [Agenda](https://trac.tools.ietf.org/wg/bier/agenda)
   * [Charter](https://trac.tools.ietf.org/wg/bier/charters)
   * [Minutes](https://trac.tools.ietf.org/wg/bier/minutes)

## CCAMP
* CCAMP will meet on Wednesday, Afternoon Session I.
* WG Highlights: 
   * 12 NEW -00 drafts since IETF95 - new topics: Microwave, FlexEthernet, YANG models for transport and path computation model
   * Radio link design team: 
    * Created on May 31st 2016
    * Deliverables: Problem statement(draft-mwdt-ccamp-problem-statement), Gap Analysis, Yang models
    * Governance: weekly calls open to everyone
* WG Status:
   * Recent RFCs: RFC 7892 : IANA Allocation Procedures for the GMPLS OTN Signal Type Registry
   * RFC Editor’s Queue: draft-ietf-ccamp-additional-signal-type-g709v3
   * IESG processing: draft-ietf-ccamp-ospf-availability-extension
   * Post WG LC – Publication requested draft-ietf-ccamp-flexible-grid-ospf-ext 
Links: 
   * [Agenda](https://www.ietf.org/proceedings/96/agenda/agenda-96-ccamp)
   * [WG Charter](http://datatracker.ietf.org/wg/ccamp/charter/)
   * [Minutes](https://www.ietf.org/proceedings/96/ccamp.html)


## DETNET

* Meeting: Monday, July 18, 2016 (CEST), 
18:00-20:00, Room: Bellevue
* Agenda/notes is available at via etherpad:
http://etherpad.tools.ietf.org:9000/p/notes-ietf-96-detnet?
* Interesting topics are terminology and data plane alternatives
* Links to audio streams, meetecho and jabber can be found at
https://tools.ietf.org/agenda/96/#96-mon-1800-detnet


### New WG-Docs
2016-04-05 draft-ietf-detnet-problem-statement-00

### Updated WG-Docs
2016-07-04 draft-ietf-detnet-use-cases-10

### Updated IDs
2016-07-08 draft-dt-detnet-dp-alt-01
2016-07-08 draft-finn-detnet-architecture-06


## I2RS

Meeting Day/Time: Monday 13:00
  - Asking for second meeting. 

WG Highlights: 

Currently working with NETCONF/NETMOD WGs to iron out questions about ephemeral state.
	
WG Status Summary:
4 RFCs: Problem statement, Architecture, Pub/Sub, Traceability 

draft-ietf-i2rs-ephemeral-state: In last call
draft-ietf-i2rs-protocol-security-requirements: Awaiting publication

Ephemeral Yang Model heading 
* topology models (base, L2, L3) - ready for WG LC 
* RIB model  + FB-RIB - getting open source implementations   


## IDR
WG Status: 
* Topics:  Revisions (BGP-Segment Routing, BGP-Flow Specification, Route Refresh) 
* New Topics: BGP Large Community, BGP SPF, BGP Geo-information, 
* IETF 96 Hack-a-thon:  BGP-LS, BGP-FS, part of BGP Wide Communities 
* Statistics: 
* 3 in RFC: add-paths (RFC7911), route-server for IXP, route-oscillation, 
* 2 in post WG LC (extended messages, add-path guidelines), 
* 2 Yang modules revised (basic-provider, extended), 





## ISIS

* Meets Wednesday 15:40

* Important work to notice
  - Incompatible change to Multi-Instance IS-IS (RFC6822)

* Some new work being considered:
  - Geo-coordinates
  - Spine-Leaf topologies

* New Standards since IETF 95.
  - RFC 7810 - IS-IS Traffic Engineering (TE) Metric Extensions
  - RFC 7813 - IS-IS Path Control and Reservation
  - RFC 7883 - Advertising Seamless Bidirectional Forwarding Detection (S-BFD) Discriminators in IS-IS
  - RFC 7917 - Advertising Node Administrative Tags in IS-IS

## L2TPEXT

* L2TPext is not meeting in Berlin
* Update on Current work:
   *  RFC 7886 published (Advertising S-BFD Discriminators in L2TPv3)
      * Part of the S-BFD work
   *  draft-ietf-l2tpext-keyed-ipv6-tunnel-06 (Keyed IPv6 Tunnel)
      * AD Evaluation, slow progress.
   * draft-ietf-l2tpext-keyed-v6-tunnel-yang-01 (A YANG Data Model for Keyed IPv6 Tunnels)
      * I-D Exists, complements the above item.
   * draft-shen-l2tpext-l2tpv3-yang-model-03 (A YANG Data Model for L2TPv3 Tunnel)
      * I-D Exists.
   *  RFC 7885 published (Seamless BFD for VCCV)
      * Related and progressed in PALS

## LISP
Meeting Day/Time:  Thursday, July 21, 2016 1620-1820

WG Highlights:  
    Will review YANG model for LISP, aiming for WG Last Call in the near future
    Will review documents on various new work items, with a view towards seeing what can be adopted by the working group in the near future.


WG Status Summary: 
    Crypto and DDT documents have been submitted to the AD for publication.
    We are working to complete LCAF and Security documents.

Links: 
[Agenda](https://www.ietf.org/proceedings/96/agenda/agenda-96-lisp)
[WG Charter](http://datatracker.ietf.org/wg/lisp/charter/)
[Minutes](https://www.ietf.org/proceedings/96/lisp.html)



## MANET
Meeting Day/Time: Wednesday, July 20, 2016 14:00

WG Highlights: 
Rechartered since last IETF meeting.  New work includes reboot of informational MANET management/deployment document, DLEP and extensions, and Multicast forwarding information base for use MANETs.  AODVv2 was removed from the WG.  MANET chairs will be giving an overview of the MANET WG in the Routing Area Open Meeting Potsdam I at 1620 Tuesday (after this session).

WG Status Summary: 
New RFCs:

RFC 7779 Directional Airtime Metric Based on Packet Sequence Numbers for OLSRv2

RFC 7859 Identity-Based Signatures for Mobile Ad Hoc Network (MANET) Routing Protocols

IESG Processing:
Rules for Designing Protocols Using the RFC 5444 Generalized Packet/ Message Format
Definition of Managed Objects for the Neighborhood Discovery Protocol
Security Threats for Simplified Multicast Forwarding (SMF)

Completed WG LC:
Dynamic Link Exchange Protocol (DLEP)
Credit Windowing extension for DLEP
Security Threats for the Optimized Link State Routing Protocol version 2 (OLSRv2)

In WG LC:
Multi-path Extension for the Optimized Link State Routing Protocol version 2 (OLSRv2)
  

Links:
[Agenda](https://datatracker.ietf.org/meeting/96/agenda/manet/)
[WG Charter](https://datatracker.ietf.org/group/manet/charter/ )

## MPLS

* MPLS met on Monday morning.
  * We also have a joint meeting with TEAS, PCE and CCAMP on common
    interest in YANG models on Thursday afternoon.
* Change of Guard
  * Ross has decided to step down as wg chair.
* WG Highlights: 
  *    draft-ietf-mpls-rfc4379bis, ready for wglc
        *   procedures for document approval were discussed in the Monday meeting
        *  first step as PS and IS when we meet the criteria
  * draft-rosen-mpls-rfc3107bis, ready for working group adoption
  * 4 new wg docs since last time
  * discussion on MPLS rings and flow identification.
  * discussions egress protection and of payload indication
  * and a bunch of other stuff

Links: 
   * [Agenda](https://www.ietf.org/proceedings/95/agenda/agenda-96-mpls)
   * [WG Charter](http://datatracker.ietf.org/wg/mpls/charter/)
   * [Minutes](https://www.ietf.org/proceedings/96/mpls.html)



## NVO3
NVO3 meets on Wednesday (20-July) at 14:00.

WG Highlights:
- Personnel: Sam Aldrin replaces Benson Schliesser as co-chair
    - Thanks to Benson for his many years of contribution to the WG
- Currently have 3 data plane encapsulation drafts: VXLAN-GPE, GUE, Geneva
   - GUE moving to Intarea WG, but interest in referencing from NVO3
   - Discussion on how to move forward: Progress all as informational/experimentatl or pick one?

WG Status:
- No new RFCs since last meeting.
- Publication requested for NVO3 architecture 
- OAM design team working with Routing area Overlay OAM DT
-  "Split NVE" control plane work underway in IEEE, report back at this IETF.


## OSPF
* Meeting: Friday, July 22, 2016 (CEST),10:00-12:00, Room: Potsdam II 


* WG Highlights: 
  * OSPFv2 Segment Routing advancing
  * YANG Model Maturing
  * Various drafts based on OSPFv2 Prefix/Link Attributes.
  * Still need implementations for OSPFv3 Extended LSAs


* WG Status: 
  * RFC 7884 - OSPF S-BFD
  * OSPFv3 over IPv4 in RFC Editor Queue 
  * Publication Requested for OSPFv2 Segment Routing and OSPF 2-Part Metric.

* Links:
  * [Agenda](https://datatracker.ietf.org/meeting/96/agenda.html)
  * [WG Charter](http://datatracker.ietf.org/wg/ospf/charter/)
  * [Minutes](https://www.ietf.org/proceedings/96/ospf.html  )
 
## PALS

PALS did not meet at IETF96.

WG Highlights: The WG finally completed and published an RFC on congestion considerations, a work item that goes back to the early days of the PWE3 WG. Good progress has been made on our outstanding work items.

WG Status Summary:

New RFCs:
RFC7885: draft-ietf-pals-seamless-vccv
RFC7893: draft-ietf-pals-concons

IESG Processing:
draft-ietf-pals-mpls-tp-over-bidir-lsp (Only discuss cleared, waiting for new draft upload and AD write-up)
draft-ietf-pals-rfc4447bis (In Expert review::AD Followup)
draft-ietf-pals-pon (Waiting for AD)

Completed WG LC:
draft-ietf-pals-endpoint-fast-protection-02 (Final IPR response came in a few days ago, IESG submission imminent)

In WG LC:
draft-ietf-pals-mpls-tp-config (waiting on authors for new version)

Drafts nearing completion:
draft-ietf-pals-mpls-tp-dual-homing-protection & draft-ietf-pals-dual-homing-coordination (waiting on IPR response from authors then ready to start WGLC)
draft-pals-p2mp-pw and draft-ietf-pals-status-reduction (ready to start WGLC after IETF)

## PCE

PCE is meeting Thursday 14:00.  There is also a joint meeting with MPLS & TEAS to discuss YANG models, also on Thursday at 16:20.

New RFCs:
* RFC 7896 (draft-ietf-pce-iro-update)
* RFC 7897 (draft-ietf-pce-pcep-domain-sequence)

IESG Processing:
* draft-ietf-pce-pcep-service-aware

The working group is still working on finalizing the stateful PCE drafts.
Secure PCEP ("PCEPS") is also almost ready.

New work is being proposed for the working group and will be discussed this week:
* PCEP for Automated Control of Transport Networks (ACTN)
* Extensions to Hierarchical PCE for Discovery and Connection
* Communicating the TED in PCEP

## PIM

Meeting was 1000-1230 Monday
1st 30 minutes for mboned, 2nd 90 minutes for PIM.

WG Highlights:

Published draft-ietf-pim-explicit-rpf-vector RFC7891

Published draft-ietf-pim-hierarchicaljoinattr RFC7887

Requested draft-ietf-pim-join-attributes-for-lisp

WG Status:

draft-ietf-pim-explicit-tracking   
Working with AD to address issues

draft-ietf-pim-multiple-upstreams  
Presented, new revision

draft-ietf-pim-yang
Minor changes, nearing end

draft-ietf-pim-igmp-mld-yang
Big discussion on lowest common denominator vs superset

Evaluating:

draft-allan-spring-mpls-multicast-framework-01

draft-wijnands-bier-mld-lan-election-01
     

## ROLL

Meeting: 15:50-17:20	Wednesday Afternoon session II

A new charter for ROLL is going to be discussed, plan to include this works

DIS Modifications - draft-gundogan-roll-dis-modifications

Source-Routed Multicast for RPL - draft-bergmann-bier-ccast


Mpl Forwarder select - draft-vanderstok-roll-mpl-forw-select

AODV-RPL - draft-satish-roll-aodv-rpl

No-Path DAO Problem Statement - draft-jadhav-roll-no-path-dao-ps-00


## RTGWG

Meeting
Day/Time: Tuesday 14:00

Meeting
Day/Time: Wednesday 10:00


WG Highlights: 
gRPC work, in-band OAM, OAM DT update, YANG DT update, pa-multihoming, SR fast convergence

WG Status Summary: 
3 new RFC's: 
RFC 7811 (was draft-ietf-rtgwg-mrt-frr-algorithm)
RFC 7812 (was draft-ietf-rtgwg-mrt-frr-architecture)
RFC 7916 (was draft-ietf-rtgwg-lfa-manageability)

draft-ietf-rtgwg-bgp-routing-large-dc-11 in RFC-EDITOR

YANG models - good progress

Links: 
[Agenda](https://datatracker.ietf.org/meeting/96/agenda/rtgwg/ )
[WG Charter](https://datatracker.ietf.org/group/rtgwg/charter/ )

## SFC

Meeting Day/Time: Monday 15:40 - 17:40

WG Highlights:
SFC security, in-band OAM, OAM DT update, hSFC update

Expect to convene interim meetings to move security and OAM topics forward. Also expect SFC encapsulation to be sent to IESG for publication before IETF97.

WG Status Summary:
draft-ietf-sfc-control-plane Submitted to IESG for Publication: Informational

draft-ietf-sfc-nsh-05 in WG LC

## SIDR

Meeting Day/Time:  10:00-12:30	Thursday Morning session I

WG Highlights:

. work progresses on the new validation algorithm and cross impact on other drafts/RFCs

we have drafts covering requirements on implementations (extracted from RFCs) and drafts describe how implementations implement requirements - what is the relationship, should there be a template for implementations, etc?

some repeat presentations from work not (yet) accepted on deployment issues

expect to continue discussion from IETF 95 Buenos Aires meeting about future of SIDR, possible re-charter

WG Status Summary:

Published:

 * RFC7909 Securing Routing Policy Specification Language (RPSL) Objects with Resource Public Key Infrastructure (RPKI) Signatures

RFC-Editor Queue: 
 * draft-ietf-sidr-rfc6485bis-05.txt The Profile for Algorithms and Key Sizes for use in the Resource Public Key Infrastructure

Publication Requested:

 * draft-ietf-sidr-bgpsec-algs
 * draft-ietf-sidr-bgpsec-ops
 * draft-ietf-sidr-bgpsec-pki-profiles
 * draft-ietf-sidr-bgpsec-protocol
 * draft-ietf-sidr-origin-validation-signaling

WGLC:

 * draft-ietf-sidr-adverse-actions
 * draft-ietf-sidr-rpki-oob-setup

Newly Adopted: 

 * draft-ietf-sidr-route-server-rpki-light

Links

 * [Agenda](https://datatracker.ietf.org/meeting/96/agenda/sidr/ )
 * [SIDR Charter](http://datatracker.ietf.org/wg/sidr/charter/ )
 * [Minutes](https://www.ietf.org/proceedings/96/sidr.html  )


## SPRING

Meeting: Monday 18:00

WG Highlights:
* New WG doc: "Segment Routing Conflict Resolution" draft-ietf-spring-conflict-resolution] 
* Hot topic: Discussing how to "best" handle Segment ID misconfigurations.

WG Status Summary: 
* new RFC: “SPRING Problem Statement and Requirements” [RFC 7855]
* currently WGLC: “Use-cases for Resiliency in SPRING” [draft-ietf-spring-resiliency-use-cases-04] 
* WGLC to be initiated shortly: [draft-ietf-spring-ipv6-use-cases], [draft-ietf-spring-oam-usecase], [draft-ietf-spring-segment-routing]
* 4 above documents to be sent jointly to the IESG.
* Additional WGLC: [draft-ietf-spring-segment-routing-msdc], [draft-ietf-spring-segment-routing-central-epe]
* Next WG adoption call: [draft-psarkar-spring-mpls-anycast-segments]

* Links:
 * [Agenda](https://datatracker.ietf.org/meeting/96/agenda/spring/ )
 * [WG Charter](http://datatracker.ietf.org/wg/spring/charter/ )
 * [Minutes](https://www.ietf.org/proceedings/96/spring.html  )


## TEAS

 * WG will be meeting twice on Thursday, July 21
 * 1000 - 1230 Charlottenburg II/III and jointly with PCE/MPLS on YANG topics 1620 - 1820, Charlottenburg II/III
 * Agenda and raw notes can be found at http://etherpad.tools.ietf.org:9000/p/notes-ietf-96-teas?
 * Links to audio streams, meetecho  and jabber can be found at
   https://tools.ietf.org/agenda/96/#96-thu-1000-teas and
   https://tools.ietf.org/agenda/96/#96-thu-1620-pce


* Recent RFCs: 
RFC 7823 draft-ietf-teas-te-express-path Informational
RFC 7898 draft-ietf-teas-rsvp-te-domain-subobjects Experimental

* RFC-Editor's Queue:
draft-ietf-teas-interconnected-te-info-exchange-07

* IESG Processing:
draft-ietf-teas-rsvp-te-srlg-collect-06

* Post WG LC 
draft-ietf-teas-gmpls-lsp-fastreroute 
draft-ietf-teas-lsp-diversity 
* New WG-Docs
2016-07-06 draft-ietf-teas-actn-framework

* Pending adoption polls (IPR)
draft-zhao-teas-pce-control-function

## TRILL
Meeting:  Thursday 7/21 at 18:30-19:30 
* Topics: Group Keying, ECN,  Directory Service
* Statistics 
* RFC pending: 3 drafts (tree selection, Trill gateway, interface address APPTLV) 
   At IESG: 2 - RBridge Channel, Directory assist mechanisms 
   WG LC done: (consensus):  6 drafts 
   

  
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-07-21. It was migrated from the old Trac wiki on 2023-01-04.*
  
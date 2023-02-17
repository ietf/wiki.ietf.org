---
title: IETF 97 Routing Area Working Group High-Level Summary
description: 
published: true
date: 2023-01-05T19:55:40.067Z
tags: 
editor: markdown
dateCreated: 2023-01-05T19:54:59.338Z
---

# IETF 97 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 97

## Summary Template 
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)


Links: 
https://datatracker.ietf.org/meeting/97/agenda/xxx/
https://datatracker.ietf.org/wg/xxx/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-xxx.txt


## BABEL
Meeting Day/Time:  Last slot Friday.

WG Highlights: Mainly working on moving the Babel protocol documents from Experimental to Standards track while making minor improvements. Presentations scheduled on some TLV details and on BIER in Babel.

WG Status: Main protocol draft and applicability draft adopted by WG.

Links: 
https://datatracker.ietf.org/meeting/97/agenda/babel/
https://datatracker.ietf.org/wg/babel/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-babel.txt

## BESS

Meeting Day/Time:
   Monday 13:30-15:30

WG Highlights:
   New BGP based work poping up requiring coordination with other groups (SFC, SPRING/TEAS/IDR)
   EVPN still biggest piece of work
   MVPN items remain

WG Status Summary:
   1 new RFC, 2 WG LC, 2 adoptions
   6 docs in the Chairs' queue towards IESG

https://datatracker.ietf.org/meeting/97/agenda/bess/
https://datatracker.ietf.org/wg/bess/charter/ 
https://www.ietf.org/proceedings/97/minutes/minutes-97-bess.txt

## BFD

BFD is not meeting during IETF 97.

No progress on lingering work items.

TODO list is still current from IETF 96:
https://trac.ietf.org/trac/bfd/wiki/IETF96%20Action%20Items

## BIER
Meeting Day/Time:  Monday, November 14, 2016, 0930

WG Highlights:
Recap Interim meeting results:
   MPLS Encap modified slightly to accommodate using the BIER header for generic encapsulation as well as MPLS encap.
   BIER-over-IPv6 draft being presented at 6man this week. BIER WG meeting will accommodate open mic discussion of IPv6/BIER use cases and the merits of the current proposal
   MLD draft to incorporate text/ideas from the VXLAN BIER draft w/ consolidated author list
   Still waiting on host-to-host BIER/DC use case

WG Status Summary:
May be time to progress some drafts to WG last call. Drafts will remain in queue and not progress to IESG until the WG can revisit the case for standards track


Links: 
https://datatracker.ietf.org/meeting/97/agenda/bier/ 
https://datatracker.ietf.org/wg/bier/charter/ 
https://www.ietf.org/proceedings/97/minutes/minutes-97-bier.txt 

## CCAMP
Meeting twice
- Session I: Monday 15:50-17:50, joint YANG session with TEAS, MPLS and PCE
- Session II: Thursday 13:30-15:00

WG Highlights: 
- A second DT has been created right before the IETF week on the Transport NBI modelling. 19 people volunteered to be part of the team. The team will be coordinated with TEAS to understand what can be generalized of this work.
- Issue with the availability drafts was solved with a new draft in TEAS adding the possibility to have TLVs in the SCSI of the ISCD.

WG Status Summary: 
- 1 recent RFC: RFC7963: Resource ReserVation Protocol-Traffic Engineering (RSVP-TE) Extension for Additional Signal Types in G.709 OTN
- 1 ID in IESG processing: draft-ietf-ccamp-ospf-availability-extension
- 1 ID post WG LC (publication requested): draft-ietf-ccamp-flexible-grid-ospf-ext 
- 1 liaison to/from ITU: LS on SG15 OTNT Standardization Work Plan

Links: 
https://datatracker.ietf.org/meeting/97/agenda/ccamp/
https://datatracker.ietf.org/wg/ccamp/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-ccamp.txt

## DETNET

Tuesday Session (11/15) (9:30 - 12:00)

WG Highlights: Going well overall.

Making progress on data plane:
- Adopted data plane alternatives draft
- Not creating a new data plane
- Probably PW over MPLS or IP

Starting work on Information Model.  

## I2RS
Monday Session (11/14) (13:30 - 15:30) - cancelled
  Our requirements drafts at IESG or heading to WG LC. 
  Thanks to all who helped. 

Wednesday Sssion (11/16) 15:20-16:20 - Review of data models: 
Models reviewed: I2RS-filter-based RIB, I2RS BGP model, DC fabric model.


## IDR

TUESDAY, November 15, 2016
1550-1820  Afternoon Session II
Grand Ballroom 3

WG Highlights: 
- Large Communities (draft-ietf-idr-large-community): from introduction to IESG (almost!) in one meeting cycle. 
- Code point squatting (Jeff Haas's "working with standards action registries" talk)
- Early allocations
- Multiple active areas this meeting -- see agenda.

WG Status Summary: 
New RFCs:
- RFC 7947, Internet Exchange BGP Route Server
- RFC 7964, Solutions for BGP Persistent Route Oscillation

Adopted:
- BGP Link-State extensions for Segment Routing,  draft-gredler-idr-bgp-ls-segment-routing-ext
- Deprecation of BGP Path Attribute values 30, 31, 129, 241, 242, and 234, draft-snijders-idr-deprecate-30-31-129

WGLC complete:
- BGP Large Communities, draft-ietf-idr-large-community

Waiting for implementation:
- Extended Message support for BGP, draft-ietf-idr-bgp-extended-messages-13
- Route Target Constrained Distribution of Routes with no Route Targets, draft-ietf-idr-rtc-no-rt-05

Moving to "dead":
- Generic Subtype for BGP Four-octet AS specific extended community draft, draft-ietf-idr-as4octet-extcomm-generic-subtype (overtaken by events, large-community)

Links:
https://datatracker.ietf.org/meeting/97/agenda/idr/ 
https://datatracker.ietf.org/group/idr/charter/
http://etherpad.tools.ietf.org:9000/p/notes-ietf-97-idr?useMonospaceFont=true


## ISIS

WEDNESDAY, November 16, 2016 11:10-12:10 KST Morning Session II Park Ballroom 1

WG Highlights:

- first "joint" - well, actually "back to back" meeting with ospf-wg
  test the waters how much overlap we have between the two IGPs
- advertising TE protocols - draft-hegde-isis-advertising-te-protocols
  "alternative" uses of TE TLVs make it unclear wether RSVP is enabled on a link or not
- Segment Routing extensions draft-ietf-isis-segment-routing-extensions
- IS-IS YANG models
    draft-ietf-isis-yang-isis-cfg and draft-ietf-isis-sr-yang

WG Status Summary:

New RFCs:
 - RFC 7981, IS-IS Extensions for Advertising Router Information
 - RFC 7987, IS-IS Minimum Remaining Lifetime

Adopted:
 - draft-tantsura-isis-segment-routing-msd-02, Signaling MSD (Maximum SID Depth) using IS-IS

Last Call:
 - draft-ietf-isis-mi-bis-01, IS-IS Multi-Instance

## L2TPEXT

* L2TPext is not meeting in Seoul
* Update on Current work:
   *  draft-ietf-l2tpext-keyed-ipv6-tunnel-06 (Keyed IPv6 Tunnel)
      * With the IEST, Final stages.
      * Revised I-D Needed for 1 DISCUSS, 3 COMMENTS
   * draft-ietf-l2tpext-keyed-v6-tunnel-yang-01 (A YANG Data Model for Keyed IPv6 Tunnels)
      * I-D Exists, complements the above item.
      * Questions on how to progress this vis a vis L2TPv3 YANG model
   * draft-shen-l2tpext-l2tpv3-yang-model-03 (A YANG Data Model for L2TPv3 Tunnel)
      * I-D Exists.

## LISP

Meeting Day/Time:  Wednesday, November 16, 2016 930-1100

WG Highlights:  
   * Two RFCs have been recently published:
      * RFC 7954 - Locator/ID Separation Protocol (LISP) Endpoint Identifier (EID) Block
      * RFC 7955 - Management Guidelines for the Locator/ID Separation Protocol (LISP) Endpoint Identifier (EID) Block

WG Status Summary: 
    * Two documents (Intro and Crypto) already in the RFC Editor Queue
    * Two documents (DDT and LCAF) under review by the IESG
    * One document (LISP Exp. Message) waiting for ITEF Last Call and IESG Review.
    * Proposal for 6830bis and 6833Bis to be discussed at this meeting.
    * Security document update and close to WG Last Call
   
Links: 
https://www.ietf.org/proceedings/97/agenda/agenda-97-lisp
http://datatracker.ietf.org/wg/lisp/charter/
https://www.ietf.org/proceedings/97/lisp.html


## MANET
Meeting: Wednesday, 09.30 - 11.00 KST in Studio 2
Meeting will be run by Rick Taylor 

Agenda: 
Discussing 4 new extensions for DLEP.

## MPLS

Meeting: Thursday, 15.20 - 17.50 KST in Park Ballroom I
Met Jointly with PCE, CCAMP and TEAS on YANG Models on Monday.

WG Highlights:  
- New Working Group Chair (Nic Leymann)
- 2 new RFCs
- LSP Ping (4379bis) approved by the IESG.
- First YANG Models to WGLC before Chicago
- Most effort and progress on the YANG models 


Links: 
https://datatracker.ietf.org/meeting/97/agenda/mpls/
https://datatracker.ietf.org/wg/mpls/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-mpls.txt




## NVO3
Meeting twice
- Session I: 13:30-15:00	Wednesday Afternoon session I
- Session II: 13:30-15:00	Thursday Afternoon session I

WG Highlights: 
- Rough consensus not reached on Data-plane encapsulation.
- Design team formed to work on Data-plane encapsulation. Initial version of the draft is being targeted for IETF98.
- Held WG interim meeting on 26th Oct.
- To have roundtable discussion format at IETF97, to discuss and progress Control plane and OAM related work.

WG Status Summary: 
- NVo3 architecture submitted to IESG for publication.
- NVo3 Multicast Framework document waiting for write-up.

Links: 
https://datatracker.ietf.org/meeting/97/agenda/nvo3/
https://datatracker.ietf.org/wg/nvo3/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-nvo3.txt

## OSPF
Meeting Day/Time: Wednesday, 9:30 AM KST in Park Ballroom I 

WG Highlights:  
- OSPF YANG Model progressing - moving toward WG last call 
- OSPFv2 Segment Routing draft updated - WG review and another last call 
- OSPF link attribute encoding debate 
- OSPF Max Age flooding robusticity debate
- Common Geo Location encoding across OSPF, IS-IS, BGP, and LISP 

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues 
- RFC 7949 published, OSPF 2-Part Metric on RFC Editor Queue
- Several drafts close to WG Last call including YANG Model 
- Need OSPFv3 Extended LSA Implementations 

Links: 
https://datatracker.ietf.org/meeting/97/agenda/ospf/ 
https://datatracker.ietf.org/wg/ospf/charter/ 
https://www.ietf.org/proceedings/97/minutes/minutes-97-ospf.txt



## PALS
Meeting: PALS did not meet at this IETF

One new RFC and one in the RFC Editor’s queue
 - RFC7965 (formerly draft-ietf-pals-mpls-tp-pw-over-bidir-lsp)
 - draft-ietf-pals-mc-pon

draft-ietf-pals-rfc4447bis, our first Standard, is waiting for a small edit to complete IESG review.

Three drafts are in Expert Review and one in AD evaluation:
 - draft-ietf-pals-endpoint-fast protection
 - draft-ietf-pals-mpls-tp-dual-homing-coordination
 - draft-ietf-pals-mpls-tp-dual-homing-protection
 - draft-ietf-pals-status-reduction

One draft, draft-ietf-pals-p2mp-pw is in WGLC. This draft took a long time to get through IPR sign-off and still has no sign-off from one author.



## PCE

Meeting: Wednesday - 13:30-15:00 - Afternoon session I
YANG Meeting (w/ CCAMP,MPLS,TEAS): Monday - 15:50-17:50 - Afternoon Session II

WG Highlights:
 * Stateful PCE
   * base protocol - one last edit and then publish
   * several new tools being added to the stateful PCE toolkit
 * YANG model making good progress
 * Several work items being brought to the WG
   * PCE as a central controller
   * PCE role in ACTN (Abstraction and Control of Transport Network)

WG Status Summary:
 * Two documents in RFC Editor queue
   * draft-ietf-pce-stateful-pce-app (our first stateful PCE RFC! Yay!)
   * draft-ietf-pce-pcep-service-aware (waiting for stateful PCE protocol)
 * Two documents have passed working group last call
   * draft-ietf-pce-inter-layer-ext
   * draft-ietf-pce-inter-area-as-applicability

Links:
https://datatracker.ietf.org/meeting/97/agenda/pce/
https://datatracker.ietf.org/wg/pce/charter/
https://datatracker.ietf.org/wg/pce/documents/

## PIM

Meeting was Monday morning.

draft-ietf-pim-join-attributes-for-lisp is waiting for IESG processing.

draft-ietf-pim-yang is a YANG model for PIM and is almost done. Only remaining issue is BFD. Should BFD configuration for PIM be in the PIM model, and what should it look like? We have already had WGLC and YANG doctor review.

draft-ietf-pim-igmp-mld-yang defines YANG models for IGMP and MLD. Almost done. WGLC soon.

draft-zhang-pim-msdp-yang is a YANG model for MSDP and we will do an adoption call shortly.

## ROLL

ROLL Meeting 

11:10 - 12:10  Wednesday Morning session II

draft-ietf-roll-applicability-ami-15 --RFC Ed Queue

draft-ietf-roll-routing-dispatch-05 -- IESG approved

draft-ietf-roll-useofrplinfo-09 -- WGLC


Charter in evaluation


## RTGWG

Meeting twice
- Session I: Tuesday, 9:30-12:00 	 
- Session II: Friday  9:30-11:30

WG Highlights:
- Great progress of RtgYangArchDT
- Continuing work on FRR with SR and MRT

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues 

No new RFC's
- draft-ietf-rtgwg-yang-key-chain has passed WGLC however there has been an update, after presentation at IETF97 will go to IESG
- draft-ietf-rtgwg-yang-rip and draft-ietf-rtgwg-yang-vrrp are ready for WGLC
- Few more drafts drafts are getting ready for WGLC and in process of shepherd's review

Links: 
https://datatracker.ietf.org/meeting/97/agenda/rtgwg/
https://datatracker.ietf.org/wg/rtgwg/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-rtgwg.txt


## SFC
Meeting: Monday, 09.30 - 12.00 KST in Grand Ballroom I

WG highlights:
- New WG chair (Joel Halpern). Martin Stiemerling & Thomas Narten stepped down as WG chairs.
- Interim meeting held 10/14 to discuss progressing security and NSH metadata topics. WG plan of action in place to move this work forward.
- WG needs to progress SFC OAM work. Open discussion point within the WG.

WG Status Summary:
- No new RFCs
- SFC control plane (https://datatracker.ietf.org/doc/draft-ietf-sfc-control-plane/) waiting for AD evaluation to be completed.
- SFC encapsulation (https://datatracker.ietf.org/doc/draft-ietf-sfc-nsh/) completed WGLC. Some issues were raised and will be addressed before the chairs release the document for IESG publication. 

Links:
https://www.ietf.org/proceedings/97/agenda/agenda-97-sfc-02
https://datatracker.ietf.org/wg/sfc/charter/

## SIDR

Meeting: 15:20-17:50    Thursday Afternoon session II

WG highlights and status summary:
- one new RFC since last IETF
- 12 drafts in or past publication requested status
- 4 in AD Evaluation, 2 in IETF Last Call
- Great level of comment from the AD on BGPsec protocol
- SIDR will be moving work to SIDROps - short discussion of SIDROps on agenda
- two interop discussions related to BGPsec on agenda

Links:
https://www.ietf.org/proceedings/97/agenda/agenda-97-sidr-03.txt
https://datatracker.ietf.org/group/sidr/charter/ 

## SPRING
Meeting Day/Time:
 -  Thurdsay 09:30-11:00

WG Highlights:
 -  WG focused on delivering architecture and main use cases to IESG.
 -  Intriguing lack of responsiveness to IPR polls / lack of interest to document transition 

WG Status Summary:
 -  0 new RFC, 2/7 WG LC completed, 1/3 adoptions completed.
 -  Roadmap being defined for sorting all this before next meeting.

https://datatracker.ietf.org/meeting/97/agenda/spring/
https://datatracker.ietf.org/wg/spring/charter/
https://www.ietf.org/proceedings/97/minutes/minutes-97-spring.txt

## TEAS

Meetings
- Session I: Monday 09:30 - 12:00
- Session II: Monday 15:50-17:50, joint YANG session with CCAMP, MPLS and PCE

WG Highlights: 
- Yang Models: TE-Topology, TE/RSVP models are almost baked. Next steps involve getting the base versions ready for LC.
- ACTN: Requirements and Framework documents (WG documents) are getting refined. Solution options (individual drafts) are being discussed.
- PCE Central Control: Architecture document was recently adopted. Use-Case documents are being discussed.

WG Status Summary: 
- Recent RFC: RFC7926: Problem Statement and Architecture for Information Exchange between Interconnected Traffic-Engineered Networks
- RFC-Editor’s Queue: draft-ietf-teas-rsvp-te-srlg-collect
- Publication requested: draft-ietf-teas-gmpls-resource-sharing-proc, draft-ietf-teas-p2mp-loose-path-reopt
- New WG Adoptions: draft-ietf-teas-pce-central-control, draft-ietf-teas-scheduled-resources

Links: 
https://www.ietf.org/proceedings/97/agenda/agenda-97-teas-03.html
https://datatracker.ietf.org/wg/teas/charter/
https://datatracker.ietf.org/wg/teas/documents/

## TRILL
Wed 11/16/2016 - 11:10 - 12:10am (Korean) 

 Group Keying [draft-eastlake-trill-group=-keying] TRILL: Parent node Shifts in Tree Construction, Mitigation [draft-rp-trill-parent-selection-01 ]
 
(remote participation) 

 Path telemetry {draft-kumar-trill-path-telemetry-00] 
 
 &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-11-15. It was migrated from the old Trac wiki on 2023-01-05.*




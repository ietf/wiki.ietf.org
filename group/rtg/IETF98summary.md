---
title: IETF 98 Routing Area Working Group High-Level Summary
description: 
published: true
date: 2023-01-05T20:07:28.320Z
tags: 
editor: markdown
dateCreated: 2023-01-05T20:07:23.038Z
---

# IETF 98 Routing Area Working Group High-Level Summary 

Summaries and Status through IETF 98


## Summary Template 
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
https://datatracker.ietf.org/meeting/98/agenda/xxx/
http://datatracker.ietf.org/wg/xxx/about/
https://www.ietf.org/proceedings/98/xxx.html


## BABEL
Meeting Tuesday @13:00

WG Highlights:  Mainly working on moving the Babel protocol documents from Experimental to Standards track while making minor improvements. Presentations scheduled on detailed Draft status and open questions, multicast support, and data model.

WG Status Summary: Main protocol draft and applicability draft adopted by WG.

Links: 
https://datatracker.ietf.org/meeting/98/agenda/babel/ 
http://datatracker.ietf.org/wg/babel/about/ 
https://www.ietf.org/proceedings/98/babel.html 

## BESS

Meeting: Monday/09:00

WG Highlights:
* steady operations (attendance, document flow)
* 3 WG LCs, 2 new WG Documents
* two documents in "Publication Requested" state
* two new editors on left aside documents (end-system and mibs)
* a proposed BGP multicast draft will require coordination with PIM

WG Status Summary: see above

Links: https://datatracker.ietf.org/meeting/98/session/bess: Agenda, Materials, and Minutes

## BFD

Meeting Monday @ 17:10

WG Highlights: 
* Discussed trying to get BFD Multipoint drafts to RFC.
* Further progress on BFD Yang document.
* Call to advance draft-ietf-bfd-optimizing-authentication.
* draft-sonal-bfd-secure-sequence-numbers presented to help with some scenarios in the optimizing authentication.  These sequence number tricks may be helpful for other protocols.
* draft-tanmir-rtgwg-bfd-mc-lag-(ip|mpls) - previously presented at IETF 96.  Should we move forward on adoption?


WG Status Summary:
* No publications since BFD last met at IETF 96.
* Working Group Status always up to date on the [BFD Wiki](/group/bfd)

## BIER

* Codepoints called out and will be going to IANA
* Ongoing discussion, interaction with IEEE on BIER Ethertype
* Several drafts ready for last call
* Will be starting work on the draft necessary towards Standards track outlining the deployment experience and resulting benefits, problems, and trade-offs for using BIER instead of traditional multicast forwarding mechanisms

## CCAMP

Meeting three times
- Session I: Tuesday 14:50-16:20
- Session II: Friday 09:00-11:30, joint YANG session with TEAS, MPLS and PCE (hosted by MPLS)
- Side meeting: FlexE meeting announced on the CCAMP and relevant ML

WG Highlights: 
- Microwave and millimiter wave DT: framework adopted, first version of the YANG model available, lots of comments received.
- Transport NBI DT: use cases draft available
- YANG models updated: WSON, WSON iv, Flexi Grid, IPoWDM interface, L1 topo
- New Work: Beyond 100G (G709v5), FlexE

WG Status Summary: 
- 1 ID in Editor Queue: draft-ietf-ccamp-flexible-grid-ospf-ext
- 1 ID post WG LC: draft-ietf-ccamp-ospf-availability-extension (waiting for a TEAS doc)

Links: 
https://datatracker.ietf.org/meeting/98/agenda/ccamp/ 
https://datatracker.ietf.org/wg/ccamp/charter/ 
https://www.ietf.org/proceedings/98/minutes/minutes-97-ccamp.txt

## DETNET
Meetings

Session I: Monday 13:00 - 15:00
WG Highlights/Summary:

Architecture document wrapping up soon.
Original early documents (problem statement, data plane alternatives) basically done.  Will progress, assuming no major revisions needed.
Data plane solution design draft published, likely to be adopted before Prague.

Links: 
https://datatracker.ietf.org/meeting/98/agenda/detnet/ Agenda
https://datatracker.ietf.org/wg/detnet/charter/ WG Charter
https://www.ietf.org/proceedings/98/minutes/minutes-97-detnet.txt  Minutes
http://etherpad.tools.ietf.org:9000/p/notes-ietf-98-detnet?useMonospaceFont=true: Session notes
https://www.ietf.org/audio/ietf98/ietf98-zurichg-20170327-1300.mp3: Audio
https://www.youtube.com/watch?v=HW-zShuDHh4: Video

## I2RS

I2RS met 3/29 (Wed. 1:00-3:00pm) 
Status: 
- in 2016, Requirements sent to NETMOD/NETCONF
- in 2017, it appears Revised Datastores handling dynamic datastores and ephemeral state may come back. 
- Initial thoughts about I2RS additions to NETCONF/RESTCONF were presented in NETCONF/I2RS
- If you have input or a desire to work on send notes to chair.

- I2RS Topology model will use revised datastores view.  WG LC will start again within 3 weeks. 
- Updates on I2RS FB-RIB given, 
- New protocol independent model presentations were given on Data Center Fabric and BNG Data-plane/Control plane. 

## IDR

IDR is on Friday 3/31 (9am-11:30am) 

Major Topics: 
- Updates on Preventing Attribute Squatting: should we add more registy review or get rid of atomic attribute. 
- Updates on Current IDR Drafts 
  Route Servers+BFDs (draft-ietf-idr-rs-bfd)
  Route Leak Mitigation: draft-ymbk-idr-bgp-open-policy (discussion only), draft-ietf-idr-route-leak-detection-mitigation. 
  SID: draft-tantsura-idr-bgp-ls-segment-routing-msd
  SR:  draft-ietf-idr-bgpls-segment-routing-epe-11, draft-ietf-idr-bgp-prefix-sid-04, draft-previdi-idr-segment-routing-te-policy-05  
  NextHop: draft-decraene-idr-next-hop-capability-03
  RR options: draft-idr-bgp-route-refresh-options-02  

New Work: 
* ISP internal eBGP border using BGP Roles: (draft-ymbk-idr-isp-border)
* BGP LLDP Peer discovery (draft-acee-idr-lldp-peer-discovery)
* BGP IPv6-SR-Based VPN Networks (draft-dawra-idr-srv6-vpn)
* Compressed BGP Update Message (draft-przygienda-idr-compressed-updates)
* Populate to FIB Action for FlowSpec (draft-li-idr-flowspec-populate-to-fib)
* BGP Neighbor Autdiscovery (draft-xu-idr-neighbor-autodiscovery-01) 
* Persistent Route Oscillation in BGP Oscillation in BGP Constrained Route Distribution (draft-idr-bgp-rt-oscillation-01)


## ISIS
Meeting: Friday, 11:50-13:20 CST in Zurich G

WG Highlights:
* Interest in spine-leaf topologies
* Yang should be ready to go.

WG Status Summary:
* IETF LC: draft-ietf-isis-auto-conf
* IETF LC: draft-ietf-isis-mi-bis
* WGLC complete: draft-ietf-isis-l2bundles
* 5 WG documents
* 1 proposed WG
* 13 individual documents

Links: 
https://datatracker.ietf.org/meeting/98/agenda/isis/
http://datatracker.ietf.org/wg/isis/about/ 
https://www.ietf.org/proceedings/98/isis.html 


## L2TPEXT

* L2TPext is not meeting in Chicago
* Update on Current work:
   *  draft-ietf-l2tpext-keyed-ipv6-tunnel-06 (Keyed IPv6 Tunnel)
      * Approved for Publication
      * In the RFC Editor Q
   * draft-ietf-l2tpext-keyed-v6-tunnel-yang-01 (A YANG Data Model for Keyed IPv6 Tunnels)
      * Is next

## LISP

Meeting Thursday Afternoon Session I 13:00 -> 15:00

WG Highlights: 
* Three RFCs have been recently published:
   * RFC 8060 - LISP Canonical Address Format (LCAF) 
   * RFC 8061 - LISP Data Plane Confidentiality
   * RFC 8113 -  LISP Shared Extension Message and IANA Registry for Packet Type Allocations

WG Status Summary: 
* Requested Publication of the document draft-ietf-lisp-sec-12.txt
* Document draft-ietf-lisp-signal-free-multicast-02.txt is currently in WG Last Call.
* Adopted two documents for 6830bis and 6833bis to be also discussed at this meeting.
* Several individual submissions to be presented at this meeting, concerning:
   * Mobility
   * Traffic Engineering
   * EID Anonymity 
   * Blockchain-base mapping system
   * VPNs

Links: 
https://datatracker.ietf.org/meeting/98/agenda/lisp/
https://datatracker.ietf.org/wg/lisp/charter/


## MANET

Meeting Thursday 15:20-17:20 (Zurich B)

WG Highlights:
* OLSRv2 security threats doc in AUTH48 state
* DLEP draft cleared IESG last call

WG Status Summary:
* 4 documents (DLEP extensions) currently in flight

Links:
https://datatracker.ietf.org/meeting/98/agenda/manet/ 
https://datatracker.ietf.org/doc/charter-ietf-manet/ 


## MPLS

Two Sessions:

* Session I: Tuesday 09:50-11:30 (MPLS WG Session)
* Session II: Friday 09:00-11:30, joint YANG session with TEAS, MPLS and PCE (hosted by MPLS)

WG Highlights:
* New RFC: RFC8029 - Detecting Multiprotocol Label Switched (MPLS) Data-Plane Failures
* About 15 new or updated IDs
* draft-ietf-mpls-tp-linear-protection-mib-12 submitted for publication

Links: 
https://datatracker.ietf.org/meeting/98/agenda/mpls/
https://datatracker.ietf.org/wg/mpls/charter/

## NVO3

Meeting twice
	•	Session I: 14:50-16:20 Tuesday Afternoon session II
	•	Session II: 17:40-18:40 Thursday Afternoon session III
WG Highlights:
	•	WG has had deadlock for some time over data plane encapsulation.
	•	Data plane encapsulation design team now recommending draft-ietf-nvo3-geneve.
	•	Held virtual interim meeting on 1st March to review recommendations of design team.
	•	Held roundtable discussion format at IETF98, to discuss and progress Control plane, security and data plane related work.

WG Status Summary:
	•	New RFC8014: NVO3 architecture 
	•	NVO3 use cases in RFC editors queue
	•	NVO3 Multicast Framework document waiting for write-up.


## OSPF

Meeting: Thursday, 13:00-15:00 CST in Zurich D

WG Highlights:  
* OSPFv2 Segment Routing is to be WG last called before next IETF.
* OSPF YANG model almost ready for WG last call (YANG Doctors review will be requested)
* OSPFv3 LSA Extensions - May be an implementation
* Discussions on MPLS Entropy label delaying two advertising OSPF drafts 
* Ongoing discussion of OSPF attribute advertisement for multiple applications

WG Status Summary:
* RFC 8042 - OSPF Two-Part Metric  
* RFC 8099 - OSPF Topology Transparent Zone (TTZ)
* A half dozen other drafts close to WG last call   

Links: 
https://datatracker.ietf.org/meeting/98/agenda/ospf/ 
http://datatracker.ietf.org/wg/ospf/about/ 
https://www.ietf.org/proceedings/98/ospf.html


## PALS

PALS did not meet this IETF.

PALS published three new RFCs:
* RFC8024: Multi-Chassis Passive Optical Network (MC-PON) Protection in MPLS
* RFC8077 (STD84): Pseudowire Setup and Maintenance Using the Label Distribution Protocol (LDP) (RFC4447bis)
* RFC8104: Pseudowire (PW) Endpoint Fast Failure Protection

PALS has two drafts Approved Point Raised:
* draft-ietf-pals-mpls-tp-dual-homing-coordination-05 
* draft-ietf-pals-mpls-tp-dual-homing-protection-05 

The status of our remaining drafts is as follows:
* draft-ietf-pals-p2mp-pw-02 : Completed WGLC and at time of writing waiting for Shepherd’s Writeup (Stewart is Shepherd)
* draft-ietf-pals-p2mp-pw-lsp-ping-01: Just entered WGLC
* draft-ietf-pals-status-reduction-04: Just entered AD Evaluation
* draft-ietf-pals-vpls-pim-snooping-04: Submitted to IESG, waiting expert review

There are no other drafts in the queue. However the chairs have had a number of discussions with the DETNET design team about the applicability of PW technology to deterministic networking.


## PCE

Meeting twice:
* Monday Afternoon session II
* Friday Morning: Yang-focused, jointly with CCAMP/MPLS/TEAS

WG Highlights:
* Hierarchical PCE
   * About to last-call extensions to PCEP;
   * Stateful H-PCE is next;
   * Applicability to ACTN
* Various stateful PCE refinements
   * LSP associations for various purposes (diversity, bidirectional, etc.);
   * Delegation request;
   * Bandwidth scheduling;
   * Performance Measurement;
   * Stateful + BRPC
* Re-spin of PCEP for P2MP LSPs (RFC6006bis)
* PCEP YANG model

WG Status Summary:

New RFCs:
* RFC 8051 (Stateful PCE Applicability)

In RFC Editor Queue:
* draft-ietf-pce-pcep-service-aware (blocked on stateful PCE)
* draft-ietf-pce-inter-layer-ext (blocked on stateful PCE)

Submitted to the IESG:
* draft-ietf-pce-stateful-pce
* draft-ietf-pce-pce-initiated-lsp
* draft-ietf-pce-stateful-sync-optimizations
=> Main extensions for stateful PCE

Documents that have passed WGLC:
* draft-ietf-pce-pceps
* draft-ietf-pce-inter-area-as-applicability
* draft-ietf-pce-gmpls-pcep-extensions
* draft-ietf-pce-wson-rwa-ext
* draft-ietf-pce-rfc6006bis

Links: 
https://datatracker.ietf.org/meeting/98/agenda/pce/
http://datatracker.ietf.org/wg/pce/about/ 
https://www.ietf.org/proceedings/98/pce.html

                 
## PIM

Meeting Day-Time:
* Tuesday Morning session I - 9:00-11:30

WG Highlights:
* Focus on YANG models

WG Status Summary:
* Published RFC 8059
* Requested publishing of YANG PIM model draft
* YANG IGMP/MLD models almost ready for last call
* Adopted YANG MSDP draft
* PIM source discovery draft ready for last call
* 2 working group drafts not updated in a while

## ROLL


Meeting Day-Time:

* Thursday Afternoon session III - 17:40-18:40 


WG Highlights: 

* New Charter since December 2016

* AODV-RPL new work that wiil require review from MANET

* BIER-CCAST new work that wiil require review from PIM 

WG Status Summary: 

* Routing-dispatch draft in RFC-Editor Queue

* Useofrplinfo in WGLC

* Six new drafts adopted as WG-Items since last IETF

Links: 

* Agenda: https://datatracker.ietf.org/meeting/98/agenda/roll/

## RTGWG

Meetings:
* 9:00-11:30 Wednesday Morning Session; Vevey 1/2
* 15:20-17:20 Thursday Afternoon Session II; Zurich E/F 

WG Highlights: 
* YANG work is progressing in great tempo, number of drafts are ready for WGLC
* Routing in DC - 4 different solutions are being presented @Thursday meeting
* New secretary - Yingzhen Qu

WG Status Summary: 
* RFC8102 - Remote-LFA Node Protection and Manageability
* Publication Requested - draft-ietf-rtgwg-yang-key-chain
* about 10 drafts are ready for WGLC (under reviews)
* 2 new wg drafts

Links: 
https://datatracker.ietf.org/meeting/98/agenda/rtgwg/ 
http://datatracker.ietf.org/wg/rtgwg/about/ 
https://www.ietf.org/proceedings/98/rtgwg.html  



## SFC

Meeting: Tuesday, 16.40 - 18.40 CST in Zurich D

WG highlights:
* WG continues to work through the AIs from the Interim meeting held 10/14. Several AIs closed with consensus for the NSH document. 
    Close to resolving important issues such as general loop prevention
* WG needs to progress SFC OAM work. Open discussion point within the WG.
    Will be coordinated with general routing and OPS OAM activities
* WG needs to decide how to progress work on control plane requirements.
    The current document structure has meet with much resistance, but there is not currently a proposed alternative structure
    Hoping to engage the WG on this topic.

WG Status Summary:
- No new RFCs
- SFC control plane (https://datatracker.ietf.org/doc/draft-ietf-sfc-control-plane/) waiting for WG decision on how best to progress the work.
- SFC encapsulation (https://datatracker.ietf.org/doc/draft-ietf-sfc-nsh/) completed WGLC. Several issues raised at the interim and WG working through each AI. Document has various updates and will go through WGLC review again prior to IESG publication. 
- Collaborating with BESS (and IDR) on https://datatracker.ietf.org/doc/draft-mackie-bess-nsh-bgp-control-plane/

Links:
https://www.ietf.org/proceedings/98/agenda/agenda-98-sfc-01
https://datatracker.ietf.org/wg/sfc/charter/

## SIDR

SIDR did not meet at this IETF, but status and discussion in SIDROPS 14:50-16:20	Tuesday Afternoon session II

WG Highlights: 

dewindling down to a precious few remaining work items

WG Status Summary


9 drafts in RFC Editor queue

drafts remaining: 1 post IESG, 2 expired to be renewed, 1 wglc requested, 1 waiting resolution of AD comments, 1 waiting resolution of AD query, 1 blocked by idr draft progress

* draft-ietf-sidr-slurm  — recently updated, authors believe ready for wglc
* draft-ietf-sidr-rtr-keying — expired, authors queried as to status
* draft-ietf-sidr-bgpsec-overview - AD query to chairs, under consideration
* draft-ietf-sidr-publication — IESG DISCUSS addressed by recent version, AD checking, DISCUSS cleared
* draft-ietf-sidr-rpki-validation-reconsidered - AD reviewed, flurry of msgs
* draft-ietf-sidr-bgpsec-protocol and extended message reference — bgpsec-protocol relies on idr extended msgs draft, which is back in wg for more work.  question: if we don’t wait for idr, what can we do to draft to removed the block?
* draft-ietf-sidr-lta-use-cases — expired, original use OBE, query to wg of need


Links
https://datatracker.ietf.org/wg/sidr/about/ 
https://datatracker.ietf.org/meeting/98/agenda/sidrops/ 
no SIDR agenda - see SIDROPS agenda

## SPRING

Meeting:  Tuesday/13:00

WG Highlights:
  Important progress made. Reached challenging objective we had set in Seoul
  Thanks to WG, reviewers, authors, and shepherds

  Couple of WG Docs remain, will be WG-LCed soon

  We opened the discussion on next-steps for SPRING. Will continue on the list.

WG Status Summary:
  7 documents to IESG

Links: 
https://datatracker.ietf.org/meeting/98/session/spring: Agenda, Materials, and Minutes

## TEAS

Meetings
- Session I: Monday 09:00 - 11:30
- Session II: Friday 09:00 - 11:30, joint YANG session with CCAMP, MPLS and PCE

WG Highlights: 
- Yang Models: TE-Topology, TE/RSVP models are quite mature. Next steps involve getting the base versions ready for LC.
- ACTN: Requirements and Framework documents (WG documents) are getting refined. Info Model document just got adopted.
- PCE Central Control: Architecture document is almost baked. Use-Cases document just got adopted.

WG Status Summary: 
- Recent RFC: RFC8131: RSVP-TE Signaling Procedure for End-to-End GMPLS Restoration and Resource Sharing
- RFC-Editor’s Queue: draft-ietf-teas-p2mp-loose-path-reopt
- Publication Requested: draft-ietf-teas-gmpls-lsp-fastreroute
- New WG Adoptions: draft-ietf-teas-gmpls-scsi, draft-ietf-teas-actn-info-model, draft-ietf-teas-pcecc-use-cases, draft-ietf-teas-yang-rsvp-te

Links: 
https://datatracker.ietf.org/meeting/98/agenda/teas/ 
https://datatracker.ietf.org/wg/teas/charter/ 
https://datatracker.ietf.org/wg/teas/documents/ 

## TRILL

Meeting Monday @ 15:20

WG Highlights:  Presentations on Status of YANG Models, Possible new encoding of Fine Grained Labels, Parent Selection in distribution trees, and Smart End Nodes.

WG Status Summary: TRILL has documents at all stages going through the pipeline. Milestones are being updates but will not extend beyond March of 2018. The plan is to put through existing documents and minimize new work.

Links: 
https://datatracker.ietf.org/meeting/98/agenda/trill/ 
http://datatracker.ietf.org/wg/trill/about/ 
https://www.ietf.org/proceedings/98/trill.html 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-03-30. It was migrated from the old Trac wiki on 2023-01-05.*




---
title: IETF 94 Summary
description: 
published: true
date: 2022-12-23T00:39:07.508Z
tags: 
editor: markdown
dateCreated: 2022-12-23T00:39:01.824Z
---

# IETF 94 Routing Area Working Group High-Level Summary

Summaries and Status through IETF 9, November 1-6, 2015 in Yokohama.

## Summary Template
Meeting Day/Time:  (If not meeting, just say so.)

WG Highlights:  (Hot Topics, Work Streams, Cross-WG/Area items, other news, new/dead work, etc.)

WG Status Summary: (Publications/RFC Editor/IESG/WGLC Queues (since last IETF) -- Optional.)

Links: 
[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-xxx)
[WG Charter](http://datatracker.ietf.org/wg/xxx/charter/)
[Minutes](https://www.ietf.org/proceedings/94/xxx.html)


## BESS
* Meeting Thursday 13:00-15:00
* WG Highlights:
  * group dynamics good and stable
  * most of the current work concern mVPN and EVPN
  * YANG work maturing slowly
  * being gently challenged by IESG on the ease to apprehend some of our documents; working on a solution
  * ''more after the meeting''
* WG Status Summary:
  * 1 new RFC (RFC 7611)
  * 6 documents sent to Alvaro/IESG
  * 3 documents WGLCed
  * 3 documents polled for adoption

## BFD

* Meeting Tuesday, 9:00-11:30

* WG Highlights:
  * Status current on WG wiki: https://wiki.tools.ietf.org/wg/bfd/trac/wiki
  * Chair change: Welcome Reshad Rahman and thanks Nobo Akiya for all your work!
  * This session, covering:
    * BFD for VxLAN
    * BFD Yang module updates.  Please also see the LIME Working Group for some interesting interaction.
    * BFD fast authentication - better crypto more sustainably.
  
* WG Status Summary: 
  * RFC 5884 (BFD for MPLS LSPs) considerations document about to be published.
  * S-BFD documents through WGLC, stalled on edits from AD comments.  Nobo has handed off editorial pen.  We need to decide what to do about the use-case document.
  * BFD Multipoint under WGLC.  No comments yet and no support.
  * BFD MPLS MIB under WGLC.  No comments yet and no support.



## BIER


* Meeting Friday morning

* WG Highlights:
  * Agenda at https://tools.ietf.org/wg/bier/agenda
  * Extensive discussions on majority of drafts during last months, refer to https://mailarchive.ietf.org/arch/browse/bier/
  
* WG Status Summary: 
  * adopted documents at https://datatracker.ietf.org/wg/bier/documents/
  * expect several calls for adoption (OAM & additional overlay work)

## CCAMP

Meeting: Monday - 15:20-16:50 - Afternoon session II

WG Highlights:  
 * Most of flexi grid drafts in the editor queue
 * Black links work turned into Management and Control of DWDM optical interfaces parameters
 * 3 technology specific yang drafts: WSON, flexi grid, optical interfaces parameters

WG Status Summary: 
 * Recent RFCs: none
 * Errata: RFC4920 - Corrected text:“Length of the actual (non-padded) IS-IS Area Identifier in octets. Valid values are from 1 to 13 inclusive.” 
 * Editor queue:
   * draft-ietf-ccamp-flexi-grid-fwk 
   * draft-ietf-ccamp-flexigrid-lambda-label 
   * draft-ietf-ccamp-wson-signal-compatibility-ospf 
   * draft-ietf-ccamp-wson-signaling 
 * IESG Processing:draft-ietf-ccamp-flexible-grid-rsvp-te-ext
 * Pre-WG LC: draft-ietf-ccamp-otn-signal-type-subregistry
 * Liaison: 
   * From BBF: Received 16th, October 2015, “Achieving Packet Network Optimization using DWDM Interfaces” 
     * https://datatracker.ietf.org/liaison/1432/
   * From ITU-T: LS on protocol-specific data modelling work
     * https://datatracker.ietf.org/liaison/1433/

Links: 
[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-ccamp)
[WG Charter](http://datatracker.ietf.org/wg/ccamp/charter/)
[Minutes](https://www.ietf.org/proceedings/94/ccamp.html)

## DETNET

Meeting: Monday, 9:00-11:30 Monday Morning session I,  Room: 301

WG Highlights:  
  * New consolidated use case document
  * Working towards adoption of initial 3 documents
  * Starting dicussions on data plane

WG Status Summary: 
  * 1ST WG Meeting!

Links: 
[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-detnet)
[WG Charter](http://datatracker.ietf.org/wg/detnet/charter/)
[Minutes](https://www.ietf.org/proceedings/94/detnet.html)
[Tools](https://tools.ietf.org/wg/detnet/)

## I2RS

I2RS Focus: 
* Programmatic interface to routing system 
* (ephemeral state, notification, subscription to 
* publication of data, traceability of actions, 
* fast interaction 

I2RS at Hackathon: 
* Won prize as "Best failure" with most learning 

Meeting: Monday Nov 2 9:00-11:30am 

Status: I2RS is ready to send IESG
* problem statement, architecture, 
* 4 requirement documents for protocol, 
* security environment, 
* RIB Information model 

I2RS is finalizing initial data modules
* RIB Ephemeral Data model, 
* Filter-Based RIB Data Model, 
* Topology models (generic, L3, L2) 
*[Service and L1 will finalize after this group]

Open Issues for drafts: 
*RIB should be aligned with routing-configuration
*FB-RIB is feature for config and ephemeral, but
 there is no config.  Will define
* Topology models are considering a "write"
* that creates pieces of topology. 
* Debate will continue on list. 

 I2RS protocol proposal 
* Initial proposal for RESTCONF 
* Runs over Secure and Encrypted transport 
* uses "ephemeral" key word in Yang to specify yang modules. 


I2RS WG next steps
* finish Data Models
* Accept Protocol Data Models in order to guide data models before going to WGs, 
* Encourage development of code (Open-source or vendor), 
* Ask operators regarding what they need from I2RS 

[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-i2rs)
[charter](https://datatracker.ietf.org/doc/charter-ietf-i2rs/)
	

## IDR
* Meeting Monday, 1:00 - 3:00
* WG Highlights:
  * Focus this meeting, flow-spec
* WG Status:
	* Documents:
		* 3 new RFCs (AS 0, Error Handling, Flowspec redirect RT)
		* AS-migration and link-distribution w/ RFC Ed
		* Route-server, SLA-exchange, RTC-no-RTC w/ IESG
		* 2 new early allocations
	* Working to finish (or EoL!)
		* add-path
		* custom decision
		* ASPATH ORF
		* Multisession
		* Dynamic capability
		* MIBv2
		* Link-bandwidth community
	* Recharter discussion 2016
* Links:
	[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-idr)
	[Charter](http://datatracker.ietf.org/wg/idr/charter/)
	[Minutes](https://www.ietf.org/proceedings/94/idr.html)

## ISIS
* Meeting on Thursday 13:00 - 15:00
* New Topics
  - Change to Router Capability TLV (allow no IPv4 config)
  - Change to LSP Remaining Lifetime (prevent corruption ill-effects).
  - Advertising L2 Bundle Link Attributes
* Ongoing Topics
  - Autoconf
  - Bier Support Update
  - Flowspec
  - Point-to-Multipoint (*)
  - Homenet -> Babel
* Cleared Last Call
  - draft-ietf-isis-pcr-02
  - draft-ietf-isis-prefix-attributes-01
  - draft-ietf-isis-te-metric-extensions-07
  - draft-ietf-isis-node-admin-tag-02
* Submitted to IESG
  - draft-ietf-isis-sbfd-discriminator-02
  - draft-ietf-isis-route-preference-02

## L2TPEXT

* L2TPExt is not meeting in Yokohama-shi

* WG Highlights:
  * Charter: http://datatracker.ietf.org/wg/l2tpext/charter/
  * Emptying the queue of WG documents
  
* WG Status Summary: 
  * WG Documents:
    * draft-ietf-l2tpext-keyed-ipv6-tunnel-05 -> in Deborah's hands since 2015-07-07, and Expert Review since 2015-09-11
    * draft-ietf-l2tpext-sbfd-discriminator-00 -> in WG LC
    * draft-ietf-l2tpext-keyed-v6-tunnel-yang-00 -> Active WG doc
  * Related Documents:
    * draft-ietf-pals-seamless-vccv-00 -> PALS WG doc

## LISP

* Meeting: Tuesday, November 3, 15:20, Room 301

* WG Highlights:
  * LISP Impact approved by IESG but revised document needed.
  * IANA allocated prefix 2001:5::/32 as requested by LISP EID Block document.
 
* WG Status Summary:
  * No new RFCs
  * LISP DDT revised document needed (fixing comment from document shepherd)
 * The WG group is rechartering
   * Proposed Work Items:
     * NAT-Traversal
     * Mobility
     * Data-Plane Encryption
     * Multicast: Support for overlay multicast by means of replication as well as interfacing with existing underlay multicast support.
     * Data models for management of LISP.
     * Multi-protocol support: Specifying the required extensions to support multi-protocol encapsulation (e.g.,   L2 or NSH – Network Service Headers). Rather than developing new encapsulations the work will aim at using existing well-established encapsulations or emerging from other Working Grops such as  NVO3 and SFC.  
     * Alternative Mapping System Design. By extenting LISP with  new protocols support it is also necessary to develop the required mapping function extensions to operate LISP map-assisted  networks (which might include Hierarchical Pull, Publish-Subscribe, or Push models and related security extension).

* Links: 
 * WG Charter: http://datatracker.ietf.org/wg/lisp/charter
 * Agenda: http://tools.ietf.org/wg/lisp/agendal
 * Minutes : http://tools.ietf.org/wg/lisp/minutes

## MANET

## MPLS
* Metting twice this week
  * Wednesday morning (9-11.30)
  * Thursday afternoon (17.40-18.40). Joint with TEAS on YANG.
* WG Highlights
  * YANG work is ready for wg adoption
  * Core specifications ready to become Internet Standards

## NVO3
* Meeting at IETF-94: 13:00-15:00 Tuesday Afternoon session I (room 502)

* WG Highlights:
	* Work Streams:
		* Data Plane:
			* 3 drafts currently: VXLAN-GPE, GENEVE, GUE
		* Control & Management
			* CP discussion ongoing
			* YANG model work to be organized soon
			* OAM DT being formed now
	* Interim Planning
		* Early planning stage
		* Possibly co-resident at upcoming NANOG
		* May include agenda items such as:
			* Interop Demos and Discussions
			* Data plane protocol evaluations

* WG Status Summary:
	* No new RFCs since IETF-93
	* WGLC Completed on Security Requirements draft, but needs further review
	* Goal to WGLC the Use-cases and Architecture drafts soon
		* Recent list discussion of Use-cases draft
	* IEEE working on VDP enhancements for "split NVE" control plane

* Links:
	* WG Charter: http://datatracker.ietf.org/wg/nvo3/charter/
	* Agenda: https://datatracker.ietf.org/meeting/94/agenda/nvo3/
	* Minutes: TBD

## OSPF
* Meeting: Wednesday, November 4, 13:00, Room 302

* WG Highlights:
  * OSPFv2 Prefix and Link Attributes completed clearing the way for dependent drafts
  * OSPFv2 Segment Routing nearing WGLC. 
  * OSPFv3 Extended LSAs migration simplification 
  * OSPF YANG Model full featured - need resolution of generic OPS State structure
  * Presentation on Hub-and-Spoke topology optimization 

* WG Status Summary:
  * No new RFCs
  * Two drafts with the RFC Editor
  * One draft with the IESG
  * One draft with document shepherd comments pending 
  * Two others close to WGLC  

* Links: 
  * WG Charter: http://datatracker.ietf.org/wg/ospf/charter/
  * Agenda: http://tools.ietf.org/wg/pals/agenda?item=agenda-94-ospf.html
  * Minutes : http://tools.ietf.org/wg/ospf/minutes


## PALS

* Meeting: Monday, November 2, 13:00, Room 302

* WG Highlights:
  * Relatively short agenda for this meeting as we've cleared eight drafts to the RFC Editor and IESG (see below)
  * Also expecting two more drafts to enter WG LC following IETF 94
  * One draft that passed L2VPN LC has some additional comments to resolve, may need new PALS WG LC
  * Six other WG drafts in various states of development, will focus on clearing those once past current batch in the IESG and upcoming WG LCs
  * Expecting upcoming new work to be YANG models for the most part

* WG Status Summary:
  * No new RFCs, but the pump has been primed
  * Three drafts with the RFC Editor
  * Five drafts with the IESG

* Links: 
  * WG Charter: http://datatracker.ietf.org/wg/pals/charter/
  * Agenda: https://www.ietf.org/proceedings/94/agenda/agenda-94-pals
  * Minutes : https://www.ietf.org/proceedings/94/minutes/minutes-94-pals

## PCE
Meeting: Tuesday, November 3, 5:12pm-6:40pm

WG Highlights:
- Jon Hardwick is a new co-chair
- Chairs are working on moving forward stateful PCE work
- On the agenda, several proposals related to stateful and active PCE

WG Status Summary:
- No new RFC since Prague
- 2 successful early codepoint allocation requests (-lsp-setup-type, -segment-routing)
- 1 WG LC in October (-pceps), more to come
- 1 ID sent to the IESG (draft-ietf-pce-pcep-domain-sequence)
- 3 IDs to be sent to the IESG after comment resolution (-stateful-pce-app, -stateful-pce, -stateful-sync-optimizations)

Links: 
[Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-pce)
[WG Charter](http://datatracker.ietf.org/wg/pce/charter/)
[Minutes](https://www.ietf.org/proceedings/94/pce.html)

## PIM
Meeting: Thursday, November 5, 15:20-17:20 - Afternoon session II

WG Highlights:
- 4601bis in RFC Editor queue (PIM-SM to Internet Standard)
- Publication requested for two drafts, some improvements needed.
- A lot of new work proposed, including YANG.

WG Status Summary:
- 1 document approved for publishing
- No new adoptions since last IETF
- 6 active drafts
- 2 expired drafts
- 8 drafts to be discussed this time, 3 WG drafts, 5 other drafts.


## ROLL

* Meeting: Thursday, November 5, 17:40-18:40 - Afternoon session III

* IETF 94: Meeting 1 hr

* Drafts Status
  * draft-ietf-roll-admin-local-policy → RFC Ed Queue
  * draft-ietf-roll-applicability-home-building → RFC Ed Queue 
  * draft-ietf-roll-mpl-parameter-configuration → New version posted today should address all the IESG Comments. 
  * draft-ietf-roll-trickle-mcast → RFC Ed Queue
  * draft-ietf-roll-applicability-ami → To be submitted to IESG

* New Drafts:
    * draft-robles-roll-useofrplinfo-02 : New version to be presented in IETF 94
    * draft-thubert-roll-dao-projection: new version to be presented in IETF 94

 * New Drafts not to be presented in IETF 94:
    * draft-tan-roll-clustering-00 
    * draft-turner-roll-dio-ctx-00 
    * draft-wang-roll-adaptive-data-aggregation-00 



## RTGWG

* Meetings: 
  * MONDAY, November 2, 2015 1520-1650  Afternoon Session II Room 502
  * THURSDAY, November 5, 2015 1520-1720  Afternoon Session II Room 304

* WG Highlights
  * Good progress on YANG drafts
  * Very good discussion around rLFA node protection draft, getting close to WGLC

* WG Status Summary:
  * One new RFC
    * [http://datatracker.ietf.org/doc/rfc7431/]
  * One draft with the RFC Editor
    * [http://datatracker.ietf.org/doc/draft-ietf-rtgwg-lfa-manageability/]
  * One draft with document shepherd review pending 
    * [http://datatracker.ietf.org/doc/draft-ietf-rtgwg-bgp-routing-large-dc/]
  * Two drafts are in routing directorate QA review
    * [https://datatracker.ietf.org/doc/draft-acee-rtg-yang-key-chain/]
    * [http://datatracker.ietf.org/doc/draft-ietf-rtgwg-rlfa-node-protection/]
  * Four new working group drafts
    * [http://datatracker.ietf.org/doc/draft-ietf-rtgwg-policy-model/]
    * [http://datatracker.ietf.org/doc/draft-ietf-rtgwg-yang-rip/]
    * [http://datatracker.ietf.org/doc/draft-ietf-rtgwg-dst-src-routing/]
    * [http://datatracker.ietf.org/doc/draft-litkowski-rtgwg-uloop-delay/]

* Links: 
  * [Agenda](https://www.ietf.org/proceedings/94/agenda/agenda-94-rtgwg)
  * [WG Charter](http://datatracker.ietf.org/wg/rtgwg/charter/)
  * [Minutes](https://www.ietf.org/proceedings/94/rtgwg.html)

## SFC

* Meeting: Thursday, November 5, 0900 - 1130, Room 502 

* WG Highlights
  * SFC Architecture became RFC - RFC-7665
  * SFC control plane document adopted into the WG
  * Security analysis design team formed - initial output:
    * [https://datatracker.ietf.org/doc/draft-mglt-sfc-security-environment-req/]

* Hot Topics:
  * Security analysis
  * Finalizing SFC encapsulation to push for WGLC before next IETF meeting

* WG Status Summary: 
  * 2 drafts accepted as WG document:
    * [https://datatracker.ietf.org/doc/draft-ietf-sfc-control-plane/]
    * [https://datatracker.ietf.org/doc/draft-ietf-sfc-oam-framework/]
  * 1 documented moved to RFC:
    * [https://datatracker.ietf.org/doc/rfc7665/]

## SIDR

* Meeting twice
  * Meeting: Tuesday, November 3, 17:10-18:40, Room 304 
  * Meeting: Friday, November 6, 2015 9:00-10:30, Room 303

* WG Highlights
  * One document in RFC Ed Queue, one in IETF Last Call, three just finished WGLC, two past WGLC revisions and publication requests soon

* WG Status Summary
  * RFC6490-bis went through IESG Evaluation in August with a revised ID required (to deal with line breaks in an example), and is now on the RFC Editor queue
  * RFC6485bis is in IETF Last Call, due to end 2 November
  * Three documents in WGLC ended in the last three weeks
     * draft-ietf-sidr-bgpsec-overview
     * draft-ietf-sidr-bgpsec-pki-profiles-12
     * draft-ietf-sidr-bgpsec-algs-11
  * Revisions dealing with WGLC comments for draft-ietf-sidr-rpsl-sig confirmed in the last week, presentation request soon
  * Revisions dealing with post WGLC comments for draft-ietf-sidr-rpki-rtr-rfc6810-bis confirmed in the last two weeks, presentation request imminent
  * One document adopted by the working group: draft-dseomn-sidr-slurm
* Hot Topics:
  * Late breaking complex issue with BGPSEC Protocol (publication thought imminent at last IETF) forced need for a revision, short WGLC will be needed
  * Validation Reconsidered is on the agenda on Monday
  * Two presentations on Friday on bad CA activities
   * One a remote presentation via Meetecho

## SPRING

* Meeting: Tuesday, November 3, 0900 - 1030, Room 303
  * Full meeting
  * Virtual interim to be planned for 2 presentations.

* WG Highlights
  * Segment Routing Architecture passed WGLC
  * Hot Topics:
    * Anycast Segments in MPLS based SPRING
    * Adressing Segment ID conflicts
    * Handling multiple routing algorithm/topology: multiple Segment ID versus multiple SRGB (label blocks)


* WG Status Summary: 
  * 4 drafts accepted as WG document: 
    * [https://tools.ietf.org/html/draft-ietf-spring-segment-routing-central-epe-00 Centralized Egress Peer Engineering]
    * [https://tools.ietf.org/html/draft-ietf-spring-segment-routing-ldp-interop-00 Interoperability with LDP]
    * [https://tools.ietf.org/html/draft-ietf-spring-segment-routing-msdc-00 BGP-Prefix Segment in large-scale data centers]
    * [https://tools.ietf.org/html/draft-ietf-spring-oam-usecase-01 Use Case for MPLS Data Plane Monitoring System]
  * WGLC passed:
    * [https://tools.ietf.org/html/draft-ietf-spring-segment-routing-06 Segment Routing Architecture]
  * (just) submitted to IESG:
    * [https://tools.ietf.org/html/draft-ietf-spring-problem-statement-05 SPRING Problem Statement and Requirements]


## TEAS
* Meeting on Thursday Nov 5th 2015, 09:00 - 11:30
* Joint MPLS-TEAS Yang Session - Thursday Nov 5th 2015, 17:40 - 18:40
* WG Highlights
   * Hot-Topics:
     * YANG:
       * TE Topology Model
         * Alignment with I2RS Network Topology Model (completed)
       * RSVP/TE Models
         * Ongoing co-ordination with [http://www.openconfig.net/ OpenConfig]
      * ACTN
         * First ACTN related document adopted (Requirements)
* WG Status Summary
   * No new RFCs (since Prague)     
   * RFC-Editor's Queue: 2
      * draft-ietf-teas-te-express-path
      * draft-ietf-teas-fast-lsps-requirements
   * IESG-Processing: 2
      *  draft-ietf-teas-rsvp-te-srlg-collect
      * draft-ietf-teas-rsvp-te-domain-subobjects
   * New WG Adoptions: 4
      * draft-ietf-teas-actn-requirements
      * draft-ietf-teas-rsvp-te-scaling-rec
      * draft-ietf-teas-yang-rsvp
      * draft-ietf-teas-yang-te


## TRILL
TRILL's Major focus: 
* OAM, Active-active, Directory Assist for TRILL, 
* multi-level, multi-topology, Trill over * 

[https://www.ietf.org/proceedings/94/agenda/agenda-94-trill Agenda]
[http://datatracker.ietf.org/wg/trill/charter/ WG Charter]
[https://www.ietf.org/proceedings/94/xxx.html  Minutes]

Topics for this IETF: 

* Tuesday:  17:10-18:40 (Room 411/412
* Directory Assitance for TRILL- 4 Drafts
* Smart End Nodes - 1 draft 
* TRILL over * - 3 drafts 
* MPLS (2 drafts), IP (1 draft)

* Thursday: 17:40-18:40 
* Multi-access/other link security - 1 draft
* Multi-level/Multi-Topology - 3 drafts
* Remote Mac Flush 

Status: 
* Editor's Queue: 5 drafts
* Past WG LC: 5 drafts
* WG Drafts: 10 drafts + 3 yang drafts 
* Cross WG drafts: 2 drafts  
* WG Adoption call: 1 drafts

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-11-20. It was migrated from the old Trac wiki on 2022-12-22.*
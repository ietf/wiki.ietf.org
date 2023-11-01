---
title: BESS WG - BGP Enabled ServiceS
description: This wiki is for the BESS WG.
published: true
date: 2023-11-01T22:42:15.791Z
tags: 
editor: markdown
dateCreated: 2022-11-05T16:17:26.188Z
---

# BESS WG detailed Status


## Critical items (<span style="color:red">RED FLAG</span>)
* Consistency checks required between editors of BESS YANG models to ensure a similar way of configuring and operations VPN models.
* If new Path Attributes are specified, IDR review is mandatory.

## Items to note

* YANG models: there are some dependencies with other models (BGP...).

## WG adoption checklist

* Idnits checking
* Grammar checking (e.g., Grammarly)
* 5-author guideline (need justification for more than 5 front-page authors, e.g., specific ideas and/or significant text contribution)
* IPR declaration
* Cross-review or joint-call by relevant WGs (e.g., IDR)

## WG LC checklist

* Idnits verbose checking
* Grammar checking (e.g., Grammarly)
* 5-author guideline
* IPR declaration
* Implementation status
* GenArt and RtgDir early review
* Cross-review or joint-call by relevant WGs (e.g., IDR)

## On going polls
| Document Name | Poll type | Chair in Charge | Start date | End date | Comment | 
| --- | --- | --- | --- | --- | --- |
| 
{.dense}



## Action items
This section lists actions other than document updates

| Action | Owner | Start date | Expected date | Done|
| --- | --- | --- | --- | --- | 



## Early allocations

| Document Name | Request date (by authors) | Status | AD approval date | IANA first allocation date | Renewal date | Expiration date |
| --- | --- | --- | --- | --- | --- | --- |
|draft-ietf-bess-mvpn-evpn-aggregation-label|12/11/18|Allocated|12/19/18|01/23/19|11/19/20 |01/23/22|
|draft-ietf-bess-evpn-bum-procedure-updates | |Allocated||02/17/17|02/06/20|02/17/21|
|draft-ietf-bess-evpn-ipvpn-interworking] |07/03/19|Allocated|07/05/19||05/26/20|07/08/21|
{.dense}


## Latest RFCs
* None since last IETF


## Documents in RFC editor queue

* draft-ietf-bess-evpn-bum-procedure-updates) (MISSREF – waiting on draft-ietf-bess-evpn-aggregation-label)
* draft-ietf-bess-evpn-optimized-ir (MISSREF – waiting on draft-ietf-bess-evpn-bum-procedure-updates)
* draft-ietf-bess-evpn-lsp-ping 

## Documents sent to IESG
Shepherd's name indicated within parenthesis.
* draft-ietf-bess-vpls-multihoming (Matthew): EXPIRED
* draft-ietf-bess-evpn-irb-mcast (Mankamana):
	- AD evaluation not done
* draft-ietf-bess-mvpn-evpn-aggregation-label (Stephane)
	- Jeffrey addressed comments from directorates
	- AD to move fwd
* draft-ietf-bess-evpn-virtual-eth-segment (Luc Andre)
	- 2nd last call passed
	- Authors have fixed grammar issues (shepherd's write up will need update as well).
	- Action: Matthew to update shepherd's write up and request publication.
* draft-ietf-bess-evpn-pref-df (Stephane)
	- Authors to reply and address comments from IESG
	- Action: Stephane to push Authors to reply
* draft-ietf-bess-evpn-fxc (Stephane)
	- AD evaluation not done
  - RTGDIR review received (8/23), ready but few comments to address
  - Action: Stephane to check with authors
* draft-ietf-bess-pbb-evpn-isid-cmacflush-06 (Matthew)
	- IESG comments to be addressed
 	- Action: Matthew is discussing with Jorge to get an update
* draft-ietf-bess-bgp-sdwan-usage (Matthew)
	- Numerouse DISCUSS and other comments from IESG
  - Sent back to WG due to boilerplate issue requiring new adoption and WG LC.
  - New WG adoption poll issued and closed. Next step to do another WG LC.
  - Action: Matthew to progress
* draft-ietf-bess-evpn-irb-extended-mobility (Stephane)


## Documents under Shepherd's review

- draft-ietf-bess-evpn-redundant-mcast-source (Mankamana)
	- Jorge replied to RTGDIR review and addressed comments
  - Action: Mankamana to do the write-up.

- draft-ietf-bess-evpn-mh-pa (Stephane)
  - Chair review done and document updated
  - GEN ART review requested, then write-up will be done

- draft-ietf-bess-evpn-mh-split-horizon (Jeffrey)
  - RTGDIR review comments addressed
  - Shepherd review comments out to be addressed

- draft-ietf-bess-evpn-unequal-lb (Stephane):
  - the document has a lot of normative dependencies that are not ready yet
  - Review requested to IDR chairs
  - RTGDIR and GENART review requested

- draft-ietf-bess-evpn-geneve: (Matthew)
  - Waiting for implementation

- draft-ietf-bess-evpn-fast-df-recovery (Matthew)
	- Luc Andre replied to RTGDIR comments
  - To sort out: can we keep marking it as updating RFC7432 ? (based on Adrian's comment) => need to recheck definition of "UPDATE" (Matthew)
  - Poll on the list if they see any interop issues with legacy 7432 implementations.


## Documents that failed Working Group Last Call 

- draft-ietf-bess-evpn-l2gw-proto:
	- no objection during WGLC but too few replies from WG
  - Implementations exist
  - Luc Andre addressed RTGDIR comments
  - Hold on until we can assess that there is more support

- draft-ietf-bess-evpn-ipvpn-interworking:
  - Jeff Haas needs to do another top-to-bottom review of the draft


## Documents candidates for Working Group Last Call


* draft-ietf-bess-evpn-ac-aware-bundling
	- RTGDIR review comments provided. Authors haven't replied
  - Action: update in progress
  
* draft-ietf-bess-evpn-per-mcast-flow-df-election
	- RTGDIR review comments provided. Discussion is not closed yet.Draft update in progress. 
  
* draft-ietf-bess-extended-evpn-optimized-ir-03 
  - EXPIRED: Mankamana to send reminder for refresh
	- RTGDIR review requested, not received
  
* draft-ietf-bess-rfc7432bis
  - EXPIRED: Mankamana to send reminder for refresh
	- RTGDIR review comments received but no reply from authors. Some offline comments to address as well.
  

* draft-ietf-bess-bgp-multicast-controller

* draft-ietf-bess-bgp-multicast


 

## Recently adopted documents

* draft-ietf-bess-bgp-srv6-args-00


## Documents candidates for Working Group adoption

* draft-sr-bess-evpn-dpath-01
	- Action: Matthew to check with Jorge if it's ready
  - (9/21): Confirmed this is ready.
  
* draft-sajassi-bess-evpn-ip-aliasing: (Jeffrey) -> Beg of October
 - Significant discussions happened, document is probably ready for adoption
 
* draft-thubert-bess-secure-evpn-mac-signaling
 - Few discussion happened, hard to evaluate interest. Authors addressed comments.
 - Hold on

* draft-duan-bess-mvpn-ipv6-infras
* draft-zzhang-bess-mvpn-evpn-cmcast-enhancements
  - the above two should be considered together
  - Action: Matthew and Stephane to review both and come with a conclusion
  
* draft-burdet-bess-evpn-fast-reroute:
	- no active discussion
  - will require joint calls with SPRING
* draft-kaliraj-bess-bgp-sig-private-mpls-labels
  - Needs MPLS and IDR review

## Documents that failed WG adoption
* draft-wang-bess-sbfd-discriminator


## Working group document status (Non Expired only)

| Document Name | Last Update |  Status |
| --- | --- | --- |
|draft-ietf-bess-evpn-bfd-03 | 3/2/23 |   |
|draft-ietf-bess-ipv6-only-pe-design-03 |3/6/23| waiting for authors comment |
|draft-ietf-bess-evpn-mvpn-seamless-interop-04 | 6/30/23 |authors working on updating the draft |
|draft-ietf-bess-mvpn-evpn-sr-p2mp | 3/6/23 | Update in progress based on SPRING WG comments |
|draft-ietf-bess-secure-evpn-00  | 6/30/23 | recently adopted |
| draft-ietf-bess-ebgp-dmz-03  | 6/30/23 | Discussion with IDR to be solved |
|draft-ietf-bess-evpn-vpws-seamless-00 | 6/30/23 | recently adopted |
| draft-ietf-bess-evpn-geneve-06  | 6/30/23 | waiting for implementation |
| draft-ietf-bess-ipv6-only-pe-design-04 | 9/14/23 | Status ?|





{.dense}



## IDR/BESS cross WG reviews 
https://trac.ietf.org/trac/idr/wiki/Feedback%20for%20BESS%20drafts


&nbsp;
&nbsp;
&nbsp;

---

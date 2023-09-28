---
title: BESS WG - BGP Enabled ServiceS
description: This wiki is for the BESS WG.
published: true
date: 2023-09-28T01:34:01.446Z
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
	- Action: Stephane to push Authors to replu
* draft-ietf-bess-evpn-fxc (Stephane)
	- AD evaluation not done
  - RTGDIR review received (8/23), ready but few comments to address
  - Action: Stephane to check with authors
* draft-ietf-bess-pbb-evpn-isid-cmacflush-06 (Matthew)
	- IESG comments to be addressed
 	- Action: Matthew is discussing with Jorge to get an update
* draft-ietf-bess-bgp-sdwan-usage (Matthew)
	- Directorates comments have been addressed
  - AD to followup


## Documents under Shepherd's review

- draft-ietf-bess-evpn-redundant-mcast-source (Mankamana)
	- Jorge replied to RTGDIR review and addressed comments
  - Action: Mankamana to do the write-up.

- draft-ietf-bess-evpn-mh-pa (Stephane)
  - RTGDIR review closed and document updated accordingly
  - Shepherd write-up and chair review to be done (action Stephane)

- draft-ietf-bess-evpn-mh-split-horizon (Jeffrey)
  - RTGDIR review comments addressed
  - Shepherd review comments out to be addressed

- draft-ietf-bess-evpn-unequal-lb (Stephane):
  - the document has a lot of normative dependencies that are not ready yet
  - Review requested to IDR chairs
  - Need to request review from RTGDIR

- draft-ietf-bess-evpn-geneve: (Matthew)
  - Waiting for implementation

- draft-ietf-bess-evpn-fast-df-recovery (Matthew)
	- Luc Andre replied to RTGDIR comments
  - To sort out: can we keep marking it as updating RFC7432 ? (based on Adrian's comment) => need to recheck definition of "UPDATE" (Matthew)


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
  
* draft-ietf-bess-evpn-irb-extended-mobility (failed before, retry needed):
	- Neeraj addressed RTGDIR comments
  - Probably ready to move fwd with new short WGLC
  - Stephane to trigger WGLC -> 9/18
 
* draft-ietf-bess-bgp-multicast-controller

* draft-ietf-bess-bgp-multicast


## Recently adopted documents

* draft-brissette-bess-evpn-vpws-seamless (6/14)
* draft-sajassi-bess-secure-evpn (6/20)

## Documents candidates for Working Group adoption

* draft-trr-bess-bgp-srv6-args: (Matthew) -> 9/25
	- draft has already multiple implementations (fixing issue in base RFC)
 
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

## Documents that failed WG adoption
* draft-wang-bess-sbfd-discriminator


## Working group document status (Non Expired only)

| Document Name | Last Update |  Status |
| --- | --- | --- |
|draft-ietf-bess-evpn-bfd-03 | 3/2/23 |   |
|draft-ietf-bess-ipv6-only-pe-design-03 |3/6/23| waiting for authors comment |
|draft-ietf-bess-evpn-modes-interop | 3/6/23 | Expired, checking with authors |
|draft-ietf-bess-evpn-mvpn-seamless-interop-04 | 6/30/23 |authors working on updating the draft |
|draft-ietf-bess-mvpn-evpn-sr-p2mp | 3/6/23 | Update in progress based on SPRING WG comments |
|draft-ietf-bess-weighted-hrw-00| 6/1/23 | update in progress |
|draft-ietf-bess-secure-evpn-00  | 6/30/23 | recently adopted |
| draft-ietf-bess-ebgp-dmz-03  | 6/30/23 | Discussion with IDR to be solved |
|draft-ietf-bess-evpn-vpws-seamless-00 | 6/30/23 | recently adopted |
| draft-ietf-bess-evpn-geneve-06  | 6/30/23 | waiting for implementation |
| draft-ietf-bess-bgp-multicast-controller-11 | 9/14/23 | Status ?|
| draft-ietf-bess-bgp-multicast-05 | 9/14/23 | Status ?|
| draft-ietf-bess-ipv6-only-pe-design-04 | 9/14/23 | Status ?|





{.dense}



## IDR/BESS cross WG reviews 
https://trac.ietf.org/trac/idr/wiki/Feedback%20for%20BESS%20drafts


&nbsp;
&nbsp;
&nbsp;

---

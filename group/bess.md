---
title: BESS WG - BGP Enabled ServiceS
description: This wiki is for the BESS WG.
published: true
date: 2024-09-06T14:26:09.351Z
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


|draft-ietf-bess-evpn-ipvpn-interworking] |07/03/19|Allocated|07/05/19||05/26/20|07/08/21|
{.dense}


## Latest RFCs

* RFC 9625 EVPN Optimized Inter-Subnet Multicast (OISM) Forwarding


## Documents in RFC editor queue

* draft-ietf-bess-evpn-pref-df (MISSREF, need VES)
* draft-ietf-bess-evpn-mh-split-horizon-11 

## Documents sent to IESG
Shepherd's name indicated within parenthesis.
* draft-ietf-bess-vpls-multihoming (Matthew): EXPIRED
* draft-ietf-bess-evpn-virtual-eth-segment (Luc Andre)
	- 2nd last call passed
	- Authors have fixed grammar issues (shepherd's write up updated and publication requested by Matthew).
	- Action: With AD.
* draft-ietf-bess-evpn-fxc (Stephane)
	- AD evaluation not done
  - RTGDIR: ready

* draft-ietf-bess-bgp-sdwan-usage (Matthew)
	- Telechat on 2/29

* draft-ietf-bess-evpn-irb-extended-mobility (Stephane)
	- need AD to review

* draft-ietf-bess-evpn-fast-df-recovery (Matthew)
  - Publication requested after poll suggested no interop issues with legacy 8584 implementations. (Matthew)
  - AD reviewed; revision needed; Outstanding comments from Jeffrey
* draft-ietf-bess-evpn-mh-pa
* draft-ietf-bess-evpn-redundant-mcast-source


## Documents under Shepherds Review


- draft-ietf-bess-evpn-unequal-lb (Stephane):
  - the document has a lot of normative dependencies that are not ready yet
  - An outstanding comment from Jeffrey about inconsistent/inappropriate use of "ECMP"
  - Review requested to IDR chairs
  - RTGDIR and GENART review requested => comments addressed
  - Draft expired, 09/06, reminder sent to authors to refresh. 

- draft-ietf-bess-evpn-geneve: (Matthew)
  - Waiting for implementation


## Documents that failed Working Group Last Call 

- draft-ietf-bess-evpn-l2gw-proto:
	- no objection during WGLC but too few replies from WG
  - Implementations exist
  - Luc Andre addressed RTGDIR comments
  - Hold on until we can assess that there is more support

- draft-ietf-bess-evpn-ipvpn-interworking:
  - Jeff Haas needs to do another top-to-bottom review of the draft


## Documents candidates for Working Group Last Call


* draft-ietf-bess-evpn-ac-aware-bundling (Jeffrey)
	- RTGDIR review comments provided. Authors haven't replied
  - Action: update in progress
  - RTGDIR review comment addressed.
  - Outstanding questions/comments from Jeffrey
  - Action : mankamana addressing comments , being submitted in before end of Sep 2024
  
* draft-ietf-bess-evpn-per-mcast-flow-df-election
	- RTGDIR review comments provided. Discussion is not closed yet.Draft update in progress.
  - New version updated, ETA end of Sep 2024 
  
* draft-ietf-bess-extended-evpn-optimized-ir-06 
	- RTGDIR and GENART review passed
  
* draft-ietf-bess-rfc7432bis
	- RTGDIR review comments received but no reply from authors. Some offline comments to address as well.
  - Draft being updated as of 11/2 
  

* draft-ietf-bess-bgp-multicast-controller
  - GenArt early review passed
  - Revision -12 posted on 12/30/23 to address RtgDir early review comments. No acknowledgement from reviewer yet.
  - Requested Susan for IDR review for both bgp-multicast drafts.

* draft-ietf-bess-bgp-multicast
  - GenArt and RtgDir early review passed ( revision -07)

* draft-ietf-bess-evpn-mvpn-seamless-interop
  - Review comment addressed. 
 
 
* draft-ietf-bess-evpn-bfd
  - Needs joint WG LC with BFD WG (will CC rtg-bfd@ietf.org) (Matthew)
 * draft-ietf-bess-mvpn-evpn-sr-p2mp-09 
   - Early review requested 
  
## Recently adopted documents



 
## Documents candidates for Working Group adoption


* draft-duan-bess-mvpn-ipv6-infras
* draft-zzhang-bess-mvpn-evpn-cmcast-enhancements
  - the above two should be considered together
  - Action: Matthew and Stephane to review both and come with a conclusion
* draft-wang-bess-mvpn-upstream-df-selection  
* draft-burdet-bess-evpn-fast-reroute:
	- no active discussion
  - will require joint calls with SPRING
* draft-kaliraj-bess-bgp-sig-private-mpls-labels
  - Needs MPLS and IDR review

* draft-mackenzie-bess-evpn-l3mh-proto (Jeffrey)
  - update may be needed - depending on ac-aware-bundling discussions
* draft-mpmz-bess-mup-safi:
 - implementation/prototype exists, authors would like to move forward
 - Need to reduce to 5 authors
 - Depends on architecture draft being adopted in dmm (draft-mhkk-dmm-mup-architecture-00)
 

## Documents that failed WG adoption
* draft-wang-bess-sbfd-discriminator
* draft-thubert-bess-secure-evpn-mac-signaling (3/13/24)

## Working group document status (Non Expired only)

(Removed as this is tracked in datatracker)






{.dense}



## IDR/BESS cross WG reviews 
https://trac.ietf.org/trac/idr/wiki/Feedback%20for%20BESS%20drafts


&nbsp;
&nbsp;
&nbsp;

---

---
title: BESS WG - BGP Enabled ServiceS
description: This wiki is for the BESS WG.
published: true
date: 2025-10-23T19:20:47.887Z
tags: 
editor: markdown
dateCreated: 2022-11-05T16:17:26.188Z
---

> This page is related to an active IETF Working Group.
{.is-success}
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


|draft-ietf-bess-evpn-ipvpn-interworking] |07/03/19|Allocated|07/05/19||06/06/25|07/08/26|
{.dense}


## Latest RFCs
* RFC 9721 Extended Mobility Procedures for Ethernet VPN Integrated Routing and Bridging (EVPN-IRB)
* RFC 9722 Fast Recovery for EVPN Designated Forwarder Election
* RFC 9784 Virtual Ethernet Segments for EVPN and Provider Backbone Bridge EVPN
* RFC 9785 Preference-Based EVPN Designated Forwarder (DF) Election
* RFC 9786 EVPN Port-Active Redundancy Mode




## Documents in RFC editor queue

* draft-ietf-bess-bgp-srv6-args-10
* draft-ietf-bess-evpn-redundant-mcast-source-15

## Documents sent to IESG
Shepherd's name indicated within parenthesis.

* draft-ietf-bess-evpn-ipvpn-interworking-14
* draft-ietf-bess-mvpn-evpn-sr-p2mp-14


## Documents under Shepherds Review

- draft-ietf-bess-evpn-bfd-10 (Matthew):
- draft-ietf-bess-evpn-mvpn-seamless-interop-08 (Matthew): 

- draft-ietf-bess-evpn-unequal-lb (Stephane):
  - WGLC done
	- Neeraj to fix nits, then will move to IESG
- draft-ietf-bess-rfc7432bis-12 (Jeffery):
- draft-ietf-bess-evpn-dpath-02 (Jeffery):
- draft-ietf-bess-evpn-geneve: (Matthew)
	- expired. 
  - Moved to experimental now , Matthew to write up and move to next step (09/06)
- draft-ietf-bess-vpls-multihoming (Matthew):
- draft-ietf-bess-bgp-sdwan-usage (Matthew)
	- Telechat on 2/29
  - park it for now (09/06)


## Documents that failed Working Group Last Call 

- draft-ietf-bess-evpn-l2gw-proto:
	- no objection during WGLC but too few replies from WG
  - Implementations exist
  - Luc Andre addressed RTGDIR comments
  - Hold on until we can assess that there is more support



## Documents candidates for Working Group Last Call


* draft-ietf-bess-evpn-ac-aware-bundling (Jeffrey)
  - Outstanding questions/comments from Jeffrey
  - Refreshed, plan to discuss in IETF124
  
* draft-ietf-bess-evpn-per-mcast-flow-df-election (Jeffrey)
  - Shepherd review done; pending author responses
  
* draft-ietf-bess-extended-evpn-optimized-ir-08 (Stephane)
	- RTGDIR and GENART review passed
  
* draft-ietf-bess-rfc7432bis (Jeffrey)
	- RTGDIR review comments received but no reply from authors. Some offline comments to address as well.
  - Jeffrey to check updates against his review
  

* draft-ietf-bess-bgp-multicast-controller
  - GenArt early review passed
  - Revision -12 posted on 12/30/23 to address RtgDir early review comments. No acknowledgement from reviewer yet.
  - Requested Susan for IDR review for both bgp-multicast drafts.
  - Susan comment has been addressed, waiting for her comment. 

* draft-ietf-bess-bgp-multicast
  - GenArt and RtgDir early review passed ( revision -07)
  - Susan comment has been addressed, waiting for her comment. 
  - Expired 

* draft-ietf-bess-evpn-mvpn-seamless-interop
  - Ready for WGLC 

* draft-ietf-bess-evpn-bfd
  - Needs joint WG LC with BFD WG (will CC rtg-bfd@ietf.org) (Matthew)
  - early review to be started 
  
## Recently adopted documents
* draft-ietf-bess-evpn-fast-reroute-00
* draft-ietf-bess-evpn-vpws-gateway-00
* draft-sajassi-bess-rfc8317bis-04


 
## Documents requested for Working Group adoption (Non Expired drafts only)


* draft-mackenzie-bess-evpn-l3mh-proto (Jeffrey)
  - Adoption call in progress
* draft-mpmz-bess-mup-safi (Matthew)
  - implementation/prototype exists, authors would like to move forward
  - Need to reduce to 5 authors
* draft-sajassi-bess-evpn-umr-mobility-02 (Stephane)
  - Adoption call in progress
* draft-sajassi-bess-evpn-first-hop-security-03
* draft-rbickhart-evpn-ip-mac-proxy-adv (Jeffrey)

## Documents that failed WG adoption
* draft-wang-bess-sbfd-discriminator
* draft-thubert-bess-secure-evpn-mac-signaling (3/13/24)

## Working group document status (Non Expired only)

(Removed as this is tracked in datatracker)


- draft-ietf-bess-ebgp-dmz-08 (Matthew): 
	- New version of the document published
	- doc may move to IDR



{.dense}



## IDR/BESS cross WG reviews 
https://trac.ietf.org/trac/idr/wiki/Feedback%20for%20BESS%20drafts


&nbsp;
&nbsp;
&nbsp;

---

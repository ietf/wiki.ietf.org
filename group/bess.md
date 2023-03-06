---
title: BESS WG - BGP Enabled ServiceS
description: This wiki is for the BESS WG.
published: true
date: 2023-03-06T20:52:31.064Z
tags: 
editor: markdown
dateCreated: 2022-11-05T16:17:26.188Z
---

# BESS WG detailed Status


## Critical items (<span style="color:red">RED FLAG</span>)
* Consistency checks required between editors of BESS YANG models to ensure a similar way of configuring and operations VPN models.

## Items to note

* YANG models: there are some dependencies with other models (BGP...).


## On going polls
| Document Name | Poll type | Chair in Charge | Start date | End date | Comment | 
| --- | --- | --- | --- | --- | --- |
| draft-ietf-bess-pbb-evpn-isid-cmacflush | WGLC | Matthew | | | Not enough feedback during WGLC, RTGDIR provided comments that need to be addressed |
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

## Documents sent to IESG
Shepherd's name indicated within parenthesis.
* draft-ietf-bess-vpls-multihoming (Matthew): EXPIRED
* draft-ietf-bess-evpn-irb-mcast (Mankamana)
* draft-ietf-bess-mvpn-evpn-aggregation-label (Stephane)
* draft-ietf-bess-evpn-virtual-eth-segment (Luc Andre)
* draft-ietf-bess-evpn-pref-df (Stephane)
* draft-ietf-bess-evpn-fxc (Stephane)
* draft-ietf-bess-evpn-lsp-ping (Matthew)

## Documents under Shepherd's review

- draft-ietf-bess-evpn-redundant-mcast-source (Mankamana)

- draft-ietf-bess-evpn-mh-pa (Stephane)
  - Chair review provided

- draft-ietf-bess-evpn-unequal-lb (Stephane):
  - the document has a lot of normative dependencies that are not ready yet
  - Review requested to IDR chairs

- draft-ietf-bess-evpn-geneve: (Matthew)
  - Comments have been addressed

* draft-ietf-bess-evpn-fast-df-recovery (Matthew)


## Documents that failed Working Group Last Call 


- draft-ietf-bess-evpn-irb-extended-mobility: few comments raised during WGLC that need to be addressed.


- draft-ietf-bess-evpn-ipvpn-interworking:
  - need feedback from IDR chairs on aggregation rules and attribute propagation.
  - Authors needs to address IDR chair's comments

- draft-ietf-bess-evpn-mh-split-horizon):
  - need document update + missing IPR replies

## Documents candidates for Working Group Last Call


* draft-ietf-bess-bgp-sdwan-usage
* draft-ietf-bess-mvpn-evpn-sr-p2mp
 
## Recently adopted documents
* draft-ietf-bess-evpn-ac-aware-bundling


## Documents candidates for Working Group adoption


* draft-brissette-bess-evpn-vpws-seamless
* draft-sr-bess-evpn-dpath-01
* draft-sajassi-bess-evpn-ip-aliasing-04
* draft-thubert-bess-secure-evpn-mac-signaling
* draft-wang-bess-sbfd-discriminator
* draft-duan-bess-mvpn-ipv6-infras


## Documents that failed WG adoption



## Working group document status

| Document Name | Last Update |  Status |
| --- | --- | --- |
|draft-ietf-bess-mvpn-yang | 11/05/19| Document expired, note sent to authors|
|draft-ietf-bess-evpn-per-mcast-flow-df-election |2/14/23|short presentation in IETF 116 before WGLC|
|draft-ietf-bess-evpn-fast-df-recovery |3/2/21|Reminder sent to authors|
|draft-ietf-bess-evpn-mh-split-horizon-00 |3/2/21 | Checking with authors |
|draft-ietf-bess-rfc7432bis-00 | 3/2/21 | Checking with authors |
|draft-ietf-bess-bgp-multicast-03 | 3/2/21 | Security section need to filled  |
|draft-ietf-bess-evpn-redundant-mcast-source-00 | 3/2/21 | Recently adopted |
|draft-ietf-bess-bgp-multicast-controller-06 | 3/2/21 | Being presented in IETF 110 |
|draft-ietf-bess-evpn-mh-pa-01 | 3/2/21 | Being presented in IETF 110 |
|draft-ietf-bess-evpn-bfd-03 | 3/2/21 | Being presented in IETF 110 |
{.dense}



## IDR/BESS cross WG reviews 
https://trac.ietf.org/trac/idr/wiki/Feedback%20for%20BESS%20drafts


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-08-04. It was migrated from the old Trac wiki on 2023-01-12.*
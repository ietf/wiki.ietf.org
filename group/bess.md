---
title: BESS WG detailed Status
description: This wiki is for the BESS WG.
published: true
date: 2022-11-05T16:17:26.188Z
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
| [draft-ietf-bess-pbb-evpn-isid-cmacflush](http://tools.ietf.org/html/draft-ietf-bess-pbb-evpn-isid-cmacflush) | WGLC | Matthew | | | Not enough feedback during WGLC, RTGDIR provided comments that need to be addressed |



## Action items
This section lists actions other than document updates

| Action | Owner | Start date | Expected date | Done|
| --- | --- | --- | --- | --- | 



## Early allocations

| Document Name | Request date (by authors) | Status | AD approval date | IANA first allocation date | Renewal date | Expiration date |
| --- | --- | --- | --- | --- | --- | --- |
|[draft-ietf-bess-mvpn-evpn-aggregation-label](http://tools.ietf.org/html/draft-ietf-bess-mvpn-evpn-aggregation-label)|12/11/18|Allocated|12/19/18|01/23/19|11/19/20 |01/23/22|
|[draft-ietf-bess-evpn-bum-procedure-updates](http://tools.ietf.org/html/draft-ietf-bess-evpn-bum-procedure-updates)| |Allocated||02/17/17|02/06/20|02/17/21|
|[draft-ietf-bess-evpn-ipvpn-interworking](http://tools.ietf.org/html/draft-ietf-bess-evpn-ipvpn-interworking)|07/03/19|Allocated|07/05/19||05/26/20|07/08/21|


## Latest RFCs
* [RFC 9251](http://tools.ietf.org/html/rfc9251) Internet Group Management Protocol (IGMP) and Multicast Listener Discovery (MLD) Proxies for Ethernet VPN (EVPN) (June 22)
* [RFC 9252](http://tools.ietf.org/html/rfc9252) BGP Overlay Services Based on Segment Routing over IPv6 (SRv6)  (July 22)


## Documents in RFC editor queue

* [draft-ietf-bess-evpn-bum-procedure-updates](http://tools.ietf.org/html/draft-ietf-bess-evpn-bum-procedure-updates) (MISSREF – waiting on [draft-ietf-bess-evpn-aggregation-label](http://tools.ietf.org/html/draft-ietf-bess-evpn-aggregation-label))
* [draft-ietf-bess-evpn-optimized-ir](http://tools.ietf.org/html/draft-ietf-bess-evpn-optimized-ir) (MISSREF – waiting on [draft-ietf-bess-evpn-bum-procedure-updates](http://tools.ietf.org/html/draft-ietf-bess-evpn-bum-procedure-updates))

## Documents sent to IESG
Shepherd's name indicated within parenthesis.
* [draft-ietf-bess-vpls-multihoming](http://tools.ietf.org/html/draft-ietf-bess-vpls-multihoming) (Matthew): EXPIRED
* [draft-ietf-bess-evpn-irb-mcast](http://tools.ietf.org/html/draft-ietf-bess-evpn-irb-mcast) (Mankamana)
* [draft-ietf-bess-mvpn-evpn-aggregation-label](http://tools.ietf.org/html/draft-ietf-bess-mvpn-evpn-aggregation-label) (Stephane)
* [draft-ietf-bess-evpn-virtual-eth-segment](http://tools.ietf.org/html/draft-ietf-bess-evpn-virtual-eth-segment) (Luc Andre)
* [draft-ietf-bess-evpn-pref-df](http://tools.ietf.org/html/draft-ietf-bess-evpn-pref-df) (Stephane)
* [draft-ietf-bess-evpn-fxc](http://tools.ietf.org/html/draft-ietf-bess-evpn-fxc) (Stephane)
* [draft-ietf-bess-evpn-lsp-ping](http://tools.ietf.org/html/draft-ietf-bess-evpn-lsp-ping) (Matthew)

## Documents under Shepherd's review

- [draft-ietf-bess-evpn-redundant-mcast-source](http://tools.ietf.org/html/draft-ietf-bess-evpn-redundant-mcast-source) (Mankamana)

- [draft-ietf-bess-evpn-mh-pa](http://tools.ietf.org/html/draft-ietf-bess-evpn-mh-pa) (Stephane)
  - Chair review provided

- [draft-ietf-bess-evpn-unequal-lb](http://tools.ietf.org/html/draft-ietf-bess-evpn-unequal-lb) (Stephane):
  - the document has a lot of normative dependencies that are not ready yet
  - Review requested to IDR chairs

- [draft-ietf-bess-evpn-geneve](http://tools.ietf.org/html/draft-ietf-bess-evpn-geneve): (Matthew)
  - Comments have been addressed

* [draft-ietf-bess-evpn-fast-df-recovery](http://tools.ietf.org/html/draft-ietf-bess-evpn-fast-df-recovery) (Matthew)


## Documents that failed Working Group Last Call 


- [draft-ietf-bess-evpn-irb-extended-mobility](http://tools.ietf.org/html/draft-ietf-bess-evpn-irb-extended-mobility): few comments raised during WGLC that need to be addressed.


- [draft-ietf-bess-evpn-ipvpn-interworking](http://tools.ietf.org/html/draft-ietf-bess-evpn-ipvpn-interworking):
  - need feedback from IDR chairs on aggregation rules and attribute propagation.
  - Authors needs to address IDR chair's comments

- [draft-ietf-bess-evpn-mh-split-horizon](http://tools.ietf.org/html/draft-ietf-bess-evpn-mh-split-horizon):
  - need document update + missing IPR replies

## Documents candidates for Working Group Last Call


* [draft-ietf-bess-bgp-sdwan-usage](http://tools.ietf.org/html/draft-ietf-bess-bgp-sdwan-usage)
* [draft-ietf-bess-mvpn-evpn-sr-p2mp](http://tools.ietf.org/html/draft-ietf-bess-mvpn-evpn-sr-p2mp)
 
## Recently adopted documents



## Documents candidates for Working Group adoption


* [draft-sajassi-bess-evpn-ac-aware-bundling](http://tools.ietf.org/html/draft-sajassi-bess-evpn-ac-aware-bundling)
* [draft-brissette-bess-evpn-vpws-seamless](http://tools.ietf.org/html/draft-brissette-bess-evpn-vpws-seamless)
* [draft-sr-bess-evpn-dpath-01](http://tools.ietf.org/html/draft-sr-bess-evpn-dpath-01)
* [draft-sajassi-bess-evpn-ip-aliasing-04](http://tools.ietf.org/html/draft-sajassi-bess-evpn-ip-aliasing-04)
* [draft-thubert-bess-secure-evpn-mac-signaling](http://tools.ietf.org/html/draft-thubert-bess-secure-evpn-mac-signaling)


## Documents that failed WG adoption



## Working group document status

| Document Name | Last Update |  Status |
| --- | --- | --- |
|[draft-ietf-bess-mvpn-yang](http://tools.ietf.org/html/draft-ietf-bess-mvpn-yang)|11/05/19|Document expired, note sent to authors|
|[draft-ietf-bess-evpn-per-mcast-flow-df-election](http://tools.ietf.org/html/draft-ietf-bess-evpn-per-mcast-flow-df-election)|2/28/21|Final update in progress before going for WGLC|
|[draft-ietf-bess-evpn-fast-df-recovery](http://tools.ietf.org/html/draft-ietf-bess-evpn-fast-df-recovery)|3/2/21|Reminder sent to authors|
|[draft-ietf-bess-evpn-mh-split-horizon-00](http://tools.ietf.org/html/draft-ietf-bess-evpn-mh-split-horizon-00) |3/2/21 | Checking with authors |
|[draft-ietf-bess-rfc7432bis-00](http://tools.ietf.org/html/draft-ietf-bess-rfc7432bis-00) | 3/2/21 | Checking with authors |
|[draft-ietf-bess-bgp-multicast-03](http://tools.ietf.org/html/draft-ietf-bess-bgp-multicast-03) | 3/2/21 | Security section need to filled  |
|[draft-ietf-bess-evpn-redundant-mcast-source-00](http://tools.ietf.org/html/draft-ietf-bess-evpn-redundant-mcast-source-00) | 3/2/21 | Recently adopted |
|[draft-ietf-bess-bgp-multicast-controller-06](http://tools.ietf.org/html/draft-ietf-bess-bgp-multicast-controller-06) | 3/2/21 | Being presented in IETF 110 |
|[draft-ietf-bess-evpn-mh-pa-01](http://tools.ietf.org/html/draft-ietf-bess-evpn-mh-pa-01) | 3/2/21 | Being presented in IETF 110 |
|[draft-ietf-bess-evpn-bfd-03](http://tools.ietf.org/html/draft-ietf-bess-evpn-bfd-03) | 3/2/21 | Being presented in IETF 110 |



## IDR/BESS cross WG reviews 
https://trac.ietf.org/trac/idr/wiki/Feedback%20for%20BESS%20drafts



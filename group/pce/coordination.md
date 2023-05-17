---
title: PCE WG's coordination tracker with other WG/RG
description: 
published: true
date: 2023-03-31T04:26:43.173Z
tags: wg
editor: markdown
dateCreated: 2022-07-24T06:49:27.474Z
---

# Coordination with other WG/RG

## Segment Routing

PCE documents for SR
* RFC8664 - SR-MPLS in PCEP
* draft-ietf-pce-binding-label-sid - BSID in PCEP
* draft-ietf-pce-segment-routing-ipv6 - SRv6 in PCEP
* draft-ietf-pce-segment-routing-policy-cp - SR Policy and CP
* draft-ietf-pce-multipath - Multiple segment list 
	* unique to PCEP as signaling is based on CP
* draft-ietf-pce-pcep-pmtu - SR Path MTU
* draft-ietf-pce-sid-algo - Algo support in SR-MPLS SID
* draft-ietf-pce-sr-path-segment - Path Segment
* draft-ietf-pce-pcep-ifit - IFIT


| Feature | PCE | SPRING | IDR | Remarks |
| --- | --- | --- | --- | --- |
| SR-MPLS | RFC8664 | - | - | - |
| BSID | draft-ietf-pce-binding-label-sid | - | - | - |
| SRv6 | draft-ietf-pce-segment-routing-ipv6 | - | - | - |
| SR Policy | draft-ietf-pce-segment-routing-policy-cp | - | - | - |
| Multipath | draft-ietf-pce-multipath | - | - | - |
| SR-PMTU | draft-ietf-pce-pcep-pmtu | - | - | - |
| Algo | draft-ietf-pce-sid-algo | - | - | - |
| Path Segment | draft-ietf-pce-sr-path-segment | - | - | - |
| IFIT | draft-ietf-pce-pcep-ifit | - | - | - |
| SID verification | draft-chen-pce-sr-mpls-sid-verification| [RFC9256] describes the "SID verification" bit usage. | BGP SR-policy(https://tools.ietf.org/html/draft-ietf-idr-segment-routing-te-policy-11#page-26)  description vbit is carried in segment sub-tlv |  align with the extension of draft PCE-SRv6 and draft BGP SR-policy |

Some individual I-D for future
* draft-sidor-pce-circuit-style-pcep-extensions 
* draft-yang-pce-pcep-redundancy-policy
* draft-chen-pce-sr-mpls-sid-verification


## Multicast


| Feature | PCE | PIM | BIER | IDR | Remarks |
| --- | --- | --- | --- | --- | --- |
| P2MP SR Policy | draft-ietf-pce-sr-p2mp-policy | draft-ietf-pim-sr-p2mp-policy | - | draft-ietf-idr-sr-p2mp-policy | - |
| BIER-TE | draft-chen-pce-bier | - | BIER-TE (RFC9262) | draft-chen-bier-idr-bier-te-bgp-00 | Request feedback from the BIER |


There is a lot of past work on RSVP-TE P2MP LSP in PCEP

## DetNet

PCE documents for DetNet
* draft-xiong-pce-detnet-bounded-latency
* draft-zhang-pce-enhanced-detnet

## Others

### Optical

### Native-IP

### PCECC

### NRP
* draft-xiong-pce-nrp-id
* draft-dong-pce-pcep-vtn

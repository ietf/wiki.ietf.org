---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-path-mtu
description: Shepherd draft-ietf-idr-sr-policy-path-mtu
published: true
date: 2026-01-05T20:34:41.813Z
tags: 
editor: markdown
dateCreated: 2025-02-25T00:09:15.826Z
---

# Shepherd Reviews for draft-ietf-idr-sr-policy-path-mtu


## Summary 
**draft:**  [draft-ietf-idr-sr-policy-path-mtu](/group/idr/implementations/draft-ietf-idr-sr-policy-path-mtu)
**Type:** Proposed Standard 
**status:** WG Draft, needs revision 13 
**adopted:** [9/1/2024](https://mailarchive.ietf.org/arch/msg/idr/xUckKQncQ4rLVCCAkBO6bQ6zcuk/) (8/1 to 8/30 call) 
**current version:** -14
**Early Allocation**: yes, call (1/5/2026 - 1/19/2026) 
**implementations:** 1 (Huawei in VRP8)    
**related bgp-ls draft:** none

## Review for -14 
**Summary**: Technical issue 1 from -13 has been resolved. No open issues. 
**Next steps:** 
1. 2 week Early allocation call (1/5 to 1/19)
2. Early Allocation of SubTLV 
3. Interoperability testing with 2 implementations 
4. Apply for WG LC - and get shepherd review 


## Review -13 
**Summary**: Technical issues 2-4 from the review of -10, -11 and -12 aare complete.  An early allocation request has been sent. 

**Next steps: **
1. release -14 with Technical issue-01 changes 
2. Get shepherd's review of -14
3. If -14 is ok, then do 2 week Early Allocation call 


### Technical/Editorial issues - must be 
#### Issue-1: Specify IANA assignments in TBDnnn format, in section 3 + 6 

**Section 3: **

> Old text: /Type: to be assigned by IANA./
{.is-info}

> New text: /Type: TBD1 (to be assigned by IANA). 
{.is-info}

**Section 6: **
> Old text:/
>  TBA     Path MTU sub-TLV                            This document/
{.is-info}

 
>  Next text:/
>  TBD1     Path MTU sub-TLV                            This document/
{.is-info}



## Review -12 
**Summary:** Technical issues from -10 are not resolved in -12. Also, the name of the 
IANA registry is: SR Policy Segment List Sub-TLVs.  Please make this correction. 
**email with review**: TBD 

Next steps: 
1. Publish -13 with corrections
2. Get shepherd's review of -13
3. If -13 is ok, then do 2 week Early Allocation call 

## Review -11
**Summary:** All Technical issues and Editorial issues from the Review of -10 need to be addressed

## Review -10 
draft: [draft-ietf-idr-sr-policy-path-mtu-10](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-path-mtu-10)
**Summary: **Revision 10 resolves all the issues listed in the shepherd report. 
Needs an update to address TEA Template review. 
email: https://mailarchive.ietf.org/arch/msg/idr/jP4BwLPxw286FB5ZH9xNruW0rMM/


### Technical issue 
#### Issue-1: Specify IANA assignments in TBDnnn format, in section 3 + 6 

**Section 3: **

> Old text: /Type: to be assigned by IANA./
{.is-info}

> New text: /Type: TBD1 (to be assigned by IANA). 
{.is-info}

**Section 6: **
> Old text:/
>  TBA     Path MTU sub-TLV                            This document/
{.is-info}

 
>  Next text:/
>  TBD1     Path MTU sub-TLV                            This document/
{.is-info}

#### Issue-2 - Sub-TLV link to TLVs in TEA 

Can the Path-MTU appear in any other TEA TLV than SR Policy? 

I believe the answer is "no", but the document needs to state 
**
New text for section 4:/**
> "This document specifies the Path-MTU Sub-TLV to appear only in the SR Policy TLV of
> the Tunnel Encapsulation Attribute (TEA).  Any other use of the Path-MTU sub-TLV is 
> outside the scope of this document. / 
{.is-info}

#### Issue-3 - Section 4, Does this Sub-TLV play a part of the validation 

Please state clearly that this Sub-TLV does not play a part of BGP's validation of this tunnel. 

> **current text:** / The consumer of the SR policies is not the BGP process. The operation of sending information to consumers is out of scope of this document./ 
{.is-info}


> **New text:/** The consumer of the SR policies is not the BGP process.  The bgp process does not validate
> the tunnel based on the SR Policy information (including the Path MTU Sub-TLV). The operation of sending information to consumers is out of scope of this document. / 
{.is-info}

#### Issue-4:  Missing Manageability section 

Please add an section to indicate how operators may manage set or monitor the PATH MTU via existing Yang modules or BGP-LS support.  If these do not exist, suggest whether these would be useful. 


## Review -09 

draft: [draft-ietf-idr-sr-policy-path-mtu-09](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-path-mtu-09)
Summary: revision suggested
**Implementation status:** 1 implementation 
**Email link:** https://mailarchive.ietf.org/arch/msg/idr/TGRz8JBBGADNLQTVV9vQ0iVgohY/

### Technical: 

#### Issue-1: Abstract, Missing link with RFC9012 

**Old text:/  **
>    An SR policy is a set of candidate SR paths consisting of one or more
>    segment lists with necessary path attributes. However, the path
>    maximum transmission unit (MTU) information for SR path is not
>    available in the SR policy since the SR does not require signaling.
>    This document defines extensions to BGP to distribute path MTU
>    information within SR policies./
{.is-info}

   
**New text:/**
>    An SR policy is a set of SR Policy candidate paths consisting of one or 
>    more segments with the appropriate SR path attributes. BGP distributes 
>    each SR Policy candidate path as combination of an prefix plus a 
>    the BGP Tunnel Encapsulation(Tunnel-Encaps) attribute containing 
>    an SR Policy Tunnel TLV with information on the SR Policy candidate 
>    path as a tunnel.  However, the path maximum 
>    transmission unit (MTU) information for a segment list for SR path 
>    is not currently passed in the BGP Tunnel-Encaps attribute. .
>    This document defines extensions to BGP to distribute path MTU
>    information within SR policies./
{.is-info}

   
#### Issue-2: Introduction, paragraph 1, 

**Old text:/**
>    In order to distribute SR policies to the headend,
>    [I-D.ietf-idr-sr-policy-safi] specifies a mechanism by using BGP./
{.is-info}

**New text:/**
>    In order to distribute SR policies to the headend,
>    [I-D.ietf-idr-sr-policy-safi] specifies a BGP mechanism 
>    to pass SR Policies and Candidate SR Policies in BGP UPDATE 
>    message.  Each SR Candidate Path is passed as combination of a
>    specific type of NLRI and BGP Tunnel Encapsulation Attribute (Tunnel-Encaps) 
>    with SR Policy Tunnel type tunnel.  The NLRI must contain 
>    either be the IPv4 Unicast AFI with SR Policy SAFI (AFI=1/SAFI=73), 
>    the IPv6 Unicast AFI with the SR Policy SAFI (AFI=2/SAFI=73)./ 
{.is-info}

 

#### Issue-2. Introduction, paragraph 4, ingress needs to be ingress router 

**Old text: /**
>    But the ingress still needs to
>    examine the packet size for dropping too large packets to avoid
>    malicious traffic or error traffic.  Also, the packet size may
>    exceeds the PMTU because of the new encapsulation of SR-MPLS or SRv6
>    packet at the ingress. /
{.is-info}


**New text:**
   /But the ingress router still needs to
   examine the packet size for dropping too large packets to avoid
   malicious traffic or error traffic.  Also, the packet size may
   exceeds the PMTU because of encapsulation of the original packet in 
   SR-MPLS or SRv6 packet at the ingress router./ 
  

#### Issue-3. Introduction, paragraph 4, last sentence. 

**Old text:/**
>    However, the path maximum transmission unit (MTU)
>    information for SR path is not available since the SR does not
>    require signaling.
>    
>    This document defines extensions to BGP to distribute path MTU
>    information within SR policies.  The Link MTU information can be
>    obtained via BGP-LS [I-D.ietf-idr-bgp-ls-link-mtu] or some other
>    means.  With the Link MTU, the controller can compute the PMTU and
>    convey the information via the BGP SR policy./ 
{.is-info}

**   
New text:/**
>    However, the path maximum transmission unit (MTU)
>    information for SR path is not currently distributed in the 
>    BGP Tunnel-Encaps attribute TLV for the SR Policy Tunnel.  
>    This document defines a new sub-TLV for the BGP Tunnel-Encaps 
>    attribute for the SR Policy Tunnel type to specify Maximum Path 
>    MTU for a Segment list (Sub-TLV)./ 
> 
>    The Maximum Path MTU can be calculated as the maximum of 
>    individual Link MTU information. The Link MTU information can be
>    obtained via BGP-LS [I-D.ietf-idr-bgp-ls-link-mtu] or some other
>    means.  based on all Link MTUs, the controller can compute the PMTU and
>    convey the information via the BGP SR policy./ 
{.is-info}

   
 #### 4. Section 3.1, length definition
 
 
** Old text:/**
>    Length: the total length of the value field not including Type and
>    Length fields. /
{.is-info}

   
**New text:/**
>    Length: the total length in octets the value field not including Type and
>    Length fields.  The value must be 6./ 
{.is-info}

   
  
#### Issue - 5. Please add a security section. 

This security section should refer to [draft-ietf-idr-sr-policy-safi].
One addition needs to be made in this text. 
 
This security section should specifically state that the new sub-TLV PATH MTU 
contains critical information for the network. Critical information is a place
where modifying the information could cause problems. Care should be taken to 
protect the collection of Link MTU, the generation of PATH MTU, and the 
distribution of PATH MTU.    


### Editorial: 
  
 ##### NIT-1. Introduction, paragraph 3, English tense + spelling 
  
**  current:/**
   [RFC3209] specify the mechanism of MTU signaling in RSVP.
   Likewise, SRv6 pakcets will be dropped if the
   packet size is larger than path MTU, since IPv6 packet can not be
   fragmented on transmission [RFC8200] ./
   
   
**  new:/** 
>   [RFC3209] specifies the mechanism of MTU signaling in RSVP.
>   Similarly, the SRv6 packets will be dropped if the packet 
>   size is larger than the path MTU, since IPv6 packet can not be
>    fragmented on transmission [RFC8200]./ 
{.is-info}

  
  
 
  
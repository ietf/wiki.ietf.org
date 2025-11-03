---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-seglist-id
description: Shepherd  draft-ietf-idr-sr-policy-seglist-id
published: true
date: 2025-11-03T03:01:34.044Z
tags: 
editor: markdown
dateCreated: 2025-02-25T01:55:41.779Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-seglist-id

## Summary 
**draft:**  [draft-ietf-idr-sr-policy-seglist-id](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-seglist-id) 
**Type:** Proposed Standard 
**current revision:** -04 
**status:** WG Draft, ready for early alli9cation 
**adopted:**  11/6/2024 
**current version:** 04 (published 3/26/2025) 
**Early Allocation**: yes, ready for query with -06 revision (11/2 to 11/17/2025)    
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none

## Revision -06 
**status:** -04 is ready for early allocation.  AD ask for specific request instead of bundled requests. 
**draft**: https://www.ietf.org/archive/id/draft-ietf-idr-sr-policy-seglist-id-06.txt
**email:** https://mailarchive.ietf.org/arch/msg/idr/PzWso9VdqSJE_sE3F71rrPp85Qk/

## Revision -04 
**status:** -04 is ready for early allocation 
**email:** https://mailarchive.ietf.org/arch/msg/idr/Me5erFR0TjMypo9uEnxjYQz_eEY/

### Resolution of Technical issues from -02 review
- Revision -03, Issue-1: resolved in -04 in section 3 
- Revision -03, Issue-2 resolved in -04 in section 2 


## Revision -03 
**status:**  Needs -04 revision to resolve technical issues from -02 
**email:** https://mailarchive.ietf.org/arch/msg/idr/ZoOmSG_E48FiW-e5GsW4_bWd4hs/


### Review of Issues from -02 Shepherd Review 
Technical issues resolved: #1 resolved,  #2 partially resolved 

### Technical issues in -03 
#### Issue 1: Security section 

>  old text:/   The security requirements and mechanisms 
> described in[ draft-ietf-idr-sr-policy-safi] also apply to this document./ 
{.is-info}

  
Problem: You have added critical information to 
[draft-ietf-idr-sr-policy-safi] regarding 
seglist-id to the SR Policy information.  You need 
to discuss how to protect the critical information in 
seglist-id.  

#### Issue 2: See the TEA template for Sub-TLV

Please see that you are filling out all the Sub-TLV 
template from https://wiki.ietf.org/group/idr/TEA-templates/SubTLV

Here's what I think you need to add: 
1. What tunnel types this subTLV can go in 
2. Does this subTLV play a part in validation of the TLV
3. Can this there be two Sub-TLV in a single TLV? 
4.  Do you need a management section?  (BGP-LS or NETCONF reference)? 


## Revision -02 
**draft:**  [draft-ietf-idr-sr-policy-seglist-id-02](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-seglist-id-02) 
Status: WG draft 
implementations: unknown 
allocation status: preliminary (upcoming issue)
WG LC status: unknown 

### Technical issues 

Comment: Thank you for a carefully written document. 

#### Issue 1: Section 2.0, last paragraph, Please provide a reference in [draft-ietf-pce-multipath] 

> old text:/
>    When signaling SR Policy by PCEP [I-D.ietf-pce-multipath], a segment
>    list is identified by "Path ID", which is a 4-octet identifier. In
>    this document, the segment list identifier is also represented using
>    a 4-octet ID./
{.is-info}

   
>  new test:/
>     When signaling SR Policy by PCEP [I-D.ietf-pce-multipath] (see section 5.2),
> 	a segment list is identified by "Path ID", which is a 4-octet identifier. In
>     this document, the segment list identifier is also represented using
>     a 4-octet ID./
{.is-info}


##### Issue-2: Security Section, Please enhance the security section 
Security section should refer to security section in 
[draft-ietf-idr-sr-policy-safi]. It is important to reference:

a) operates in trusted environment (as draft-ietf-idr-sr-policy-safi)
b) Operators must a Segment ID for a segment is critical piece of 
information about critical infrastructure.  Care must be take 
with distribution of information.

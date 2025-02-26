---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-seglist-id
description: Shepherd  draft-ietf-idr-sr-policy-seglist-id
published: true
date: 2025-02-26T02:45:35.386Z
tags: 
editor: markdown
dateCreated: 2025-02-25T01:55:41.779Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-seglist-id

## Summary 
**draft:**  [draft-ietf-idr-sr-policy-seglist-id](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-seglist-id) 
**Type:** Proposed Standard 
**status:** WG Draft (expired 2/16/2025) 
**adopted:**  11/6/2024 
**current version:** 02 
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none


## Revision -03 

Review pending (ETA 2/26) 


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

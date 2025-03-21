---
title: Shepherd reviews draft-ietf-idr-sr-policy-te-policy-attr
description: Shepherd draft-ietf-idr-sr-policy-te-policy-attr
published: true
date: 2025-03-21T03:56:06.635Z
tags: 
editor: markdown
dateCreated: 2025-02-25T02:26:19.820Z
---

# Shepherd reviews draft-ietf-idr-sr-te-policy-attr


## Summary 
**draft:**  [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-te-policy-attr) 
**Type:** Proposed Standard 
**status:** WG Draft  
**adopted:**  8/12/2024 (7/12/2024 - 7/30/2024) 
**current version:** 01
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none

## Review -01  (pending) 

Review -01 pending  

## Review -00 
**draft:** [draft-ietf-idr-sr-te-policy-att-00](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-te-policy-attr-00)
**Status**: WG draft, needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
email: https://mailarchive.ietf.org/arch/msg/idr/v6GpJtriu8z0qg8OyjS9caGfy0M/

### Technical Issues
(removed due to error). 

### Editorial: 

#### NIT-1, Section 1, paragraph 2, sentence 1

> Old text: 
>   [I-D.ietf-idr-sr-policy-safi] specifies the way to use BGP to
>    distribute one or more of the candidate paths of an SR Policy to the
>    headend of that policy.   
{.is-info}

   
> New text:/
>   [I-D.ietf-idr-sr-policy-safi] specifies the way to use BGP to
>    distribute information about one or more of the candidate paths of an SR Policy to the
>    headend of that policy. / 
{.is-info}

   
   
#### NIT-2: setion 1, paragraph 5, sentence 1
old text:/
 [I-D.ietf-lsr-algorithm-related-adjacency-sid] complements that,
   besides the SR-MPLS prefix SID, the algorithm can be also included as
   part of an SR-MPLS Adjacency-SID advertisement, in scenarios where
   multiple algorithm share the same link resource. /
   
> new text:/
>  [I-D.ietf-lsr-algorithm-related-adjacency-sid] comments that,
>    besides the SR-MPLS prefix SID, the algorithm can be also included as
>    part of an SR-MPLS Adjacency-SID advertisement in scenarios where
>    multiple algorithm share the same link resource. /
{.is-info}

   
 
#### NIT-3: SEction 3.1, sentence 1, editorial
 
>  Old text:/
>     This type allows for identification of an Adjacency SID or BGP Peer
>    Adjacency SID (as defined in [RFC8402] ) SR-MPLS label for point-to-
>    point links including IP unnumbered links/
{.is-info}

>    
>  first suggestion:/
>      This type allows for identification of an Adjacency SID or BGP Peer
>    Adjacency SID (as defined in [RFC8402] ) as an SR-MPLS label for point-to-
>    point links including IP unnumbered links/
{.is-info}

   
   comment; Are you trying to use an SR-MPLS label as an Adjacency SID or 
   a BGP Peer Adjaency SID or something else?  Please reword the sentence. 
   
  
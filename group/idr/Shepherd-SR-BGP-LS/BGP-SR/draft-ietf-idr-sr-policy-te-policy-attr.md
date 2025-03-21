---
title: Shepherd reviews draft-ietf-idr-sr-policy-te-policy-attr
description: Shepherd draft-ietf-idr-sr-policy-te-policy-attr
published: true
date: 2025-03-21T05:18:35.921Z
tags: 
editor: markdown
dateCreated: 2025-02-25T02:26:19.820Z
---

# Shepherd reviews draft-ietf-idr-sr-te-policy-attr


## Summary 
**draft:**  [draft-ietf-idr-sr-te-policy-attr](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-te-policy-attr/)
**Type:** Proposed Standard 
**status:** WG Draft  
**adopted:**  8/12/2024 (adoption call: 7/12/2024 - 7/30/2024) 
**current version:** 01
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** would need to augment deraft-ietf-idr-bgp-ls-sr-policy 

## Review -01  (pending) 
Reviewer: Susan Hares 

**draft:** [draft-ietf-idr-sr-te-policy-attr-01](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-te-policy-attr-01)

### Technical issues:

#### Issue-1 Section 1, paragraph 2, description of BGP attribute

You need to make clear which NLRI and BGP attributes passed include the Tunnel Encapsulation Attribute. 

Old text:/
In UPDATE messages of that address family, the NLRI identifies an SR Policy Candidate Path, 
and the attributes encode the segment lists and other details of that SR Policy Candidate Path./

New text:/
BGP UPDATE message send the NLRI identifies an SR Policy Candidate Path, 
and the attributes encode the segment lists and other details of that SR Policy Candidate Path.
These BGP attributes include the Tunnel Encapsulation attribute [RFC9012] which encodes
SR Policy tunnel information in an SR Policy Tunnel  TLV (per [I-D.ietf-idr-sr-policy-safi]). 

#### Issue-2, Sub-TLV template checklist check:

Please provide this information in your draft: 

1.  Can this Sub-TLV go in any other tunnel TLVs in the Tunnel-Encapsulation Attribute? 

My understanding is that this draft (like draft-ietf-idr-sr-policy-safi) specifies 
that segment lists with these types are only defined for the Segment list Sub-TLV 
are only defined to be used by the SR Policy Tunnel TLV.  All other usages are outside 
the scope of this document. 

Some statement like this needs to go in your document. 

2.  How do these segment types impact validation of the BGP route (NLRI + Attribute pair)?  Can the segment types repeat? 

Just like [draft-ietf-idr-sr-policy-safi], the new segment types are checked syntactically, but 
not semantically.   The SRPM in the head-end does the semantic checking to determine the 
values make sense for deployments.  If so, I suggest the following change 

**Section 3 text:**
> old text: / The processing procedures for SID with algorithm specified in
> [RFC9256] and [I-D.ietf-idr-bgp-sr-segtypes-ext] are still applicable for the new segment types./
{.is-info}


> New text: /  The processing procedures for SID with algorithm specified in
> [RFC9256] and [I-D.ietf-idr-bgp-sr-segtypes-ext] are still applicable for the new segment types.
> Just as in [drafat-ietf-idr-sr-policy-safi], the segment list sub-TLV specified in this document 
> (sections 3.1, 3.2, 3.3, and 3.4) may repeat multiple times within the segment-list Sub-TLV. 
> 
> BGP only checks the syntax of the fields, but the semantic meaning is check by the consumer. /
{.is-info}


 
#### Issue-3: Need update to security section 

The details in the security section need to be expanded.  [draft-ietf-idr-sr-policy-safi]
specifies information on the critical information that it passes.  You need to extend this 
to the information included in the new segment types. 

#### Issue-4: Need to have a management section 

Would it be helpful for the BGP-LS or a Yang model help manage the creation of segments by the 
headend? For example, does draft-ietf-bgp-ls-sr-policy in section 5.7.1.1 need to be 
extended to include the segment list types in this document. 

Do the authors recommend the creation of Yang module for managing the creation 
of segment types?  


### NITS

#### NIT-1, introduction, paragraph 4, add space before (

> old text:/
> As specified in [RFC9256], the SR algorithm can be optionally specified for Segment Types C(IPv4 Node and SID), D(IPv6 Node and SID for SR-MPLS), I(IPv6 Node and SID for SRv6), J(IPv6 Node, index for remote and local pair, and SID for SRv6), and K(IPv6 Local/Remote addresses and SID for SRv6)./ 
{.is-info}


> New text:/
> As specified in [RFC9256], the SR algorithm can be optionally specified for Segment Types C (IPv4 Node and SID), D (IPv6 Node and SID for SR-MPLS), I (IPv6 Node and SID for SRv6), J (IPv6 Node, index for remote and local pair, and SID for SRv6), and K (IPv6 Local/Remote addresses and SID for SRv6)./
{.is-info}



#### NIT-2, section 3.1, paragraph 1, add 

> Old text:/ 
> This type allows for identification of an Adjacency SID or BGP Peer Adjacency SID 
> (as defined in [RFC8402] ) SR-MPLS label for point-to-point links including IP unnumbered links./
{.is-info}

> 
> Change /(as defined in [RFC8402] )/ to /(as defined in [RFC8402])/
{.is-info}




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
   
  
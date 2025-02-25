---
title: Shepherd reviews for draft-lin-idr-srv6-policy-headend-behavior
description: Shepherd draft-lin-idr-srv6-policy-headend-behavior
published: true
date: 2025-02-25T23:11:15.843Z
tags: 
editor: markdown
dateCreated: 2025-02-25T23:11:15.843Z
---

# Shepherd reviews for draft-lin-idr-srv6-policy-headend-behavior

## Summary 
**draft:**  [draft-lin-idr-srv6-policy-headend-behavior](https://datatracker.ietf.org/doc/html/draft-lin-idr-srv6-policy-headend-behavior)
**Type:** Proposed Standard 
**status:** Individual Draft, expired (11/6/2024) 
**adoption Call:** TBD 
**current version:** 04
**Early Allocation**: TBD 
**implementations:**  
**bgp-ls draft:** none


## Review -03 
**draft:** [draft-lin-idr-srv6-policy-headend-behavior](https://datatracker.ietf.org/doc/html/draft-lin-idr-srv6-policy-headend-behavior)
**Status**: Individual Draft, needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
**email:** 

t Problem:  Please update this document to refer to current drafts


  1.  draft-ietf-idr-segment-routing-te-policy – has been replaced by the following two drafts:

draft-ietf-idr-sr-policy-safi,  and

draft-ietf-idr-bgp-sr-segtypes-ext,



Since this draft refers to mechanisms and security considerations in draft-ietf-idr-segment-routing-te-policy, please verify that the references are still valid.


  1.  draft-jiang-idr-ts-flowspec-srv6-policy – has been replaced by draft-ietf-idr-ts-flowspec-srv6-policy
  2.  draft-filsfils-spring-srv6-neg-pgm-insertion – has expired.

Please review the changes in these drafts to make sure your text still applies.

2nd Problem: Are these L2 Headend Behavior features approved by Spring WG?

It is not clear whether the extension in draft-filsfils-spring-srv6-neg-pgm is being adopted by the Spring WG.

3rd Problem:  Section 3 of this draft suggests that [draft-ietf-idr-bgp-ls-sr-policy] will be extended to include headend behavior.

Prior to IDR adoption, it would be useful to provide details on:

  1.  Why the BGP-LS mechanism need to be augmented to include headend behaviors.
  2.  What BGP Update packets or procedures need to be updated to carry the headend behaviors.

Next steps:  The authors should:

  1.  Update their draft to address problem 1.
  2.  Ask the Spring WG whether L2 headend behaviors described in draft-filsfils-spring-srv6-neg-pgm has ben approved by IDR.
  3.  Provide additional details on what BGP-LS mechanisms or TLVs need to be updated to handle the headend behaviors.

The IDR chairs welcome a presentation of the updated draft at the 5/20/2024 interim.

Cheerily, Susan Hares

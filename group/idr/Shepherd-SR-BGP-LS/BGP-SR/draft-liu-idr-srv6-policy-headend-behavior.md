---
title: Shepherd reviews for draft-lin-idr-srv6-policy-headend-behavior
description: Shepherd draft-lin-idr-srv6-policy-headend-behavior
published: true
date: 2026-01-06T23:57:28.827Z
tags: 
editor: markdown
dateCreated: 2025-02-25T23:11:15.843Z
---

# Shepherd reviews for draft-lin-idr-srv6-policy-headend-behavior

## Summary 
**draft:**  [draft-lin-idr-sr-policy-headend-behavior](https://datatracker.ietf.org/doc/html/draft-lin-idr-sr-policy-headend-behavior)
**Type:** Proposed Standard 
**status:** Individual Draft, expired (11/6/2024) 
**adoption Call:** TBD 
**current version:** 05
**Early Allocation**: needs early allocation after adoption. 
**implementations:**  
**bgp-ls draft:** none


## Review -05 
**Summary:** Resolved -04 action issues 1 and 2. For clarity, need to make the editorial/technical changes below. 
Review [email](https://mailarchive.ietf.org/arch/msg/idr/XFKiGhuVq8EORwxwAQWEvydJTn8/)

### Technical review: 
#### Technical Issue 1, Make clear that behaviors are headend behaviors

Abstract:
>old text:/
>  	   RFC8986 defines H. Encaps behavior, H. Encaps.Red behavior, H.	
>  	   Encaps.L2 behavior, and H. Encaps.L2.Red behavior for SR policy.
{.is-info}
> New text:/
>  	   RFC8986 defines the following headend behaviors for SR Policy:
>      H. Encaps, H. Encaps.Red, H.Encaps.L2, and H. Encaps.L2.Red. /
{.is-info}


Section 1, 5th paragraph
> Old text:/
> 	 	 [RFC8986] defines H. Encaps behavior, H. Encaps.Red behavior, H.	
>  	   Encaps.L2 behavior, and H. Encaps.L2.Red behavior for SR policy./
{.is-info}

> New text:/
>  	   [RFC8986]defines the following headend behaviors for SR Policy:
>      H. Encaps, H. Encaps.Red, H.Encaps.L2, and H. Encaps.L2.Red. 
{.is-info}


## Review -04 + Interim notes 
**Email: **https://mailarchive.ietf.org/arch/msg/idr/QvjusnjE9n3Q8zOMCOSV1a2GHJ0/

### Technical: 

### Next steps for -05  

During the 5/20/2024 interim, your draft was discussed.  The notes from the interim are below.

You need to create a version -05 before I start an adoption call for this draft.
In version -05, please add the following information:

#### Action 1.In  -05 , please make sure you indicate the focus of the draft.

My understanding is that the draft is focusing on
"H.Encaps" Encapsulation use case for the Reduce case (H.Encaps.reduced)
And the non-reduced case (H.Encaps.A).


#### Action 2. Provide some feedback on why H.Encaps.A is useful in deployments.

We'll start WG adoption call once I receive the -05 version of this draft with these changes.

Cheerily, Sue Hares


### Notes from 5/20/2024 Interim 
**Email reference:**
https://mailarchive.ietf.org/arch/msg/idr/XQkAVav3Kg23B5UsOO764_CPvOE/

**Reference to 5/20/2024 interim notes:**
https://datatracker.ietf.org/meeting/interim-2024-idr-04/materials/minutes-interim-2024-idr-04-202405201400-01

#### Text in minutes on yoru draft 

#### 3. BGP Extensions of SR Policy for Headend Behavior [15 minutes]
draft-lin-idr-sr-policy-headend-behavior-04 [Changwang Lin]
> 
> Ketan: What is the value of defining the headend behavior for SR Policy?
> (L3 headend and L2 headend).
> 
> Changwang: Should we use one TLV instead of 2?
> 
> Ketan: What is the motivation for defining this configuration.
> It depends on what type of traffic is being steered?
> Is this color traffic? If it is L2 traffic?
> 
> Changwang: (shows) the H.Encap.A and H.Encaps.Red. slide?
> 
> Sue: Why do we need to include these in the Steering SR Policy?
> What benefit does it provide?
> 
> Changwang: There is a need for a mechanism to configure the [relationship]
> behavior for the headend for the SR Policy. Currently the BSID
> Policy does not have the forwarding behavior.
> 
> Ketan: The binding SID behavior is an SR behavior.  The "H." behaviors are
> headend behaviors. These are different from each other.
> 
> Joel: Is this helpful for the SR Policy behavior with reduced policy or not?
> There is "H.Encaps" and "H.Encaps.Reduced"?  It is specify whether to
> use the reduced mode. Is this one of the values of specifying this in
> the SR policy?
> 
> Mengxiao Chen: Agree that this can help to control the use of the reduced function.
> 
> Ketan: Is it one of the functions or the only function?
> 
> Mengxiao Chen: In the previous version, we included the insert and encapsulation.
> In this version, we have removed the insertion.  Only the encapsulation remains.
> 
> Ketan: Not sure whether it is valuable to indicate the reduced or
> non-reduced behavior. Indicate encapsulate or insert may have value, but
> insert is not adopted yet.  Only Trouble shooting or some other applications
> use the "non-Reduced" function.  I thought the previous vesion makes sense,
> but I'm not sure about this version.
> 
> Sue: If you go forward with this draft, you make sure you indicate what the
> focus of the draft is. This needs to be added before we go forward with adoption.
> 
> Sue to Joel: Does this need to go to Spring first.
> Joel: The behaviors are already defined in SPRING.
> 
> Sue: Changwang after you make the change, we'll do an adoption call to
> see if others feel the "Reduced" or "Non-Reduced" is appropriate.
{.is-info}


## Review -03 
**draft:** [draft-lin-idr-srv6-policy-headend-behavior](https://datatracker.ietf.org/doc/html/draft-lin-idr-srv6-policy-headend-behavior)
**Status**: Individual Draft, needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
**email:** https://mailarchive.ietf.org/arch/msg/idr/WwZV7vQsqoOwdh6thDS8iifPo-Q/


### Technical Issues 

#### Issue-1: Please update this document to refer to current drafts

  1.  [draft-ietf-idr-segment-routing-te-policy] – has been replaced by the following two drafts: [draft-ietf-idr-sr-policy-safi]  and [draft-ietf-idr-bgp-sr-segtypes-ext]

Since this draft refers to mechanisms and security considerations in [draft-ietf-idr-segment-routing-te-policy], please verify that the references are still valid.

2.  [draft-jiang-idr-ts-flowspec-srv6-policy] – has been replaced by [draft-ietf-idr-ts-flowspec-srv6-policy]

3. [draft-filsfils-spring-srv6-neg-pgm-insertion] – has expired.

Please review the changes in these drafts to make sure your text still applies.

#### Issue-2 Are these L2 Headend Behavior features approved by Spring WG?

It is not clear whether the extension in draft-filsfils-spring-srv6-neg-pgm is being adopted by the Spring WG.

#### Issue-3: Section 3 of this draft suggests that [draft-ietf-idr-bgp-ls-sr-policy] will be extended to include headend behavior.

Prior to IDR adoption, it would be useful to provide details on:

  1.  Why the BGP-LS mechanism need to be augmented to include headend behaviors.
  2.  What BGP Update packets or procedures need to be updated to carry the headend behaviors.

**Next steps for authors: **The authors should:

  1.  Update their draft to address problem 1.
  2.  Ask the Spring WG whether L2 headend behaviors described in draft-filsfils-spring-srv6-neg-pgm has ben approved by IDR.
  3.  Provide additional details on what BGP-LS mechanisms or TLVs need to be updated to handle the headend behaviors.

 

---
title: Shepherd Reviews for draft-zhang-idr-sr-policy-template 
description: Shepherd draft-zhang-idr-sr-policy-template 
published: true
date: 2026-01-07T01:13:05.635Z
tags: 
editor: markdown
dateCreated: 2025-02-26T00:56:51.369Z
---

# Shepherd Reviews for draft-zhang-idr-sr-policy-template


## Summary 
**draft:**  [draft-zhang-idr-sr-policy-template](https://datatracker.ietf.org/doc/html/draft-zhang-idr-sr-policy-template)

**Type:** Proposed Standard 
**status:** Individual draft  
**adoption process:** Must get support from Spring before continuing 
**current version:** 06
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none

## Review of -06 
There are no effective changes between version -04 and -06 

## Review of -04  
**draft:**  [draft-zhang-idr-sr-policy-template](https://datatracker.ietf.org/doc/html/draft-zhang-idr-sr-policy-template)

## Query by Jie Dong to IDR WG (9/3) 
**email link:** https://mailarchive.ietf.org/arch/msg/idr/4Uevk5jPnST9PsSvFJS2MSuCASs/

### Message from Jie Dong: 
> Dear all,
> 
> A few month ago, draft-zhang-idr-sr-policy-template was presented at an interim meeting of IDR WG, and on the meeting there was suggestion that the architecture part of introducing template to SR Policy needs to be discussed in SPRING. Hence we would like to solicit attention and opinions from SPRING WG on this topic.
> 
> As described in the IDR draft, a template consists of a set of attributes and functions which can be associated with an SR Policy and its candidate paths. Some examples of the attributes and functions are:
> 
> - BFD and its parameters
> - protection
> - in-situ performance measurement
> - traffic statistics
> - etc.
> 
> The content of a template can be defined by an operator and then provided to both the controller and the network devices via management interfaces. A template may be used only on a specific headend node, or it may be used on multiple headend nodes in the network.
> 
> For the instantiation of an SR Policy, only the template ID needs to be carried as one of the attributes of the SR Policy in the control protocols, such as BGP and PCEP. Thus the extensions to the control protocols are straightforward. Please note for PCEP there is a draft proposing similar concept and extensions: draft-alvarez-pce-path-profiles.
> 
> 
> Any comments and considerations on introducing template to the SR Policy architecture would be appreciated.
> 
> Best regards, Jie Dong
> 
{.is-info}

#### Comments from Nat Kao 

> Hi, Jie.
> I've read -04 of this draft.
> We can further augment it by introducing attributes in the current
> candidate paths(CPs). (ex: SID lists, ENLP, ...etc.)
> The template acts as a collection of default values of SR policy CPs on the
> headend.
> If we do so, we can define procedures for the following:
>     1. How are the values for the same attribute selected from the received
> CP or the referring template?
>        -We can inherit the values from the referring template for the
> attributes if there's no definition in the CP.
>        -For some attributes, a merge might also be an option.
>     2. How to deal with CPs when we add/modify/remove the referring template 
{.is-info}

#### Response from Jie Dong
> Hi Nat,
> 
> Thanks for the review and comments.
> 
> In my understanding there are two types of attributes for a candidate path.
> 
> The first type is the attributes which are necessary for creating a candidate path, this includes binding SID, SID list, priority, etc. In BGP, these attributes are defined as TLVs/sub-TLVs associated with the SR Policy SAFI.
> 
> The second type is the attributes which are ancillary and could be associated with a candidate path, this includes BFD, protection, traffic monitoring, etc. In BGP, these attributes will not be defined as individual TLVs/sub-TLVs of the SR Policy SAFI.
> 
> The template concept we are introducing here is about the second type of attributes, as it is possible that these attributes could be the same for multiple candidate paths, which means the template can be reused. And using one template ID can refer to a series of attributes. Thus I would say “a template acts as a collection of customized attributes associated with an SR Policy candidate path”.
> 
> For your first comment about the procedure, since the attributes defined in a template are not covered in the existing SR Policy attributes, there will be no overlap or conflict.
> 
> As for your second comment, if the template for an SR Policy CP needs to be updated or removed, the control plane mechanism (e.g. BGP) would be used to send an update of the CP.
> 
> Best regards Jie Dong: 
{.is-info}

#### Response from Nat to Jie's response 

**ON comment 1: **
> <NK>
> As you mentioned, there are two sets of attributes of a CP: the "base set"
> and the "ancillary set." The base set is carried in the BGP SR-Policy SAFI,
> while the ancillary set can specified by other means. A template is one of
> those means to pack the ancillary set. According to the current assumptions
> of the SR-Policy template draft, these two sets are disjoint.
> 
> However, this might pose a restriction on the SAFI for ancillary sets. For
> the extensibility of the SAFI and the template itself, I suggest adding a
> tie-breaking procedure for the templates just in case of overlaps. If that
> case is out of the scope of the current draft, maybe we can add some text
> describing it and let the following drafts(if any) deal with that in the
> future.
> </NK>
{.is-info}

**On Comment 2: **

> <NK>
> Do you mean there will be another SAFI to distribute ancillary sets?
> </NK>
{.is-info}



## Notes from 5/20/2024 Interim
**Email:** https://mailarchive.ietf.org/arch/msg/idr/LURaaODPdiT6Sn7HG1qrWQqSpys/


### Notes  from 5/20/2024 interim:
**BGP SR Policy Extensions for template**
**draft-zhang-idr-sr-policy-template-03** (Ka Zhang)
> 
> Ketan: Is the template same as the path-profile ID in PCEP?
> 
> Ka: The use of template in this draft is similar to the path-profile.
> 
> Ketan: Suggest to align on the terminology, such as profile-ID. And
> add-reference to the PCE draft.  It might make the document clearer.
> I agree with the purpose of the draft.
> 
> Ketan: Is this [the template] an attribute of the candidate path level
> or of the SR Policy? I think you need to explain what needs to happen at the
> candidate path level.
> 
> Ka: I will check on this later.
> 
> Alvaro: Can someone provide pointer to the PCE draft?
> [pointer]
> Template idea can be bigger than this draft. Sue called it the
> "template architecture" in her shepherd's review.
> This draft is only about the TLV for the template ID.
> There are a lot more details on the template and the policy.
> Are they a subset of a SR Policy? Or are these a part of the group
> of policies. Can these policies be nested or not?  There is an
> assertionin the draft that if you do not know what the template ID
> is, please do nothing.  This could be a problem if you wanted the
> Template ID to do something.
> 
> Alvaro: The architecture of template needs to be discussed in SPRING.
> 
> Sue: You will note that Alvaro's concerns are behind quesitnos
> 5, 6, and 7 in my shepherd's review. I realize you have given me
> definitive answers.  I appreciate those answers, but you will
> need to discuss that architecture in Spring.
> 
> Jie Dong
> https://datatracker.ietf.org/doc/html/draft-alvarez-pce-path-profiles-04
> 
> Jie Dong: The PCE draft has expired. Need to consider how to move
> forward both the architecture and the protocol extensions.
> 
> Alvaro: [from Chat]: The draft expired a long time ago]
> 
> Ketan: [From chat]: But there are implementations with vendor specific TLVs.
> I agree this needs work in spring and PCEP.
> 
> Sue: Thank you Ka for an excellent presentation.
> You loooked at the questions, and carefully answered.
> This work helped us get to the next step quickly.
> 
> Nat Kao: I raised two questions on the list for this draft.  One of these
> questions was answered in points 2 and 3 in the shepherd review.
> The other questions has not been answered.  What happens for
> the SR Policy's that are active when the template ID information is
> modified? This situation should be described.
> 
> Nat Kao: Will check the latest version about the resolution of conflict
> between template and candidate path.
> 
> Sue: Next step is to revise the IDR text and start the
> architecture discussion in SPRING.
> 
> {.is-info}
> 
{.is-info}



## Review -03 
**draft:**  [draft-ietf-idr-sr-policy-te-policy-attr](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-te-policy-attr)
**Status**: Individual draft needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
**email:** https://mailarchive.ietf.org/arch/msg/idr/s444aqSUl4195Y_VdJtfg4r2RlU/
 
### Technical Review 

**What it defines:** template for SR Policy

The following issues need to be discussed by this draft:

 #### Issue-1:  Why should BGP be passing a configuration template plan?

NETCONF/RESTCONF have concepts of templates and updates to templates.

Why does BGP as an unordered multicast transmission protocol a valid protocol for this template?

#### Issue-2: How does BGP validate a SR Policy template?


How is the BGP NLRI with the template validated?

The reference to [draft-ietf-idr-segment-routing-te-policy] is out of date.   This draft has been replaced by [draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-bgp-sr-segtypes-ext].

The BGP process passes valid BGP NLRI routes with SR Candidate Routes to the SRPM. SRPM validates the SR Candidate routes into an Active Candidate Route.

- How is the template information from this draft validated?
- 
- How does this validation fit with BGP routes with tunnels?
- 
- How does this validation fit with BGP routes without tunnels?


#### Issue-3: Why are the constraints based on Route-Target constraints (RTCs)  valid for this use case?

Why is it not a targeted BGP session or an RR-controller function?

#### Issue-4: Has Spring Approved the template approach?

If so, where is the Spring document that discusses this approach?


#### Issue-5:  Section 5.1 needs more detail.
Validation of the BGP routes needs to occur before handing it off to the SRPM.
Therefore, the authors need to revise the statement in section 5.1

"Reflections just need to advertise the route of SR, no need to process"

#### Issue-6: Section 5.2 states the following;

> "SR Policy is only to be processed on the SR Policy headend,
> the reflectors just need to reflect the route of SR Policy, no need to process it."
{.is-info}

This reduces BGP to a transport of potentially bad information with little context. Why should BGP change to do this?


#### Issue-7: Section 5.2 precedence between template and "no templates"

What is the exact precedence between template generated information and
Other information.

### Editorial issues:

NIT-1: Please correct references 
[draft-ietf-idr-segment-routing-te-policy] - must be replaced with
[draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-bgp-sr-segtypes-ext]/ 

### Action items 
Authors should do the following before IDR adoption call

  1.  Approval by Spring of Template architecture
  2.  Revise the draft to answer the above questions.


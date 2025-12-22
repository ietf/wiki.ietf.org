---
title: Shepherd Review for draft-ietf-idr-bgp-ls-sr-policy-nrp
description: Review of bgp-ls-sr-policy-nrp
published: true
date: 2025-12-22T04:44:21.484Z
tags: 
editor: markdown
dateCreated: 2025-02-17T17:17:11.528Z
---

# Shepherd report: draft-ietf-idr-bgp-ls-sr-policy-nrp

Draft:  [draft-ietf-idr-bgp-ls-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-nrp/)
Current version: -01 
Status: WG draft, adopted (8/12/2024 upload), WG LC requested, 
awaiting ok on WG LC for draft-ietf-idr-sr-policy-nrp prior to starting WG LC on this drasft. 

WG LC: needs 2 implementations and joint WG LC with draft-ietf-idr-sr-policy-nrp. 
implementation report: [v1](group/idr/implementations/draft-ietf-idr-bgp-ls-sr-policy-nrp)

## -02 Review 
**draft:** [draft-ietf-idr-bgp-ls-sr-policy-nrp-02](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-ls-sr-policy-nrp-02)
**Document type:** Proposed Standard 
**WG Status:** WG Draft, pre-WG LC, awaiting linked draft to be through WG LC before WG LC.  
**linked draft:** [draft-ietf-idr-sr-policy-nrp-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-nrp/)

draft-ietf-idr-bgp-ls-sr-policy-nrp-02
date: 12/12/2025
Reviewer: Susan Hares
Status: Needs -03 draft before publication request.

Shepherd's Detailed review:

### Minor:
#### 1) BGP-LS normally queries for control

Section 1, paragraph 4, - needs to indicate control plane

> Old Text: /
>    [I-D.ietf-idr-sr-policy-nrp] defines the extensions to BGP SR policy
>    to specify the NRP which the SR Policy candidate path is associated
>    with./

> new text:/
>    [I-D.ietf-idr-sr-policy-nrp] defines the extensions to BGP SR policy
>    to specify the control Plane NRP ID which the SR Policy candidate
>    path is associated with./
{.is-info}



2) Section 1, paragraph 6 - indicate control plane 
> 
> Old text/
>    The SR policy indicates the forwarding path
>    of the data packet, and the NRP ID indicates the reserved resources
>    along the path specified by the SR policy.  By associating the SR
>    policy with a specific NRP, the forwarding path and resource
>    reservation along the path are ensured.  BGP-LS reports the
>    association between SR Policy Candidate Path (CP) and NRP-ID, which
>    is used to synchronize the association information between the SR
>    Policy CP and the NRP-ID./

> New text: / 
> Section 1, paragraph 6 /
>    The SR policy indicates the forwarding path
>    of the data packet, and the NRP ID indicates the reserved resources
>    along the path specified by the SR policy **in the control plane.**
>    By associating the SR policy with a specific NRP, the forwarding path and resource
>    reservation along the path are ensured.  BGP-LS reports the
>    association between SR Policy Candidate Path (CP) and NRP-ID, which
>    is used to synchronize the association information between the SR
>    Policy CP and the NRP-ID./
{.is-info}



#### 3. Section 2 - Clear indication of control plane versus data plane
> Old text:/
>   NRP ID: 4-octet domain significant identifier of Network Resource
>    Partition.  Value 0 and 0xFFFFFFFF are reserved.  NRP ID is planned
>    by network operator./
> 
{.is-info}

In my understanding, the control-plane NRP ID is passed via BGP.
Does this mean the NRP ID is assigned by the operator of the network
and assigned by configuration? Please clarify.


#### 4. Section 3 - scaling editorial (optional)

Scaling of NRP expands for possible control plane NRP ID, but
the data plane can have fewer NRP IDs.  I am wondering if
this understanding would help this section.

## -01  review  

**WG LC Status:** WG LC requested (9/15/2024), In Shepherd checks (2/28/2025)
review summary: Needs revision prior to WG LC 

**draft: **[draft-ietf-idr-bgp-ls-sr-policy-nrp-01](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-ls-sr-policy-nrp-01)
**Document type: **Proposed Standard 
**WG Status:** WG Draft, pre-WG LC 
linked draft: [draft-ietf-idr-sr-policy-nrp-02](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-nrp/)

### Implementation issues: 
Please fill out the implementation report on 
https://wiki.ietf.org/group/idr/implementations/draft-ietf-idr-bgp-ls-sr-policy-nrp

### Technical issues:

**Issue-1: **Please Add an Error handling Section that indicates an augmentation to  
[draft-ietf-idr-bgp-ls-sr-policy] and [RFC9552].

Please indicate: 
a) What happens if NRP TLV is malformed. 
b) If multiple TLVs, and first NRP TLV is malformed (length wrong, content)   

existing text: /If multiple TLVs are present, then the first one
   is considered valid and the rest are ignored
   [I-D.ietf-idr-bgp-ls-sr-policy]./

Please note that this technical issues may be resolved by 

#### Issue-2: References 

Please make draft-ietf-idr-sr-policy-nrp as normative reference. 

### Editorial: 

#### NIT-1: Section 1, paragraph 2, 2nd sentence. 

I think you are missing a space before the 2nd sentence. 
Please check it. 

#### NIT-2: Section 1, paragraph 5, replace ", etc"

Old text:/ SR policy
   information can be used by external components for path computation,
   re-optimization, service placement, network visualization, etc./
   
A stronger wording is: 
> new text:/ SR policy
>    information can be used by external components for path computation,
>    re-optimization, service placement, network visualization, and other 
>    network applications./ 
>    
{.is-info}

 
 
## -00 review 
### email link: 

Status: WG draft, recently adopted (8/12/2024 upload)
WG LC: needs 2 implementations. 
Shepherd Summary: Editorial changes needed
Email link: https://mailarchive.ietf.org/arch/msg/idr/4hqHrpKyEmlB_1neHFHuSLvSNNA/


Technical Edits: 
1. Section 2, NRP-ID 

old text: /NRP ID is planned by network operator/
new text: /NRP ID is allocated and administered by network operator./ 

2. Section 3, Scalability, last sentence, need clarity on what "this" refers to

old text: On the other hand this will only cause an increase 
          in the status reporting information of the head node, 
		  the impacts to the BGP control plane are considered acceptable./

Suggested 	  
new text:/ On the other hand, the increase in state when NRP increases will 
           cause an increate in the state reported on the head node.  
		   Due to this fact, the impact to the BGP control plan is considered
		   acceptable./ 
       
       
 Editorial: 
 1. Abstract,, paragraph 2, sentences 2. 

Old text:/ The association between SR Policy and NRP policy needs to be 
specified so that for service traffic which is steered into the SR Policy, 
the header of the packets can be augmented with information associated with 
the NRP./

Old text:/ The association between SR Policy and NRP policy needs to be 
specified so that for service traffic which is steered into the SR Policy, 
the header of the packets can be augmented with information associated with 
the NRP./
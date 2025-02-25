---
title: Shepherd Reviews for draft-chen-idr-bgp-sr-policy-cp-validity
description: Shepherd draft-chen-idr-bgp-sr-policy-cp-validity
published: true
date: 2025-02-25T14:29:44.125Z
tags: 
editor: markdown
dateCreated: 2025-02-25T14:26:50.442Z
---

# Shepherd Reviews for draft-chen-idr-bgp-sr-policy-cp-validity
 
 ## Summary 
**draft:**  [draft-ietf-idr-sr-policy-bgp-sr-policy-cp-validity](https://datatracker.ietf.org/doc/draft-chen-idr-bgp-sr-policy-cp-validity/)
**Type:** Proposed Standard 
**WG status:** Individual draft   
**call for adoption:** authors feel ready 
**current version:** 03 
**spring document**: draft-chen-spring-sr-policy-cp-validity 
**Early Allocation**: needs early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none


## Review -03 (pending)

**draft:** [draft-ietf-idr-sr-policy-bgp-sr-policy-cp-validity]
(https://datatracker.ietf.org/doc/html/draft-chen-idr-bgp-sr-policy-cp-validity-03)
**Status**: Review pending  
**implementations:** unknown 
**email:** pending 
**Authors:** 5 

**ETA for Review**: 2/25/2025 


## Review -02 
**draft:** [draft-ietf-idr-sr-policy-bgp-sr-policy-cp-validity](https://datatracker.ietf.org/doc/html/draft-chen-idr-bgp-sr-policy-cp-validity-02)
**Status**: needs revision (-03)  
**implementations:** unknown 
**allocation status:** needs early allocation 
**email:** https://mailarchive.ietf.org/arch/msg/idr/k_kjp14Bu_x_ysP1PXmN0s7rXzg/ 
Authors: 5 

### Techical Issues 

#### Issue-1:  Spring References: 

draft-chen-spring-sr-policy-cp-validity requested WG adoption 7/26. 
What is the status of the WG adoption?  

#### Issue-2: Section 2 paragraph 1, wrong document reference. 

Please replace draft-ietf-idr-segment-routing-te-policy with
draft-ietf-idr-sr-policy-safi.

#### Issue-3: section 3, length definition, fixed as 6 

The total length must be 6.  Please address this in your next text. 


#### Issue-4: Section 4, wrong document reference 

Please replace draft-ietf-idr-segment-routing-te-policy with
draft-ietf-idr-sr-policy-safi.

#### Issue-5: Section 6, [draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)

[draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) calls out the protection of critical information. 
CP Validity Sub-TLV is a critical pieces of information. 
Please add text that indicates this point. It will help 
you read the latest version of draft-ietf-idr-sr-policy-safi.
 

### Editorial review: 
#### NIT-1:  section 1, paragraph 1, sentence 1

Problem: English verb-subject tense alignment 

> old text:/ SR Policy architecture are specified in [RFC9256]. /
{.is-info}

> new text:/ SR Policy architecture is specified in [RFC9256]. / 
{.is-info}


 
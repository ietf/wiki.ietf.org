---
title: Shepherd Reviews for draft-chen-idr-bgp-sr-policy-cp-validity
description: Shepherd draft-chen-idr-bgp-sr-policy-cp-validity
published: true
date: 2026-01-06T23:36:39.348Z
tags: 
editor: markdown
dateCreated: 2025-02-25T14:26:50.442Z
---

# Shepherd Reviews for draft-chen-idr-bgp-sr-policy-cp-validity
 
 ## Summary 
**draft:**  [draft-chen-idr-bgp-sr-policy-cp-validity](https://datatracker.ietf.org/doc/draft-chen-idr-bgp-sr-policy-cp-validity/)
**Type:** Proposed Standard 
**WG status:** Individual draft   
**call for adoption:** authors feel ready, needs revision (-04) + Check for Spring  
**current version:** 04, Needs -05   
**spring document**: draft-chen-spring-sr-policy-cp-validity 
**Early Allocation**: needs early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none


## Version -04 
The technical issues from -03 review remain.  Please address these 
in -05. 

## Version -03 

**draft:** [draft-chen-idr-bgp-sr-policy-cp-validity](https://datatracker.ietf.org/doc/html/draft-chen-idr-bgp-sr-policy-cp-validity-03)
**Status**: Needs -04 to resolve issues.   
**implementations:** unknown 
**email:** https://mailarchive.ietf.org/arch/msg/idr/rRev0V44j0jNoQY6B07nA61MRkg/ 
**Authors:** 5 

### Technical Issues in -03 
All Technical issues from -02 have been resolved. These issues need to be resolvedin -04. 

#### Technical issue-1: Better form for IANA type 

**Section 3:**
old text:/ 
   /Type: to be assigned by IANA./
   
New text:/ 
     /Type: TBD1 (to be assigned by IANA)./ 

**section 5:**

Old text:/
   TBD    CP Validity Sub-TLV       This document/
New text:/
   TBD1    CP Validity Sub-TLV       This document/
   
#### Issue-2: TEA template checks. 

1. Can this Sub-TLV go in any other Tunnel-Encaps Attribute TLV than SR Policy? 
I suspect the answer to this question is "no".  You simply need to specify this in section 2 or 3. 

2. This sub-TLV provides a role in validating and choosing Active SR Policy paths from candidate paths

This validation is not at the BGP peer, but in the SRPM.  Your text needs to indicate this point. 
Section 4 should indicate that it is the SRPM in the headend that is making use of this Sub-TLV. 

3. You need to create a manageability section 

Consider two questions: 
- 3-a) Could these parameters by set in configuration by Yang module? 

If the headend uses configuration to set these values, should a Yang module be created that augments BGP SR implementations?  You do not have to create the module, merely indicate that it is useful. 

- 3-b) Monitoring of the information by BGP-LS 

If bgp-ls would be helpful in monitoring the headend setting of this value, please indicate how it would be useful. 

#### Issue-3: Please update references 
please update from draft-ietf-idr-sr-policy-safi to RFC9830. 


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


 
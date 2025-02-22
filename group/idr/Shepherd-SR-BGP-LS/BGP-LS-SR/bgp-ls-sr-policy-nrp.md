---
title: Shepherd Review for draft-ietf-idr-bgp-ls-sr-policy-nrp
description: Review of bgp-ls-sr-policy-nrp
published: true
date: 2025-02-22T13:42:04.192Z
tags: 
editor: markdown
dateCreated: 2025-02-17T17:17:11.528Z
---

# Shepherd report: draft-ietf-idr-bgp-ls-sr-policy-nrp

Draft:  [draft-ietf-idr-bgp-ls-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-nrp/)
Current version: -01 
Status: WG draft, adopted (8/12/2024 upload), WG LC requested 
WG LC: needs 2 implementations and joint WG LC with draft-ietf-idr-sr-policy-nrp. 
implementation report: [v1](group/idr/implementations/draft-ietf-idr-bgp-ls-sr-policy-nrp)

## -01  review - Pending 

Status: WG LC requested (9/15), In Shepherd checks (2/21) 
Shepherd checking: 
a) Keyur's comments 
b) whether  draft-ietf-idr-sr-policy-nrp needs to be Normative 
c) Needs error handling section  
 
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
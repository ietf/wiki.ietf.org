---
title: Shepherd Review for draft-ietf-idr-bgp-ls-sr-policy-nrp
description: Review of bgp-ls-sr-policy-nrp
published: true
date: 2025-02-17T17:17:11.528Z
tags: 
editor: markdown
dateCreated: 2025-02-17T17:17:11.528Z
---

# Shepherd report: draft-ietf-idr-bgp-ls-sr-policy-nrp-01

## -01 review 
### email link: 

Status: WG draft, recently adopted (8/12/2024 upload)
WG LC: needs 2 implementations. 
Shepherd Summary: Editorial changes needed


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
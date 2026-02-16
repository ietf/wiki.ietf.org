---
title: BGP LS -  Draft checklists and Hints for Authors and Reviewers 
description: BGP-LS Review Checklist 
published: true
date: 2026-02-02T22:29:22.976Z
tags: 
editor: markdown
dateCreated: 2026-01-19T16:27:00.073Z
---

# BGP LS Checklists for Authors and Reviewers

## Current Documents 


## Checklist for all BGP

1. Does it refer to the latest BGP-LS specification [RFC9552](https://datatracker.ietf.org/doc/rfc9552/)

2. Does it define a new type witin the BGP-LS NLRI? 

If so, please define the format for the NLRI type with:
- 2.1 name
- 2.2 description 
- 2.3 Value for type 
- 2.4 format of the NLRI 
The format is a drawing followed by a description of values for the fields in the NLRI. 
- 2.6 valid subTLVs  - give a list of all valid SubTLVs. 
      For the list indidate which SubTLVs are mandatory and which subTLVs are optional. 


3. Does it contain sections that clearly define new subTLVs for 
- Node Advertisements (NLRI)
- Link Advertisements 
- Prefix Advertisements 

Each SubTLV should have: 
- 3.1 Name 
- 3.2 Description
- 3.3 Code 
(if assigned, then value.  If not assigned, TBD) 
- 3.4 format of SubTLV -
The format is a drawing followed by a description of values for the fields in the NLRI

4. Discussion on Topology reconstruction (optional) 

This provides a place to discuss how BGP-LS is used to capture and pass a topology in OSPF, ISIS, or BGP. 

5. Security Considerations. 

The security considerations should consider: 
- whether this is deployed within a single AS, A confederation, or a "walled garden" within an AS or a group of ASes. 

6. IANA Considerations - for values assigned by IANA

7. Manageability issues (optioknal) 

If there specific manageability issues, it is good to include that section. 


### Additional Checklists for BGP LS Drafts on BGP SR drafts

1. Does it use RFC9857 

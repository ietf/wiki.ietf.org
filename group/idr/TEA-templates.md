---
title: Templates for Drafts specifing Tunnel Encapsulation Attribute additions (new Tunnels or SubTLVs ) 
description: TEA Templates (tunnels and subTLVs)  
published: true
date: 2024-12-13T14:08:52.300Z
tags: 
editor: markdown
dateCreated: 2024-12-06T13:02:07.632Z
---

# Tunnel Encapsulation Attribute Templates 

Tunnel Encapsulation Attribute [RFC9012](https://datatracker.ietf.org/doc/rfc9012/)
defines a BGP attribute that passes tunnel information. 
BGP passes this attribute to associate prefixes with a 
particular tunnel.  

Authors of BESS and IDR draft have begun to expand on the 
tunnel types and Sub-TLVs specifed in [RFC9012](https://datatracker.ietf.org/doc/rfc9012/).  

The IDR chairs provide these templates for authors to 
help them provide the necessary information for tunnels or 
sub-TLVs. 

## New Tunnel Types 
[Tunnel-type template](https://wiki.ietf.org/e/en/group/idr/TEA-templates/Tunnel)

## New SubTLV for Tunnel Encaps TLV
[Subtlv-template](https://wiki.ietf.org/e/en/group/idr/TEA-templates/SubTLV)


### New tunnel type in that also uses PMSI tunnel Attribute 
[PMSI Tunnel Type Considerations](https://wiki.ietf.org/e/en/group/idr/TEA-templates/PMSI-TEA)

[RFC9012](https://datatracker.ietf.org/doc/rfc9012/) states that the consideration of 
"P-Multicast Service Interface Tunnel" (PMSI Tunnel) attribute. 


**Do Not:** Assume that means the IDR and BESS Chairs do not have strong ideas on 
how this should go.  Here's a few questions that must be answered in the Template
about  

1) When is the PMSI tunnel Attribute valid to attach by itself 
2) When is it valid to attach both the PMSI tunnel Attribute + the Tunnel-Encapsulation? 
   2a) In the case that it is valid to attach both PMSI + TEA, 
       what happens if either is malformed? 
   2b) In the case that it is required attach both, what happens if either the PMSI or TEA is missing? 
  
  Note: Malformed implies syntax checking.  
   
3) Whent it is invalid to attach both PMSI and TEA, what is the error procedure if
     both are attached? 

4) Is there content checking of the TEA that is impacted by PMSI? 
   
   Content checking assumes that the TEA and PMSI attributes are valid 
   and some content must be check prior to installing the tunnel and 
   multicast tunnel that the two attributes require. 

 
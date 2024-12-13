---
title: PMSI Tunnel Considerations for  New Tunnel Types for Tunnel Encapsulation Attribute 
description: PMSI Considerations for TEA Tunnels 
published: true
date: 2024-12-13T13:15:27.367Z
tags: 
editor: markdown
dateCreated: 2024-12-13T13:14:45.182Z
---

# Considerations for TEA and PMSI Attribute Interactions  

The Tunnel Encapsulation RFC [RFC9012](https://datatracker.ietf.org/doc/rfc9012/) 
states that the consideration of  "P-Multicast Service Interface Tunnel" (PMSI Tunnel) attribute
are out of scope. 

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

 
 

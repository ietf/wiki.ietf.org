---
title: Templates for Drafts specifing Tunnel Encapsulation Attribute additions (new Tunnels or SubTLVs ) 
description: TEA Templates (tunnels and subTLVs)  
published: true
date: 2026-01-28T17:07:12.855Z
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

Authors wishing to quickly pass the IDR review of 
SR drafts that use tunnel enchapsulation should review the 
checklist below:

- [Tunnel TLV (tunnel types) Checklist](/group/idr/TEA-Checklist/Tunnel-TLV)
- [Tunnel-subTLV Checklist](/group/idr/TE-Checklist/Tunnel-SubTLV)
- [Tunnel-SubSubTLV Checklist](/group/idr/TE-Checklist/Tunnel-SubSubTLV)
- [Tunnel-PMSI Checklist](/group/idr/TE-Checklist/PMSI)

The IDR chairs provide these templates for authors to 
help them provide the necessary information for tunnels or 
sub-TLVs. 

## New Tunnel Types 
[Tunnel-type (TLV) template](/group/idr/TEA-templates/Tunnel)

## New SubTLV for Tunnel Encaps TLV
[Subtlv-template](/group/idr/TEA-templates/SubTLV)

## New Sub-SubTLV for Tunnel Encaps SubTLV 
[SubSub-Template](group/idr/TEA-templates/SubSubTLV)


### New tunnel type in that also uses PMSI tunnel Attribute 
[PMSI Tunnel Type Considerations](/group/idr/TEA-templates/PMSI-TEA)

## Additional things to consider
- Route Selection Criteria - related to TEA 

## Upcoming Reviews of TEA drafts 
- For BGP-LS or SR-Reviews see the reviews on the IDR wiki (add link)
- Non BGP reviews are: 
- [draft-ietf-bess-multicast-controler 
- [draft-ietf-bess-evpn-geneve] 
 
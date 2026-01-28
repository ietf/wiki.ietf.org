---
title: Checklist for authors of drafts with PMSI and TEA (RFC 9012) 
description: Checklist PMSI and TEA (RFC 9012) 
published: true
date: 2026-01-28T17:15:41.838Z
tags: 
editor: markdown
dateCreated: 2026-01-28T17:15:41.838Z
---

# Author Checklist for drafts with PMSI and TEA 

The Tunnel Encapsulation [RFC9012](https://datatracker.ietf.org/doc/rfc9012) states that the consideration of "P-Multicast Service Interface Tunnel" (PMSI Tunnel) attribute
are out of scope.

Do Not: Assume that means the IDR and BESS Chairs do not have strong ideas on
how this should go. Here's a few questions that must be answered in the Template
about

## Questions to consider as a check list 

1. When is the PMSI tunnel Attribute valid to attach by itself
2. When is it valid to attach both the PMSI tunnel Attribute + the Tunnel-Encapsulation?

- 2.a) In the case that it is valid to attach both PMSI + TEA, what happens if either is malformed?  (Malformed implies syntax checking)

- 2.b) In the case that it is required attach both, what happens if either the PMSI or TEA is missing?

3. When is it invalid to attach both PMSI and TEA? 
- 3.1: If it is invalid, what is the error procedure if both are attached?
- 3.2: If the TEA is not supposed to be attached, can it be ignored? 

4. If it is valid to have PMSI and TEA, is there content checking of the TEA that is impacted by PMSI? 

Content checking assumes that the TEA and PMSI attributes are valid
and some content must be check prior to installing the tunnel and
multicast tunnel that the two attributes require.

### Need feedback on list

This checklist is a beginning.  Please give feedback on its validity. 
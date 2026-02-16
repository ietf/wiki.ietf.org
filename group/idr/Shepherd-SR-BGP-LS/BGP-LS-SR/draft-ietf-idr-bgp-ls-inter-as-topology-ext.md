---
title: draft-ietf-idr-bgp-ls-inter-as-topology-ext Shepherd Reviews 
description: Shepherd for draft-ietf-idr-bgpl-s-inter-as-topology-ext
published: true
date: 2026-01-06T00:32:40.708Z
tags: 
editor: markdown
dateCreated: 2026-01-06T00:11:12.999Z
---

# Shepherd reviews for 
# draft-ietf-idr-bgpls-inter-as-topology-ext

Note: I am going to ask the authors to change draft name to:
draft-ietf-idr-bgp-ls-inter-as-topology-ext 

**Version:** -18 
**status:** - Waiting for WG LC, -19 needed prior to WG LC 
**next steps**: 
1. Aijun publishes -19 with changed security section
2. Aijun double checks the implementation page at:
https://wiki.ietf.org/group/idr/implementations/draft-ietf-idr-bgpls-inter-as-topology-ext

2. IDR chair will request early directorate review 
3. IDR chair will request IDR Chair review 
4. If IDR Chair Review has no commets, we'll start WG LC on 1/9/2026
   If IDR Chair Review has comments, then I'll post the comments to
   the shepherd review page. 

## Review -18 

### Technical issues 
#### Technical issue #1 
Security section needs to consider that the 
Stub Link, and the characteristics of the Stub link
are critical information. 

Suggested text at end of Security section. 

old text:/
   Using the passive-interface features or configuring the
   Traffic Engineering (TE) parameters on the interconnect links will
   not provide the real-time Information for this single Administrative
   Domain./ 
   
new text:/
   The single Administrative domain consisting of two AS passing 
   information about the Stub-link characteristics does not 
   cause problems within a "walled garden".  However, the 
   Stub-link NLRI and characteristics (Link/local identifier, 
   IPv4 Interface Address, IPv4 Neighbor Address, 
   IPv6 interface Address, IPv6 Neighbor Address, 
   Multi-topology Identifier, Remote-AS Number, 
   IPv4 Remote ASBRI ID, and IPv6 Remote ASBR ID) 
   are critical information to a network.  
   As such, operators should handle this critical 
   information in a way that restricts it to the 
   walled garden. / 


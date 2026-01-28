---
title: RFC9012 - Tunnel Encapsulation Checklist for TLV specifying type  
description: RFC9012 Top TLV checklist 
published: true
date: 2026-01-28T14:21:56.662Z
tags: 
editor: markdown
dateCreated: 2026-01-19T16:38:28.715Z
---

# Top level TLV for Tunnel Encapsulation Attribute 
## [RFC9012](https://datatracker.ietf.org/doc/rfc9012/)
## What needs to be specified 

1. Name - Name of Top level TLV 

2. Code (value for Tunnel TLV) 

3. Description

4. List of all NLRIs this Tunnel TLV can be attached to 

5. List of all SubTLVs that can be passed in in this Tunnel TLV (optional and mandatory).

6. List of all SubTLVs that are not supported by this Tunnel TLV

7. A validation procedures that include 
- End Point validation 
- Validation of sematics (either by BGP or another process (e.g. SRPM)) 

8. Error handling procedures that include
- Malformed SubTLVs
- Malformed TLVs 
- Multiple TLVs of the same type 
- Multiple SubTLVs of the same type  

9. A security section with specific comments regarding tunnel,

10. A management section that includes comments on how the tunnel will be managed.

## Formats 

The BGP Tunnel Encapsulation Templates give sample formats. 
These formats will help readers quickly review your document. 
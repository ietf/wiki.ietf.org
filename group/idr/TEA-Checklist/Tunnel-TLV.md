---
title: RFC9012 - Tunnel Encapsulation Checklist for TLV specifying type  
description: RFC9012 Top TLV checklist 
published: true
date: 2026-01-19T16:38:28.715Z
tags: 
editor: markdown
dateCreated: 2026-01-19T16:38:28.715Z
---

# Top level TLV 
## What needs to be specified 

1. Name
2. Code
3. Description
4. List of all SubTLVs that can be passed in in this Tunnel TLV (optional and mandatory).
5. List of all SubTLVs that are not supported by this Tunnel TLV
6. A validation procedures
7. Error handling procedures 
8. Multiple Tunnel interactions 
- What happnens if 2 or more of this top TLVs occur in the same BGP Attribute.  
- If multiple top level TLVs can occur, is there any interaction in values specified within the two TLVs. 
- What happens if 2 or more of the SubTLVs specified by this document occur within this TLV 

9. A security section with specific comments regarding tunnel,
10. A management section that includes comments on how the tunnel will be managed.
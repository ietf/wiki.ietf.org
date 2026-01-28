---
title: Checklist for Authors of SubTLVs of TLV tunnel types in BGP Tunnel Encapsulation Attribute (RFC9012] 
description: Checklist SubTLVs for RFC9012 TLVs 
published: true
date: 2026-01-28T16:19:34.328Z
tags: 
editor: markdown
dateCreated: 2026-01-28T16:19:34.328Z
---

# RFC9012 SubTLV checklist 

A new SubTLV needs the following information:

1. Title
2. Description 
3. Type Code

4. Encoding of SubTLV 
 
4.1 diagram of value byte
4.2 Description of each field in Encoding
4.3 Error handling per field


5. What tunnel types this subTLV can go in.


6. Does this subTLV play a part in validation of the TLV

Validation should include sections on: 

6.1 Multiple SubTLVs of the same type in the same Tunnel TLV 
6.2 Multiple SubTLVs of the same type in another Tunnel TLV with the same tunnel type 
6.3 SubTLVs of the same type in two different tunnel types (top-level tunnel TLV) 

7. A security section should include comments on SubTLV Critical information 

The security section should include a discussion on any critical information 
carried in a new SubTLV defined in this document. If existing SubTLVs that 
carry critical information are defined in another document, that document 
should be referred to. 

8. A management section 

A management section that includes comments on how the tunnel will be managed.
The management section can optionally include information regarding management of a specific SubTLV (reading or setting configuration).  

It is helpful for items 1-6 be clearly laid out in one section for the TLV. 

If new sub-TLVs are defined, these new SubTLVs should be included in the list of the SubTLVs on a separate line to aid readability. 

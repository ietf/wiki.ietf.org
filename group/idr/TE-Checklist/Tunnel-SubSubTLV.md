---
title: SubSubTLV Checklist for RFC9012 Tunnel encapsulation TLVs  
description: Checklist SubSubTLV 
published: true
date: 2026-01-28T17:04:48.974Z
tags: 
editor: markdown
dateCreated: 2026-01-28T17:04:48.974Z
---


## SubSubTLV 

A new SubSubTLV needs the following information:

1. Title
2. Description
3. Type Code
4. Encoding of SubSubTLV
4.1 diagram of value byte
4.2 Description of each field in Encoding
4.3 Error handling per field

5. What SubTLVs this SubSubTLV can go in.

This section has three parts: mandatory SubTLVs, optional SubTLVs, and not-supported SubTLVs. 

6. Does this SubSubTLV play a part in validation of the SubTLV 

Validation should include sections on:

6.1 Multiple SubSubTLVs of the same type in the same SubTLV 


7. Security Section and SubSubTLV information 
A security section should include comments on SubSubTLV Critical information
The security section should include a discussion on any critical information
carried in a new SubSubTLV defined in this document. If existing SubSubTLVs that
carry critical information are defined in another document, that document
should be referred to.

8. A management section
A management section that includes comments on how the tunnel will be managed.
The management section can optionally include information regarding management of a specific SubSubTLV (reading or setting configuration).

It is helpful for items 1-6 be clearly laid out in one section for the TLV.

If new SubSubTLVs are defined, these new SubSubTLVs should be included in the list of the SubTLVs on a separate line to aid readability.
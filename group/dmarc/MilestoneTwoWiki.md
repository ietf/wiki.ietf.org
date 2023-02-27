---
title: MilestoneTwoWiki
description: 
published: true
date: 2023-02-27T03:27:56.764Z
tags: dmarc
editor: markdown
dateCreated: 2022-08-10T20:55:57.314Z
---



# Milestone Two Wiki

The second DMARC WG milestone will see the publication of a document describing [DMARC interoperability issues with indirect email flows](https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability) plus possible methods to address issues.

## DMARC Interoperability Issues With Indirect Mail Flows 

The WG produced draft-ietf-dmarc-interoperability. The rest of this document describes proposed methods to address specific interoperability issues.

## Issues and Proposed Methods to Address Issues 

This listing mirrors the table of contents from the interoperability document. Issues are annotated with links to proposed solutions/methods, as proposed solutions/methods can address more than one issue. 

### [Causes of Interoperability Issues] 

 - Identifier Alignment
     -  DKIM Identifier(s)
     -   SPF Identifier(s)
     -   Multiple RFC5322.From Addresses 
 -   Message Forwarding ARC
 -   Message Modification 

### Internet Mail Architecture, DMARC, and Indirect Email Flows

  -   Message Handling System
      -  Message Submission Agents
      -  Message Transfer Agents
          -  Message Encoding
          -  Header Standardization
          -  Content Validation 
      -  Message Delivery Agents 
 -   Mediators
      -  Alias
      -  ReSenders
      -  Mailing Lists ARC
          -  Mailing List Operational Effects 
      -  Gateways
      -  Boundary Filters 
 -   Combinations 

### Possible Mitigations of Interoperability Issues 

  -  Mitigations in Current Use
      -  Mitigations for Senders
         -   Identifier Alignment
          -  Message Modification 
  -   Mitigations for Receivers
        -    Identifier Alignment
        -    Policy Override 
  -    Mitigations for ReSenders
         -   Changes to the RFC5322.From
          -  Avoiding Message Modification
          -  Mailing Lists 
  -  Proposed and In-Progress Mitigations
       - Getting More Radical: Requiring New Communication Paths Between MUAs 


## Proposed Methods/solutions 

###  ARC 

Add ARC details here.

### X-Original-From header

The X-Original-From header is being used in various contexts.  [This page attempts to capture how this header is being used, starting how it is used today to how it is being used to deal with DMARC-related issues.](/group/dmarc/XOriginalFrom)

### Two-party signing 

See various proposals:

* DKIM conditional signatures, draft-levine-dkim-conditional

*  Third party authorization, draft-otis-tpa-label

### Original-Authorization-Results header

Mentioned in some early drafts.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-06-14. It was migrated from the old Trac wiki on 2023-02-26.*
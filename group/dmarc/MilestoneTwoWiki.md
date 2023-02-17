---
title: MilestoneTwoWiki
description: 
published: true
date: 2022-11-29T19:36:26.201Z
tags: dmarc
editor: markdown
dateCreated: 2022-08-10T20:55:57.314Z
---

# Milestone Two Wiki

The second DMARC WG milestone will see the publication of a document describing [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability DMARC interoperability issues with indirect email flows] plus possible methods to address issues.

## DMARC Interoperability Issues With Indirect Mail Flows 

The WG produced [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability draft-ietf-dmarc-interoperability]. The rest of this document describes proposed methods to address specific interoperability issues.

## Issues and Proposed Methods to Address Issues 

This listing mirrors the table of contents from the [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability interoperability document]. Issues are annotated with [#methods links to proposed solutions/methods], as proposed solutions/methods can address more than one issue. 

### [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2 Causes of Interoperability Issues] 

 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2.1 Identifier Alignment]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2.1.1 DKIM Identifier(s)]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2.1.2 SPF Identifier(s)]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2.1.3 Multiple RFC5322.From Addresses]
 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2.2 Message Forwarding] '''''[#arc ARC]'''''
 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-2.3 Message Modification]

### [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3 Internet Mail Architecture, DMARC, and Indirect Email Flows] 

 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1 Message Handling System]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1.1 Message Submission Agents]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1.2 Message Transfer Agents]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1.2.1 Message Encoding]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1.2.2 Header Standardization]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1.2.3 Content Validation]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.1.3 Message Delivery Agents]
 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2 Mediators]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2.1 Alias]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2.2 ReSenders]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2.3 Mailing Lists] '''''[#arc ARC]'''''
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2.3.1 Mailing List Operational Effects]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2.4 Gateways]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.2.5 Boundary Filters]
 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-3.3 Combinations]

=== [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4 Possible Mitigations of Interoperability Issues] ===

 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1 Mitigations in Current Use]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.1 Mitigations for Senders]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.1.1 Identifier Alignment]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.1.2 Message Modification]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.2 Mitigations for Receivers]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.2.1 Identifier Alignment]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.2.2 Policy Override]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.3 Mitigations for ReSenders]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.3.1 Changes to the RFC5322.From]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.3.2 Avoiding Message Modification]
     * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.1.3.3 Mailing Lists]
 * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.2 Proposed and In-Progress Mitigations]
   * [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability#section-4.2.1 Getting More Radical: Requiring New Communication Paths Between MUAs]


## [=#methods] Proposed Methods/solutions 

### [=#arc ARC] 

Add ARC details here.

### [=#x-orig-from X-Original-From header] 

The X-Original-From header is being used in various contexts.  [wiki:XOriginalFrom This page attempts to capture how this header is being used, starting how it is used today to how it is being used to deal with DMARC-related issues.]

### [=#two-party-signing Two-party signing] 

See various proposals:

* DKIM conditional signatures, draft-levine-dkim-conditional

*  Third party authorization, draft-otis-tpa-label

### [=#oar Original-Authorization-Results header] 

Mentioned in some early drafts.
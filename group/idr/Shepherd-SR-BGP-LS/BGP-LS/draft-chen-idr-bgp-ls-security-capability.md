---
title: Shepherd Reviews for draft-chen-idr-bgp-ls-security-capability
description: Shepherd draft-chen-idr-bgp-ls-security-capability
published: true
date: 2025-02-26T03:00:45.736Z
tags: 
editor: markdown
dateCreated: 2025-02-22T18:19:02.986Z
---

# Shepherd reviews for draft-chen-idr-bgp-ls-security-capability

## overview 

**draft:** [draft-chen-idr-bgp-ls-security-capability](https://datatracker.ietf.org/doc/draft-chen-idr-bgp-ls-security-capability)
**type:** Proposed standard 
**WG status:** Individual draft 
**current version:** 04 
**review email:** https://mailarchive.ietf.org/arch/msg/idr/gUAvOQnTXt1hZD1WASzn3mDUkFo/


## Review -04 

Comment: The changes in abstract from -03 do not address technical Issue-1. 
Also you need to address the other issues. 

## Review -03 
**draft:** [draft-chen-idr-bgp-ls-security-capability](https://datatracker.ietf.org/doc/html/draft-chen-idr-bgp-ls-security-capability-03)
**type:** Proposed standard 
**WG status:** Individual draft 
**current version:** 03
**review email:** https://mailarchive.ietf.org/arch/msg/idr/gUAvOQnTXt1hZD1WASzn3mDUkFo/


### Technical Issues 

#### Issue-1: Please reduce your abstract to 2 paragraphs.
 
#### Issue-2: introduction 

Please reduce the text to point specifically about this technology addition.  You can refer the reader to basic BGP-LS specifications [RFC9552] for a discussion of BGP-LS. 

#### Issue-3: Section 2.2

Please explain what benefit adding the Security capability attribute  for these features. Define which component does the security attribute processing (BGP or the BGP-LS application). 

 #### Issue-4: Keep this in mind for the text 
 
 Once you explain the mechanisms, then you must explain why it is needed for each place you want to add it. Please note, this must be proven from a security perspective.


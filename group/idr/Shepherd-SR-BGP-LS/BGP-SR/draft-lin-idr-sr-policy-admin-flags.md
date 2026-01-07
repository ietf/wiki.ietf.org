---
title: Shepherd Review for draft-lin-idr-sr-policy-admin-flags
description: draft-lin-idr-sr-policy-admin-flags Shepherd Review
published: true
date: 2026-01-07T00:16:14.676Z
tags: 
editor: markdown
dateCreated: 2026-01-07T00:09:25.636Z
---


# draft-lin-idr-sr-policy-admin-flags Shepherd review 

## Summary
draft: [draft-lin-idr-sr-policy-admin-flags](https://datatracker.ietf.org/doc/draft-lin-idr-sr-policy-admin-flags/)
version: -03
status: Needs -04 prior to adoption 

## Review -03 

### Technical issues

#### Technical Issue -1 - define rest of flag field

The rest of the flag field should be defined as reserved. 
It should be ignored upon reception, and 
zero when sent. 

#### Technical Issue -2 - IANA TBD format 

IANA TBD format in section 2.1 should replace 
"TBD" with "TBD1" to be clear. 

IANA TBD format in section 2.2 should replace 
"TBD" with "TBD2". 

#### Technical Issue -3 - Security section 

This document does expose critical information about
the administrative status regarding SR-Policy candidate routes. 
This information is critical information and the 
passage of this information should be treated with care. 
See [RFC9830] for an example of critical information text. 

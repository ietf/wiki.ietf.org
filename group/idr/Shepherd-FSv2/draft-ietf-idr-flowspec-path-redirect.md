---
title: Shepherd Report for draft-ietf-idr-flowspec-path-redirect
description: Shepherds report 
published: true
date: 2026-07-13T13:56:58.234Z
tags: 
editor: markdown
dateCreated: 2026-07-13T13:43:08.936Z
---

# Shepherd report
# draft-ietf-idr-flowspec-path-redirect 

## Current status 
version: -13 
next steps: 
1. Revise draft to address shepherd's report
2. provide an implementation report 


## Version -13 
### Technical errors 
#### Technical Error 1 - fix IANA Section 
The IANA section has define a sub-registry. 
This sub-registry needs to be in IANA format.  All the values specified in section 4 need to be added as initial values. 

#### Technical Error 2 - Clarify text in section 3.1 
Why are two values used (1 and 2).  I suspect one is MPLS-SR and another is SRv6. 
However, the text is unclear. 

>    *  1 or 2 (Node ID's): This type can be used when the goal is to use
>       MPLS based Segment Routing towards a remote destination.  In this
>       use-case scenario the flowspec rule contains a SR (Segment
>       Routing) node SID to steer traffic towards.
{.is-info}




### implementation report 
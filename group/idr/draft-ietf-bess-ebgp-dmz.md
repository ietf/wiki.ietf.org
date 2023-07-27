---
title: IDR Review of draft-ietf-bess-ebgp-dmz-03
description: IDR Chair review of draft-ietf-bess-ebgp-dmz-03
published: true
date: 2023-07-27T10:30:55.132Z
tags: 
editor: markdown
dateCreated: 2023-07-27T10:30:55.132Z
---

# draft-ietf-bess-ebgp-dmz-03 IDR Chair review

### Reviewer: Susan Hares

Issues with this draft: 

Content: 
1.  There are four drafts dealing with link bandwidth for a BGP router passed in communities or attribute outside of BGP-LS reporting. 
a) draft-ietf-idr-link-bandwidth (a non-transitive extended community attribute)
b) draft-ietf-bess-ebgp-dmz-03 (a transitive extended community)
c) draft-ietf-entropy-label (router capability attribute) 

There is work underway by the authors to harmonize the transitive and non-transitive use of the community.  
Section 6 of draft-ietf-bess-ebgp-dmz-03 indicates a need for a refresh of draft-ietf-idr-link-bandwidth. 

The IDR chairs suggest this work continues prior to publishing the use case found in this draft.  

As part of this work, the authors should consider:
a) whether the description is link, router, or AS bandwidth. 
b) the ramifications of passing this information as
  extended community or an attribute. 
  
c) how this relates to the BGP-LS definitions. 

2.) Use cases 

The two use cases 



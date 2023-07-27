---
title: IDR Review of draft-ietf-bess-ebgp-dmz-03
description: IDR Chair review of draft-ietf-bess-ebgp-dmz-03
published: true
date: 2023-07-27T11:01:40.089Z
tags: 
editor: markdown
dateCreated: 2023-07-27T10:30:55.132Z
---

# draft-ietf-bess-ebgp-dmz-03 IDR Chair review

#### Reviewer: Susan Hares

### Issues with this draft: 

#### 1. Protocol Content 
Four drafts deal with link bandwidth for a BGP router passed in an extended communities attribute or the entropy attribute outside of BGP-LS reporting. 
a) draft-ietf-idr-link-bandwidth (a non-transitive extended community attribute)
b) draft-ietf-bess-ebgp-dmz-03 (a transitive extended community)
c) draft-ietf-entropy-label (router capability attribute) 

Work is underway by the authors to harmonize the transitive and non-transitive use of the community.  
Section 6 of draft-ietf-bess-ebgp-dmz-03 indicates a need for a refresh of draft-ietf-idr-link-bandwidth. 

The IDR chairs suggest this work continues before publishing the use case found in this draft.  

As part of this work, the authors should consider:
a) whether the description is a link, router, or AS bandwidth. 
b) the ramifications of passing this information as
  extended community or an attribute, and   
c) how this relates to the BGP-LS definitions. 

#### 2. Use cases 

The draft presents the following use cases: 
a) large-scale data centers (RFC7938, section 6.3) unequally weighted ECMP, 
b) large-scale data centers (RFC79388) equally weighted ECMP, 
c) external community and top-down Load-balanced community, and 
d) no-conforming topologies. 

The descriptions of these cases provide a helpful summary of these use cases.  These descriptions help focus the discussions for protocol content. 

Additional value can be gained for the current protocol discussions by indicating the answers to the questions on protocol content.

Whether this 

#### 3. English text 

The English text has spelling errors, grammar errors, and portions that need to be clarified.  At this stage, the content needs to be considered before a final check of the text. 

Before reviewing the English text, the authors should use the commonly available tool "Grammarly" or an equivalent to check the text.     

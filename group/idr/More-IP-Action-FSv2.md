---
title: More IP Actions for FSv2 
description: Adding Actions to FSv2 beyond Basic FSv2 Actions 
published: true
date: 2024-04-19T12:54:26.814Z
tags: 
editor: markdown
dateCreated: 2024-04-19T12:54:26.814Z
---

## Design Team 3: More Actions for FSv2 

FSv1 found problems with undefined interactions between actions encoded as Extended Communities. 
FSv2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) allows for ordered actions using Wide Community. 

Some implementers desired both Extended-Community Actions with specific default order and defined interactions. A new Extended-Community will be expanded for FSv2.   

Other implementers want to be able to specify an order for actions.  The user specification of action ordering will not fit in the Extended Community, and so the Wide Community format (type 2, FSv2 actions) will be used.  

One key issues with Ordering of Actions is the action taken when an action does not successfully complete.  Potential recovery from a failed action are: ignore, continue, halt, roll-back. 

### Design Team Meetings 
**Design team:** Design Team 3 - More IP Actions for FSv2   
**Meetings before IETF-120:** 5/6 and 6/10 (Time 10-11:30am ET) 
**initial draft:**  draft-ietf-hares-fsv2-more-ip-actions 
**New drafts requested:** Any Drafts specifying actions for FSv1 or FSv2.  


**FSv1 Actions in addition to RFC8895 and RFC8896**
1. redirect to indirection id 
[draft-ietf-idr-path-redirect-12](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-path-redirect)
2. Redirect to IP 
[draft-ietf-idr-flowspec-redirect-ip](/group/idr/implementations/draft-ietf-idr-flowspec-redirect-ip)


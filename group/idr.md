---
title: IDR WG - Inter-Domain Routing
description: The IETF IDR working group (WG) advances the BGP protocol.
published: true
date: 2026-11-11T21:13:55.918Z
tags: 
editor: markdown
dateCreated: 2022-09-14T14:02:17.635Z
---

> This page is related to an active IETF Working Group.
{.is-success}
## Implementation Requirement

IDR generally requires at least two interoperable implementations of a draft before it is advanced to RFC. Our goals in doing this include gaining some level of document quality assurance (can an implementor, working from the spec, implement it interoperably?) but also gaining some level of protocol quality assurance, some assurance that the proposal is implementable in practice (most BGP implementations are large and have many moving parts that new proposals must integrate with). If, as a side-effect, fewer IDR RFCs go unimplimented, that's a benefit too. Of course, perfection is impossible and even with this requirement, mistakes will creep in. Exception cases may exist where the implementation requirement wouldn't advance these goals.

Implementation reports are published on our wiki (see below). Implementation reports should highlight aspects of the spec that have been implemented (for example, consider the sections and SHOULD/MUST/MAY/etc keywords as a matrix, with tickmarks to indicate compliance), aspects that have not been implemented (and why, if the answer would be interesting), what testing, interoperation, and deployment the implementation has seen, and any observations that the reporter deems interesting. Naturally, it should indicate the software release, organization, and individual filing the report.

Some drafts only deal with the BGP adminithe strative process (registry creation, 
Extended Community allocation, Templates for Tunnel Encapsulation.
Administrative drafts do not require implementations.  

If you have questions or concerns regarding the implementation requirement, please send questions to the IDR mailing list or the IDR chairs.

## Overall Working Group Status

To ease tracking of the high rate of churn of the status of working group documents, the IDR chairs are tracking a number of working group status items in [github](https://github.com/ietf-wg-idr/idr-chairs/blob/main/status.md).

The longer term intent is that the IETF wiki continues to be the primary location to track non-status work.

## Draft Status
[idr-draft-status](https://github.com/ietf-wg-idr/idr-chairs/blob/main/status.md) 
[Early Allocation Status](/group/idr/Early-Allocation-Status)
[Shepherd Reviews on SR and BGP-LS drafts](/group/idr/Shepherd-SR-BGP-LS)
[Flowspec - Code points (actions, filters) and shepherd reports](/group/idr/Shepherd-FSv2)
[Features for BGP Yang Models](/group/idr/BGP-Model-Features)
[Deprecating Drafts](/group/idr/draft-deprecation)
[Experimental RFCs and Drafts](/group/idr/Experimental-RFC-WGdoc)

## Draft Implementation status

[Protocol implementations Reports](/group/idr/implementations) 
[Administrative drafts](/group/idr/BGP-Admin-drafts)

## Checklists and Templates for Authors and Reviewers  
[Tunnel Encapsulation Checklists and Templates](/group/idr/TEA-templates) -
[BGP LS Checklists](/group/idr/BGP-LS-Checklists) 

## Feedback to other WGs 
[Feedback for BESS drafts](/group/idr/Feedback-to-BESS)
[Feedback for PCE drafts](/group/idr/Feedback-to-PCE)
[Feedback for Bier drafts](/group/idr/Feedback-to-Bier)
[Feedback for SIDROPS drafts](/group/idr/Feedback-to-SIDROPS)
[Feedback for RTGWG drafts](/group/idr/Feedback-to-RTGWG)
[Feedback on Yang Models](/group/idr/Feedback-Yang-Models)

## Past Interims, Chair Chats and design teams
### 2026 
- [Feb 9, 2026](datatracker.ietf.org/meeting/interim-2026-idr-01/session/idr) 
- [May 11, 2026](datatracker.ietf.org/meeting/interim-2026-idr-02/session/idr)
- [October 26, 2026](datatracker.ietf.org/meeting/interim-2026-idr-03/session/idr)

### Interim 2025 
#### CAR/CT interims and Discussions
[CAR WG LC](/group/idr/CAR-WGLC)
[CT WG LC](/group/idr/CT-WGLC)
[CAR-CT Adoption call (7/6/2022 to 7/27/2022)](/group/idr/CAR-CTAdoption)

#### (Closed) FSv2 Design teams from 2025 -
[Background on Open Design Teams](/group/idr/FSv2-DTeam)
[Design Team 1: Basic IP FSv2](/group/idr/Basic-IP-FSv2)
[Design Team 2: More IP Filters for FSv2](/group/idr/More-IP-Filter-FSv2)
[Design Team 3: More IP Actions for FSv2](/group/idr/More-IP-Action-FSv2)
[Design Team 4: Non-IP filters and actions FSv2](/group/idr/Non-IP-FSv2)

### Notes on IDR Interims before 2021-2025 
[interims 2021-2026](/group/idr/Interims/Pre-2026)

## Useful information

[Checklist for writing a BGP-related draft](/group/idr/ChecklistforWriting)
[Checklist for presenting at an IDR meeting](/group/idr/ChecklistforPresenting)
[Commentary on different RFCs](/group/idr/CommentaryonRFCs)
[De facto BGP features needing documentation](/group/idr/DeFactoBGPFeatures)
[Glossary](/group/idr/Glossary)

[idr-draft-status](idr-draft-status) - deprecated see top of page 

Attachments:
[draft-dunbar-idr-sdwan-edge-discovery-00-v12.pdf](/draft-dunbar-idr-sdwan-edge-discovery-00-v12.pdf)
[options_to_move_forward_-sdwan-port-safi-proposal.pdf](/options_to_move_forward_-sdwan-port-safi-proposal.pdf)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-06-01. It was migrated from the old Trac wiki on 2023-01-25.*
---
title: Signaling Design Team Charter
description: 
published: true
date: 2023-01-30T22:27:42.386Z
tags: 
editor: markdown
dateCreated: 2023-01-30T22:27:37.592Z
---

# Anima Signaling Design Team: Charter and Goals 
## Charter (working draft)
The Anima WG charter states a requirement for discovery and negotiation mechanisms to enable closed-loop interaction beween autonomic nodes. It also states the goal of developing one or more protocol specifications (or extensions to existing protocols) to achieve these goals. There is an existing draft requirements analysis, whose main points include

- support for any type of network objective parameter;
- discovery must support any topology and bootstrap scenario;
- synchronize parameters with other nodes individually or by flooding;
- negotiate parameters with other nodes;
- always secure;

A simple TLV format is proposed for the protocol design. Binary or name-based discovery are proposed as alternative discovery approaches.

The purpose of the design team is to analyse these issues and recommend a combined approach to the working group, preferably in the form of one draft or a small set of coordinated drafts. The proposed approach should be suitable for use by the Autonomic Control Plane, and for other use cases including those listed in the Anima WG charter.

In preparing the recommendation, the design team will verify and update the existing requirements and understand the relevant use cases. However, documenting and solving use cases is out of scope for the design team. The design team is encouraged to develop protocol walkthroughs and an abstract API as aids to understanding. The design team is not itself expected to produce code, but ease of implementation is an important consideration.

The draft(s) should be delivered by the July 2015 IETF (2015-07-06 cutoff date).

## Initial Goals
- Validate and update the existing list of requirements (http://tools.ietf.org/html/draft-carpenter-anima-gdn-protocol#section-2) against bootstrap and ACP drafts (and optionally against other use case validation drafts). Target date: end May.
- Recommend how the other milestone components of ANIMA (bootstrap, ACP, validation drafts) should use the signaling protocol(s). As a side-effect, critique the proposal on the table (https://tools.ietf.org/html/draft-carpenter-anima-gdn-protocol#section-3). Target date: mid June.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-05-11. It was migrated from the old Trac wiki on 2023-01-30.*
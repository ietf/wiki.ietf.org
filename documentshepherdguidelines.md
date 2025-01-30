---
title: IRTF Document Shepherd Guidelines
description: 
published: true
date: 2025-01-30T16:52:10.918Z
tags: 
editor: markdown
dateCreated: 2025-01-30T16:52:10.918Z
---

# IRTF Document Shepherd Guidelines

Document shepherds are responsible for assisting in the movement of a research group document through the publication process once the RG has determined that the document is ready for publication.  The document shepherd process for the IETF is described in [RFC 4850](https://datatracker.ietf.org/doc/rfc4858/); ours is substantially similar but not as formal.  This text provides guidance only, and should not be treated as normative.

RG chairs are responsible for choosing a document shepherd and may opt to take on that role themselves, but in any event the shepherd should be someone who is familiar with the history of the document's progress in the RG and who has subject matter expertise in the area covered by the assigned document.

The shepherding process includes the following steps:
- produce a document shepherd writeup,
- verify that any IPR claims relevant to the document have been disclosed through the IETF IPR disclosure [process](https://datatracker.ietf.org/ipr/) 
- track and facilitate the IRTF last call, and make sure that authors respond to feedback from the community
- track requests and comments from the RFC Editor and IANA, and make sure that they are responded to.

The document shepherd writeup is for the benefit of the IRTF chair and the RFC Series Editor, and may also be reviewed by members of the IRSG.  The writeup should include:
- the name of the document shepherd,
- since IRTF documents are not required to be consensus products, a few words on how the decision was made to publish,
- a description of whether or not there was a research group last call, and how comments and other feedback were handled,
- whether or not any participant has indicated an intention to appeal publication of the document, or has other strong objections
- a note on whether or not the shepherd believes the document needs additional review from someone with expertise outside the focus of the RG (for example, security, operations, etc),
- whether or not the [ID nits checker](https://github.com/ietf-tools/idnits?tab=readme-ov-file) has identified any formal problems with the document, or whether or not there are any other formal issues (miscategorization of references, for example),
- whether or not the shepherd has verified that sections of the document written in a formal language (YANG data models, JSON, etc) pass a validation checker,
- the status of any IPR claims on the content of the document, along with a summary of any discussion of IPR claims (for example, terms of use),
- [ not clear if publication announcement text is appropriate here ]

Once the writeup is complete, it should be sent to the IRTF chair and entered in the datatracker page for the draft as a "COMMENT."

The shepherd should track all feedback on the document and follow-up to ensure that issues that have been raised are resolved.  This often means iterating with the document's editors and providing gentle nudges to respond.  It may be helpful to maintain a list of each comment and how it was resolved.  In the event that an editor/author is not responsive it is the shepherd's responsibility to resolve an issue, working with the RG, the RG chairs, and the individual who raised the issue.  This process continues to iterate as the document moves through the publication process.

The shepherd is also responsible for tracking IANA actions where appropriate, and ensuring that any required actions are performed.
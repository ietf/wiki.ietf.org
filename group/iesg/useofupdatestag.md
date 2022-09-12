---
title: Use of Updates Tag
description: 
published: true
date: 2022-09-07T14:17:49.556Z
tags: iesg
editor: markdown
dateCreated: 2022-09-07T14:17:45.714Z
---

# Use of Updates Tag
Proposed IESG Statement on the use of the “Updates” header:

There has been considerable confusion among the IETF community about the formal meaning of the “Updates” / "Updated by" relationship in IETF stream RFCs. The “Updates” header has been historically used for number of reasons of various strength. For example, the “Updates” header may be used to indicate critical normative updates (i.e. bug fixes), optional extensions, and even “additional information”.

The IESG intends these headers to be used to inform readers of an updated RFC that they need to be aware of the RFC that updates it. The headers have no formal meaning beyond that. In particular, the headers do not, by themselves, imply a normative change to the updated RFC, nor do they, by themselves, imply that implementers must implement the updating RFC to continue to comply with the updated one. 

The specific reasons that a given RFC updates another should be described in the abstract and body of the new RFC. The level of detail may differ between the abstract and the body; typically an abstract should contain enough detail to help readers decide if they need to read the rest of the RFC. The body should contain enough detail for readers to fully understand the nature of the update.

The importance of including an “Updates” header depends on the nature of the update. Normative updates that do not use a known extension point should always include an “Updates” header. Extensions that do use known extension points do not typically need to include the “Updates” header, but may in cases where it’s important to make the extension known to readers of the original RFC. Other uses of “Updates” may be appropriate when it’s important for readers to know about them; for example a new RFC may expand security or operational considerations in a way that is not normative, but still important.

RFCs that fully replace other RFCs should typically use the “Obsoletes” header rather than the “Updates” header. Typically the “Updates” header should be used to flag update to published RFCs; it is not appropriate to “Update” an Internet-Draft. 
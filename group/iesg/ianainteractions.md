---
title: IANA and Internet Draft processing
description: 
published: true
date: 2026-02-03T20:40:03.347Z
tags: 
editor: markdown
dateCreated: 2023-02-20T20:31:13.707Z
---

# IANA and Internet-Draft processing

This page describes how IANA supports the IETF document lifecycle, how expert review works, and when Area Directors (ADs) are expected to be involved.

## High-Level Overview

IANA is responsible for: 
- Evaluating the IANA Considerations section of documents during IETF Last Call and IESG Evaluation
- Tracking and coordinating expert reviews
- Performing registry updates after document approvals
- Processing non-document registration requests
- Escalating issues to the IESG and ADs when needed

IANA does not vote on documents. An AD is expected to hold a DISCUSS on behalf of IANA when the actions are incorrect or unclear. Typically the AD responsible for the document holds this DISCUSS. 
## Evaluating the Clarity of the Document's IANA Considerations

### IETF Last Call
During IETF Last Call, IANA:
- Reviews the IANA Considerations
- Determines what registry actions are required and whether expert review is needed
- Records its review in the Datatracker
- Sends authors, chairs, and the IESG a list of the required actions and any questions (if applicable)

If the document creates a new registry that requires experts, IANA will notify the AD, but experts are not designated until the document is published. 

The authors need to respond to the IANA review only if IANA has questions or if IANA misunderstood the requested actions.

### IESG Evaluation - IANA Review States (OK/NOT OK)
In the IESG Evaluation phase, IANA tells the IESG whether the IANA actions are clear by sending an “OK” or “NOT OK” email in response to the ballot. Messages may include a brief description of any issues, which should also be documented in the Datatracker response.

IANA NOT OK indicates that IANA is waiting for an expert review or for the authors to address unresolved issues. In this case, the document is placed on hold until the IANA actions are clarified. 

For definitions of IANA Review States for Internet-Drafts, please see

https://datatracker.ietf.org/doc/help/state/draft-iana-review/.

#### AD Role: one of the ADs is expected to hold a DISCUSS on behalf of IANA when the actions are incorrect or unclear, because IANA itself has no right to vote on the document. Typically the AD responsible for the document holds this DISCUSS. 


### Expert Reviews for I-Ds

ADs may be contacted if: 
- Experts are unreachable
- All experts are document authors
- The review is blocked or disputed

### Updating Documents After the IESG Telechat

When an Internet-Draft is updated, the Datatracter automatically changes the IANA review state to “Version Changed - Review Needed.”

#### Note: IANA is not automatically notified of version changes. We check for changes before telechats, but we won’t see changes made after the telechat unless someone brings them to our attention.

### Performing the IANA Actions

The actual IANA actions are performed after IESG approval of the document, while the document is in the RFC Editor's queue. After performing the actions, IANA checks with the document authors (with the WG Chairs and ADs in copy) to verify that the actions are what was intended. When the actions are verified (usually only a single response is required, everyone doesn't have to respond), IANA informs the RFC Editor that the IANA actions are complete.

#### AD Role: If unresolved IANA issues or late document changes introduce problems, IANA may place the document on hold internally and ask ADs or chairs for help. IANA’s internal hold should not affect the RFC Editor queue state.

## Designating Experts

Experts are designated after the document is published. 

IANA submits a telechat management item requesting expert designation and:
- Assigns the token to the document’s AD
- Notes any suggested candidates (if any)

After the experts are designated:
- IANA escalates to the AD if experts do not respond to a request within 30 days
- If no expert is available to review a request, ADs can perform or delegate the review


For ADs: DRAFT Text to send to prospective Experts:

Dear Prospective Expert:

The IESG is seeking volunteer designated experts for the [INSERT REGISTRY] as defined by [INSERT DRAFT OR RFC]. As defined in RFC 8126, the designated expert is an individual who is responsible for carrying out an appropriate evaluation and returning a recommendation to IANA. You were suggested as a possible candidate for this registry.

Expert Review and Specification Required, defined in sections 4.5 and 4.6 of RFC 8126, are the two registration procedures that require review by a designated expert. If either procedure applies to an IANA-maintained registry, the IESG will officially designate experts to review requests. More information about the role of the Designated Expert can be found in section 5 of RFC 8126.

A general summary of how the process works:

The IANA Operations team facilitates the reviews by sending the expert(s) the request and communicating the decision or any questions to the requester. If you wish to contact the requester directly for a more in-depth discussion, that is allowed, as long as your decision and any important information is communicated to the IANA Operations team. Sometimes there are specific instructions to the experts in the document that defines the registry to help guide the expert’s evaluation of a request. In general, experts are requested to provide a response to IANA within two weeks, unless the registry-defining RFC specifies otherwise.

Only your name will appear in the public registry. IANA will not share your email address or other contact information.

If you are unable to make a decision on a request, or if there is a conflict of interest for you (you are an author, the request is from the company you are employed with, etc), assistance from the Area Directors and/or IESG will be arranged via IANA.

As an individual contributor, you can still submit comments as part of Last Calls or directly to the WG chairs.


<The volume of requests varies from registry to registry. For this registry the expected volume will be [TBD] per month. NEED TO GET THIS INFO FROM THE DOCUMENT AUTHORS SETTING UP THE REGISTRY.>

Please respond to this email indicating your willingness to serve as designated expert. Your service will be appreciated by the IETF Community.

[signed Area Director]


## Non-Internet-Draft Assignments

IANA also handles assignments that are not the result of a document approval. Some name spaces are allocated on a first-come, first-served or expert review basis, for instance. IANA verifies that they understand the request, determines the policy that should apply for the resource in question, and follows the policy.

In some cases the policy may involve an IESG decision, or may require the IESG's help in interpreting the correct policy. In this case IANA contacts the IESG and asks for advice. IANA monitors responses from expert reviewers. If an expert becomes unresponsive, IANA will escalate to the IESG after 30 days, per IANA’s MoU with the IETF. IANA may also ask the AD to perform or delegate the review if an expert becomes unresponsive. 

## RFC 7120 Early Allocation

RFC 7120 allows temporary, renewable allocations before RFC publication.

The process is described in Section 3 of RFC 7120:
https://datatracker.ietf.org/doc/html/rfc7120#section-3 

- WG documents require WG Chairs and AD approval
- AD-sponsored documents require the AD to contact IANA

#### NOTE: Requests from FCFS and Expert Review registries can be made at any time. These assignments are permanent. 

## Other IANA Related Work

Before each IETF meeting, IANA reviews every document on WG agendas for obvious IANA issues and contact authors as needed. 

Requests for early review can be sent to iana@iana.org at any time.

The IAB and IESG collaborate with IANA to define detailed expectations, monitor its performance, and address specific issues. These responsibilities are managed by the IETF-IANA Group. For more information, please see https://datatracker.ietf.org/iabasg/ietfiana/about/. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2025-02-05. It was migrated from the old Trac wiki on 2023-02-17.*
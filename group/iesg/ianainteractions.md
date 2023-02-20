---
title: IANA and Internet Draft processing
description: 
published: true
date: 2023-02-20T20:31:13.707Z
tags: 
editor: markdown
dateCreated: 2023-02-20T20:31:13.707Z
---

# IANA and Internet Draft processing

IANA has two responsibilities with regards to documents:

## Evaluation of the Clarity of the Document's IANA Considerations

During the IETF Last Call, the IANA will evaluate a document's ***IANA Considerations*** section, and determine whether it's clear what actions they will need to take at document approval. This determination is recorded in the IETF Draft Tracker and in IANA's internal ticket system. If there are questions about the section, the IANA will contact the authors and ADs in order to ensure they're cleared up.

If no Last Call was issued for the document or the evaluation did not happen during the Last Call, IANA performs its evaluation in the IESG Evaluation phase.

In the IESG Evaluation phase the IANA and IESG also close the loop as to whether the IANA actions are clear. The IANA gives an OK or NOT OK response - if the IANA is NOT OK, the document is held until the IANA actions are understood and acceptable. One of the ADs is expected to hold a DISCUSS on behalf of IANA when the actions are incorrect or unclear, because IANA itself has no right to vote on the document. Typically the AD responsible for the document holds this DISCUSS. The plan is for some future versions of the draft tracker tool will support IANA being able to enter this directly and not require an AD to hold and clear the DISCUSS.

## Designating Experts

DRAFT Text to send to PROSPECTIVE Experts

Dear Prospective Expert:

The IESG is seeking volunteer designated experts for the [INSERT REGISTRY] as defined by [INSERT DRAFT OR RFC]. “The designated expert is an individual who is responsible for carrying out an appropriate evaluation and returning a recommendation to IANA” – BCP26. Your name was suggested as a possible candidate to be a designated expert for this registry.

Expert Review and Specification Required are two IANA registration procedure policies that are defined in RFC8126 in sections 4.5 and 4.6 respectively. If an IANA maintained registry has either of these as its defined procedures, the IESG will officially designate experts to review requests. More information about the role of the Designated Expert can be found in section 5 of RFC8126.

A general summary of how the process works:

The IANA Operations team facilitates the reviews by sending the expert(s) the request and communicating decision or questions to the requester. As an expert if you wishes to contact the requester directly for a more in depth discussion, that is allowed, as long as decisions and any important information is communicated to the IANA Operations team. Sometimes there are specific instructions to the experts in the document that defines the registry to help guide the expert’s evaluation of a request. In general, experts are requested to provide a response to IANA within 2 weeks.

The only publicly shared information by IANA registry will be your name which appears as part of the registry. Email addresses and other information provided to IANA will be not be public.

If you are unable to make a decision on a request, or if there is a conflict of interest for you (you are an author, the request is from the company you are employed with, etc), assistance from the Area Directors and/or IESG will be arranged via IANA.

As an individual contributor, you can still submit comments as part of Last Calls or directly to the WG chairs.

<The volume of requests varies from registry to registry. For this registry the expected volume will be [TBD] per month. NEED TO GET THIS INFO FROM THE DOCUMENT AUTHORS SETTING UP THE REGISTRY.>

Please response to this email indicating your willingness to serve as designated expert. Your service will be appreciated by the IETF Community.

[signed Area Director]

## Expert Review

When a registration requires review by a Designated Expert (usually because the registry's policy has been defined as Expert Review or Specification Required), there's often a question of who requests the expert review, and who makes sure it gets done. The IESG agreed to the following with IANA on 15 November 2012:

 -   For IETF Stream documents, IANA should trigger and track expert review (see below) during IETF last call. 

 -   For documents in other streams, the stream owner (the ISE, the IRTF Chair, or the IAB Chair) will contact IANA to review allocations, and IANA will trigger and track expert review at that time. 

 -   What "trigger and track" means is that IANA will note that expert review is needed, will contact the designated expert(s) as appropriate, will track the progress and send reminders as needed, and will record the completion and result. 

  -  In cases where there's a review list (link-relations, uri-review, etc.), the DEs will likely have already seen it and basically approved it already (it's the responsibility of the document author(s) and shepherd to ensure that the review list has been used as required). Similarly in cases where someone has asked the DEs separately for earlier review (perhaps the ISE, as now, the document shepherd, or the responsible AD). In all of these cases, the DEs' job should be easy, because they've already reviewed it: just make sure the current version is still reasonable, and respond with the high sign. They might get asked twice for the same registration request, but it shouldn't be a big deal, and they'll always be asked only once by IANA. 

 -   In all cases, the formal approval of the registration (as opposed to any other review of the rest of the document) will be the response to IANA. 

## Performing the IANA Actions

The actual IANA actions are performed after IESG approval of the document, while the document is in the RFC Editor's queue. The IANA checks with the document authors and/or WG Chairs / ADs, to verify that the actions are what was intended. When the actions are verified (usually only a single response is required, everyone doesn't have to respond), the IANA informs the RFC Editor that the IANA actions are complete.

## IANA and Non-Internet-Draft Assignments

IANA also handles assignments that are not the result of a document approval. Some name spaces are allocated on a first-come, first-served or expert review basis, for instance. The IANA verifies that they understand the request, determines the policy that should apply for the resource in question, and follows the policy.

In some cases the policy may involve an IESG decision, or the IESG's help in interpreting the correct policy. In this case IANA contacts the IESG and asks for advice. IANA is also keeping track of responses from expert reviewers, and where the expert is unresponsive it eventually contacts the IESG to ask for another expert to be nominated.

## Other IANA Related Work

The IAB and IESG also work with the IANA to specify in detail what is expected from it, track its performance, etc. A small team, the IETF IANA team handles this. The IETF-side members of the team can be reached at numbers@…. The formal (statement of work) part of the relationship is looked after by IASA. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-06-17. It was migrated from the old Trac wiki on 2023-02-17.*
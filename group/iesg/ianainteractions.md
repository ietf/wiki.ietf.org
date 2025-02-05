---
title: IANA and Internet Draft processing
description: 
published: true
date: 2025-02-05T23:59:28.040Z
tags: 
editor: markdown
dateCreated: 2023-02-20T20:31:13.707Z
---

# IANA and Internet Draft processing

IANA has the following responsibilities with regards to documents:

## Evaluation of the Clarity of the Document's IANA Considerations

During the IETF Last Call, the IANA will evaluate a document's ***IANA Considerations*** section, and determine whether it's clear what actions they will need to take at document approval and whether any expert reviews are required. This determination is recorded in the IETF Datatracker and in IANA's internal ticketing system. If there are questions about the section, IANA will contact the authors, chairs, and ADs in order to ensure they're cleared up.

If no Last Call was issued for the document or the document was updated after Last Call, IANA evaluates the document during the IESG Evaluation phase.

In the IESG Evaluation phase, IANA tells the IESG whether the IANA actions are clear by sending an “OK” or “NOT OK” email in response to the ballot. Messages may include a brief description of any issues, which should also be documented in the Datatracker response.

IANA NOT OK indicates that IANA is waiting for an expert review or addressing other unresolved issues. In this case, the document is placed on hold until the IANA actions are clarified. For definitions of IANA Review States for Internet-Drafts, please see

https://datatracker.ietf.org/doc/help/state/draft-iana-review/.

One of the ADs is expected to hold a DISCUSS on behalf of IANA when the actions are incorrect or unclear, because IANA itself has no right to vote on the document. Typically the AD responsible for the document holds this DISCUSS. 

## Designating Experts

DRAFT Text to send to PROSPECTIVE Experts

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

## Expert Review

When a registration requires review by a Designated Expert (usually because the registry's policy has been defined as Expert Review or Specification Required), there's often a question of who requests the expert review, and who makes sure it gets done.

 -   For IETF Stream documents, IANA should trigger and track expert review (see below) during IETF last call. 

 -   For documents in other streams, IANA will trigger and track expert review during its conflict review, unless the stream owner (the ISE, the IRTF Chair, or the IAB Chair) contacts IANA earlier. 

 -   What "trigger and track" means is that IANA will note that expert review is needed, will contact the designated expert(s) as appropriate, will track the progress and send reminders as needed, and will record the completion and result.

  -  In cases where there's a review list (link-relations, uri-review, etc.), the DEs will likely have already seen it and basically approved it already (it's the responsibility of the document author(s) and shepherd to ensure that the review list has been used as required). Similarly, in cases where someone has asked the DEs separately for earlier review (perhaps the ISE, as now, the document shepherd, or the responsible AD). In all of these cases, the DEs' job should be easy, because they've already reviewed it: if they get asked for a new review, just make sure the current version is still reasonable, and respond with the high sign. 

 -   In all cases, the response to IANA will be either the formal approval of the registration (as opposed to any other review of the rest of the document) or questions or comments for the authors.

## Performing the IANA Actions

The actual IANA actions are performed after IESG approval of the document, while the document is in the RFC Editor's queue. IANA checks with the document authors and/or WG Chairs / ADs to verify that the actions are what was intended. When the actions are verified (usually only a single response is required, everyone doesn't have to respond), IANA informs the RFC Editor that the IANA actions are complete.

## IANA and Non-Internet-Draft Assignments

IANA also handles assignments that are not the result of a document approval. Some name spaces are allocated on a first-come, first-served or expert review basis, for instance. IANA verifies that they understand the request, determines the policy that should apply for the resource in question, and follows the policy.

In some cases the policy may involve an IESG decision, or the IESG's help in interpreting the correct policy. In this case IANA contacts the IESG and asks for advice. IANA monitors responses from expert reviewers. If an expert becomes unresponsive, IANA will escalate to the IESG after 30 days, per IANA’s MoU with the IETF. IANA may also ask the AD to perform the review if an expert becomes unresponsive. 


## Other IANA Related Work

The IAB and IESG collaborate with IANA to define detailed expectations, monitor its performance, and address specific issues. These responsibilities are managed by the IETF-IANA Group. For more information, please see https://datatracker.ietf.org/iabasg/ietfiana/about/. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2025-02-05. It was migrated from the old Trac wiki on 2023-02-17.*
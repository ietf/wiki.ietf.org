---
title: IAB Document Process
description: 
published: true
date: 2023-12-05T20:36:25.680Z
tags: 
editor: markdown
dateCreated: 2023-12-05T20:36:25.680Z
---

# IAB Document Process

IAB Stream RFCs (RFC 4845) are seen as documents that speak 'for the IAB'. The quality of those documents reflects on the IAB as an institution.

In order to improve the understanding and create a common ground for IAB document processing we will attempt use the following steps for adoption, review, and tracking IAB documents.

This is not a full fledged process flow and there are a few places where there is the possibility for the process to go astray. It is the intention for this document to be a living document.

There are three types of IAB documents:

1. Documents that reflect IAB consensus on the content, and are published in the IAB Stream (RFC 4845) as Informational documents.
2. Documents that do not necessarily reflect IAB consensus on the content, other than that it accurately summarizes the result of a community discussion (e.g., a workshop) sponsored by the IAB. These are published in the IAB Stream as Informational documents.
3. Documents that reflect IAB consensus on the content but are intended as Best Current Practice. These must be published in the IETF stream.

RFC 4845 section 3 explains the document process:

> 3.  IAB RFC Publication Process
> 
>   The following is a description of the process used by the IAB to
>   publish IAB documents as RFCs.
> 
>   1.  The document is determined to be an IAB document by the IAB, as
>       described in Section 1.
> 
>   2.  The IAB publishes an IAB draft (draft-iab-*).  Comments on the
>       draft are reviewed and may be integrated into successive
>       iterations of the draft.  In addition to considering comments
>       received on the draft, the IAB may elect to refer the document to
>       individuals or groups and explicitly solicit comments as
>       appropriate.
> 
>   3.  For documents intended to be published as BCPs, the document is
>       passed to the Internet Engineering Steering Group (IESG) with a
>       sponsoring Area Director (AD), and follows the process outlined
>       in [SPONSOR].
> 
>   4.  For documents intended to be Informational RFCs, the remainder of
>       this process is followed.
> 
>   5.  The chair of the IAB issues an IETF-wide Call for Comment on the
>       IETF Announce mailing list.  The comment period is normally no
>       shorter than four weeks.
> 
>   6.  Comments received are considered for integration into the
>       document.  The IAB shall determine whether the document is ready
>       for publication based on the comments received, or whether
>       another round of document editing and, optionally, a further call
>       for input is required.
> 
>   7.  The document is passed to the RFC Editor for publication as an
>       IAB document Informational RFC.
      
      
|                                                Action                                                |    Datatracker State   |
|:----------------------------------------------------------------------------------------------------:|:----------------------:|
| The IAB sends email to architecture-discuss announcing that they are considering adopting a document | Candidate IAB Document |
| The IAB adopts the document                                                                          | Active IAB Document    |
| The IAB reviews, discusses, and updates the document as needed                                       | Active IAB Document    |
| The IAB sends an IETF-wide Call for Comments                                                         | Community Review       |
| The IAB reviews community feedback and decides next steps                                            | IAB Review             |
| The IAB approves the document for publication as an RFC                                              | Sent to the RFC Editor |
{.dense}

The following sections elaborate on the current process in more detail, but the details are flexible. The point here is to document what our current working procedure is.

## IAB Consensus Informational Documents
### I-D for IAB consideration
When an IAB member considers a document for IAB consideration that document will be presented to the IAB as an Internet Draft. Normally these documents will be posted to the repository as individual submissions but in rare occassions the draft can be circulated on the IAB mailinglist (e.g. when a document is a result of an IAB action or a workshop report).

A draft does not necessarily need to be authored by an IAB member. Any member of the community can ask an IAB to bring a document to the IAB for adoption as an IAB document.

If a draft is brought to the IAB there the chair will reserve the next available techchat slot for discussion of the document (if that would cause undue delay a business slot will be used).

### IAB Draft Adoption
When the IAB considers adoption of a draft (i.e., renaming it to `draft-iab-foo`), a notice should be sent to architecture-discuss@ietf.org

The original announcement of this policy.

### Announcement Template
> The IAB will discuss adoption of **DRAFT** at its meeting on **DATE**.
> 
> The draft can be found here: https://datatracker.ietf.org/doc/**DRAFT**
> The agenda for the meeting will be posted 48 hours ahead of the meeting here: https://www.iab.org/wiki/index.php/Agenda
> 
> Feedback about this draft can be sent in response to this mail on architecture-discuss@ietf.org, or to the IAB directly at iab@iab.org.
> 
### Approving an IAB document
During that slot the IAB will need to approve the adoption of the document as an IAB document. It is expected that all IAB members read the document so that they can engage in the discussion. The decision to purue publication as IAB Stream RFC will need to be made on rough consensus and the following questions act as a guide to the discussion:

1. Does the document fit the IAB mission?
2. What is the value add of the IAB saying this (*for the IAB*)?
3. What is the timeframe by which this document needs to be published in order to be relevant?
4. Is there a long term commitment from the IAB on pursuing the issue?
5. What is the audience/target and what do we want to see people take away (what is the message)?
6. Does the final document need full IAB review or specialist review (who are those specialists)
7. Is this a statement or an offer for considerations?

The result of the discussion should be documented in such a way that it offers the background for future IABs om why an effort was finished.

In addition the document shepherd will provide and document a timeline for concluding the document.

### Editing process
The shepherd will work with the document to resolve issues. High-level issues that speak to the point that the IAB tries to make will need to be brought to the IAB.

The editor will use some sort of issue tracker (e.g. trac).


### IAB last call
When the editor considers the document finished the IAB shepherd will bring the document to the IAB for a 2 weeks last call (or longer if multiple documents are to be reviewed at the same time, IAB members may ask for a little extra time).

Since we had a high barrier for entrance we should not end up in the situation that we have discussions about the topic being worthy for IAB publication. Obviously we may find out that the quality of the document is not satisfactory.

The document editor will work with the individuals who identified the issues to resolve those issues. Once that is done the document is ready for Call for Comments.


### IETF Call for Comments
RFC 4845 section 3 states:
> 
> The chair of the IAB issues an IETF-wide Call for Comment on the
> IETF Announce mailing list.  The comment period is normally no
> shorter than four weeks.

The Call for Comments is often done with a bias to close on a Sunday so that Monday start of business matters can be evaluated.

Any significant feedback, beyond nits, is brought to the IAB and are resolved as appropriate, preferably through e-mail.

### IAB approval
After the feedback from the community has been incorporated the document is approved (pro-forma) by the IAB at its next meeting.

### Appendix: IAB Members at the Time of Approval
The appendix lists a "IAB Members at the Time of Approval" section. This section is factual since it only speaks about the membership at a certain time. In rare cases the section might document that there was a rough consensus for publication but we strive to have all people mentioned. Disagreements with publication can appear in the public meeting minutes.

Issues brought up during this last call should be addressed.

The reasons for this section were articulated by Olaf Kolkman as "It takes a lot of in-depth knowledge to sort out who were on the IAB at the time the document was approved. I believe it is important that (in particular with non-workshop reports) the members at that time are willing to take responsibility and stand for the consensus achieved within the IAB." Leslie Daigle added: "part of the reason for listing the folks who were on the IAB when it was approved was to facilitate documents being edited across the annual membership boundary. I.e., you didn't have a flurry of publications in February, or a lull as the new IAB read through the all-but-finished IAB documents leftover from the previous team."

## Workshop Reports
Reports on IAB-sponsored workshops do not reflect IAB consensus and follow a different model, even though they are still published in the IAB Stream. See published workshop reports for additional examples of language used in prior reports.

### Abstract
The following paragraph (based on text in RFC 4417 and RFC 4984) should be added at the end of the abstract:

Note that this document is a report on the proceedings of the
workshop.  The views and positions documented in this report are
those of the workshop participants and do not necessarily reflect IAB
views and positions.

Sample abstract 1:

> This document reports the outcome of the [topic] Workshop
> that was held by the Internet Architecture Board (IAB) on
> [dates], in [place].  The primary goal of the workshop was
> to [goal].  This report summarizes the discussions and
> conclusions of the workshop.
> 
> [boilerplate trailer paragraph from above]


Sample abstract 2:

> This document provides an overview of a workshop held by the Internet
> Architecture Board (IAB) on [topic].  The workshop was
> hosted by [host] in [place] on [dates].  The
> goal of the workshop was to [goal].  This report
> summarizes the discussions and lists the conclusions and
> recommendations to the Internet Engineering Task Force (IETF)
> community.
> 
> [boilerplate trailer paragraph from above]
> 
  
### Introduction
The following boilerplate (from RFC 1862) MAY be used in the introduction.
> 
> The Internet Architecture Board (IAB) holds occasional workshops
> designed to consider long-term issues and strategies for the
> Internet, and to suggest future directions for the Internet
> architecture.  This long-term planning function of the IAB is
> complementary to the ongoing engineering efforts performed by working
> groups of the Internet Engineering Task Force (IETF), under the
> leadership of the Internet Engineering Steering Group (IESG) and area
> directorates.

### Appendix: Workshop Participants
An appendix lists the workshop participants. Workshop reports do not contain an "IAB members at approval" section, since they are not IAB consensus documents.


### Misc
The location of the workshops is not generally part of the doc title. For example:
> 
>   * RFC 4417 Report of the 2004 IAB Messaging Workshop 
>   * RFC 4948 Report from the IAB workshop on Unwanted Traffic March 9-10, 2006 
>   * RFC 6462 Report from the Internet Privacy Workshop
  
In the first-page header, each author's name would be listed without an organization.

A section titled "IAB Members at the Time of Approval" would be included.

The IAB would be listed in the Authors' Addresses section as follows:

> Internet Architecture Board
> EMail: iab@iab.org

## IAB Consensus BCPs
RFC 4845 section 1 states: "If the IAB has cause to publish a document as a Best Current Practice (BCP), it would fall under the approval process of the IETF standards stream of RFCs (see RFC 4844])."

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-05-24. It was migrated from the old IAB wiki on 2023-12-05.*
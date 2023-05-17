---
title: IRTF Document Review Process
description: 
published: true
date: 2023-03-13T01:47:21.467Z
tags: irtf
editor: markdown
dateCreated: 2023-02-14T15:56:42.061Z
---

# IRTF Document Review Process
*This wiki page contains some details regarding the current process used by the IRSG for reviewing and approving IRTF-stream documents.  It may change over time as the process improves. RFC5743 defines the IRTF Document Stream and some highlights of the process.*


## IRTF RFC Process 


### Document Shepherds 

Documents must have a shepherd.  This is a relatively new concept initially developed in the IETF to ensure that issues raised in the review and publication process are responded to in a timely manner.  The IETF shepherding process is described in RFC4858 and has been adapted to the IRTF publication process.

Shepherd responsibilities are noted for each phase of the publication process in subsequent sections.  Some general things to note:

 * Shepherds should normally be an RG chair since they know the IRSG members, are familiar with the technical content, and know the document history.  However, the RG chair should generally not be a shepherd if they are an author of the document, but may assume the responsibility if the IRTF chair so permits (e.g., when another shepherd is not available within a reasonable time period).  If the chair can not be the document shepherd, they should select someone from the Research Group for this role since it is important that they are able to interact with the RG and assess the group's response to comments.

 * Shepherds are responsible to track and facilitate document progression through RFC publication.  This includes finding IRSG reviewers, facilitating resolution of review comments, entering information into the tracker(s), keeping track of review schedules, and prodding token holders to act expeditiously.

 * Shepherds should summarize substantive review comments and their resolution.  A good shepherd should be pretty transparent, e.g., eliciting IRSG-visible 'acks' from reviewers that the resolution of review comments were acceptable. The RG chair (whether they are the shepherd or no) should ensure the RG gets sufficient visibility into reviews & changes.

 * Shepherds should monitor changes to the document and are responsible for ensuring the final version of the document reflects RG consensus (if appropriate) and subsequent reviews.

 * Shepherds should be copied on all correspondence regarding a document.  For example, if the IESG has questions during their review, the shepherd should be included in the exchange.  This can be helpful should the RG take a position different than the author on suggested changes.

### Document Tracker 

*We now use the  [IETF datatracker](http://datatracker.ietf.org/) to manage document publication.* This wiki will need to be updated once we have more experience with the new workflow.

The datatracker is intended to collect the shepherd and reviewer identities, reviewer comments, and state transitions as the document progresses.  It is the responsibility of the shepherd to maintain the tracker.  **Please put all information relevant to understanding the state of a document into the [IETF datatracker](http://datatracker.ietf.org/).** If there isn't a field for it, put it as a comment into the document history.

Information to be captured in the tracker:

 * URL to the draft (updated if the draft is revised)

 * Document shepherd name and contact information

 * Type of RFC: Informational or Experimental

 * IRSG members performing editorial review (see [wiki:IRTF-RFCs#IRSGReview])

 * Status of IANA's review of any required actions in the document

 * Scheduled date for IRSG poll

 * IRSG poll results

 * Pointers to RG reviews

 * IRSG Review comments and resolutions (or pointers)


###  Process Description

The following sections describe the steps for IRTF-track document review and publication process.  There are fundamentally two steps: IRSG review and IESG review.  The document shepherd is responsible for making sure reviews are responded to and documented and that the process moves along.

#### Research Group Preparation 

If an IRTF Research Group desires to publish a document as an IRTF RFC, the process in this document must be followed.  First, the RG must review the document for editorial and technical quality.

Here are some content guidelines to be adhered to:

 * There must be a statement in the abstract identifying it as the product of the RG

 * There must be a paragraph near the beginning (for example, in the introduction) describing the level of support for publication.  Example text might read: "this document represents the consensus of the FOOBAR RG" or "the views in this document were considered controversial by the FOOBAR RG but the RG reached a consensus that the document should still be published".

 * The breadth of review the document has received must also be noted.  For example, was this document read by all the active contributors, only three people, or folks who are not "in" the RG but are expert in the area?

 * It must also be very clear throughout the document that it is not an IETF product and is not a standard.

 * If an experimental protocol is described, appropriate usage caveats must be present.

 * If the protocol has been considered in an IETF working group in the past, this must be noted in the introduction as well.

 * There should be citations and references to relevant research publications.

The shepherd should be selected at this time as discussed in [wiki:IRTF-RFCs#DocumentShepherds].  Now the document may be submitted to the IRSG for review.

### IRSG Review

The IRSG functions similar to an editorial review board.  It is the IRSG's responsibility to ensure high technical and editorial quality.

#### Initial steps 

The RG chair brings the document to the IRSG for publication by sending an email message to the IRSG requesting review and including a pointer to the draft.  The RG should be copied on the mail message requesting IRSG review.  If the RG chair is not going to be the document shepherd, that person should be identified at this time.

The shepherd should do several things at this time:

 1.  Create an entry in the tracker for the document, entering all of the items listed in [wiki:IRTF-RFCs#ProcessDescription] that are available and setting the document state to "IRSG Review".

 2.  Send an email to the IRSG mailing list with pointers to the new tracker entries (this may be automated)

 3. Send an email to IANA, so they can start to check whether the document requires any action from them. (This check will take about two weeks, which is why it is run in parallel with the IRSG review and poll.)

 4.  Find a member of the IRSG to perform a thorough review of the document. This is to ensure at least one thorough review is performed.  The shepherd should negotiate an completion date for this review, typically 2-3 weeks.   Reviewers are assigned by the IRTF Chair on a loose round-robin basis using the following algorithm and logged [wiki:IRSGReviewLog here]:
   * If someone volunteers promptly to perform an IRSG review of a document, the review is assigned to that person and their name is moved to the bottom of the list.
   * If no one volunteers to review a document, the next name from the top of the list is assigned.

Upon completion of the thorough review, the shepherd starts the IRSG poll as described below.

####  IRSG Review 

The purpose of the IRSG review is to ensure consistent editorial and technical quality for IRTF publications.  IRSG review is not a deep technical review.  (This should take place within the RG.)  At least one IRSG member other than the chair of the RG bringing the work forth must review the document and the RG's editorial process.

IRSG reviewers should look for clear, cogent, and consistent writing.  An important aspect of the review is to gain a critical reading from reviewers who are not subject matter experts and, in the process, assure the document will be accessible to those beyond the authoring research group.  Also, reviewers should assess whether sufficient editorial and technical review has been conducted and the requirements of this process document, such as those described in [wiki:IRTF-RFCs#ResearchGroupPreparation] have been met.  Finally, reviewers should check that appropriate citations to related research literature have been made.

Reviews should be written to be public.  Review comments should be sent to the IRSG and RG mailing lists and entered into the tracker.  All IRSG review comments must be addressed.  However, the RG need not accept every comment.  It is the responsibility of the shepherd to understand the comments and ensure that the RG considers them including adequate dialog between the reviewer and the author and/or RG.  Reviews and their resolution should be entered into the tracker by the document shepherd.

The IRSG review often results in the document being revised.  Once the reviewer(s), authors, and shepherd have converged on review comments, the shepherd starts the IRSG Poll on whether the document should be published.

####  IRSG Final Poll 

The goal of the final IRSG poll is to determine if the draft is ready for publication as an RFC. The poll typically runs for three weeks. Every IRSG member SHOULD vote on whether the document is ready. The possible votes are as follows:

*  **Ready to publish** -- requires a thorough read and reasonably detailed review

*  **Not ready to publish** -- requires a thorough read, reasonably detailed review, and actionable comments.

* **No objection** -- I don't object if this document goes forward; I've read the document (perhaps quickly); I have some small comments which are not show stoppers; I don't have great expertise in the area.

*  **Request more time to review** -- a commitment to provide a thorough review in a specified period of time.

* **Recuse** -- due to conflict of interest (includes document authors, chairs of research group requesting publication, document shepherd, and others with a conflict of interest).

At least two other IRSG members (besides the one sponsoring the document) need to vote 'ready to publish' for the document to move forward.  Any vote of 'not ready to publish' will hold a document's progress until the comments are addressed.  The IRTF chair may choose to override 'not ready to publish' holds that, in the opinion of the chair, have received an adequate response.  The shepherd will record the poll results in the tracker.

#### Followup 

When an ID has been published reflecting the resolution of all comments, the shepherd sends an email to the IRTF Chair (cc'ing the IRSG and the RG) summarizing the IRSG review comments and their resolution and including pointers to the tracker entries, detailed reviews, and discussion. 

IRSG Review is concluded at this time.  The tracker should be updated to reflect moving to new state, IESG Review.

###  IESG Conflict Review 

The IRTF Chair will check that IANA has concluded their review, and then send an email message to the secretariat (iesg-secretariat@ietf.org) requesting a review and indicating the type of RFC requested (e.g., informational or experimental). **If the document contains IANA actions, this request should ask the IESG to also approve those actions, so that an expert review, etc. is avoided.**

The scope of the IESG Review is confined to that described in RFC2026, section 4.2.3, for non-IETF documents, specifically it is "[t]o ensure that the non-standards track Experimental and Informational designations are not misused to circumvent the Internet Standards Process." RFC5742 describes the IESG procedures for handling this review, including dispute resolution should the IRSG disagree with the IESG's recommendation.

The IESG (via the IETF Secretariat) is expected to provide the IRTF chair with a response, normally within four weeks, as to whether publication of the draft is perceived to be at odds with the Internet Standards Process.  The IESG may have other comments in the datatracker which the RG may use to revise the document.  The shepherd and authors review all comments determine whether a revision is required.

During the RFC5742 review, the authors may receive comments or editorial suggestions, from IESG members but also from others. It is recommended that authors ''not'' submit document revisions during the review period, in order to give the IESG reviewers a stable target to review. Instead, they should make note of comments and suggestions and post a revision that addresses them ''after'' the review period ends, i.e., the formal review notice arrives. (Note that in some cases, the IESG or an RG chair will specifically request that a new version be submitted ''during'' the review process, which the authors should then obviously do.)

Shepherd, authors and everyone interested can track the progress of the IESG review using the [IETF datatracker](http://datatracker.ietf.org/). When the RFC5742 request is sent by the IRTF Chair, the document is by default assigned to the IETF Chair, who in turn will identify one Area Director to perform the review for the IESG, and reassign the document to him. The Area Director reviews the document and proposes on of the possible review responses listed in RFC5742. The IESG as a whole then ballots on whether the proposed RFC5472 response is appropriate, and when the ballot closes, the review response is sent back to the IRTF Chair. (Note that individual Area Directors may also send other comments or suggestions to the RG or the authors, but those are '''not''' blocking publication.)

The shepherd now sends a request for publication including pointers to the reviews in the tracker to the IRTF Chair, cc'ing the RG and IRSG.  The tracker should be updated at this time to reflect the new state, "Doc approved, awaiting submission to RFC Editor."

###  RFC Editor Handling

The IRTF Chair will forward the request for publication email to the RFC Editor and IANA, placing the document in the RFC Editor's publication queue.  The tracker should be updated to reflect the state of "RFC Editor publication queue."
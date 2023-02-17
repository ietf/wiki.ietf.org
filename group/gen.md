---
title: General Area
description: Wiki for GEN
published: true
date: 2023-01-30T17:57:00.878Z
tags: 
editor: markdown
dateCreated: 2022-12-09T01:06:24.204Z
---

# General Area
## General Area Review Team (Gen-ART) Guidelines

These are guidelines for document review within the Gen-ART.

See also: [FAQ](/group/gen/GenArtFAQ), [Team Members](https://datatracker.ietf.org/group/genart/about/), [Review Tool](/group/gen/DatatrackerReviewToolHowTo)

### Timeline of Review

Documents are typically assigned to a Gen-ART reviewer during IETF Last Call. The documents may be re-reviewed once they appear on a Telechat agenda. Documents may also be reviewed at the request of ADs prior to IETF Last Call.

The general assignment process:

* The Secretary usually makes assignments on Thursdays via Datatracker.
* Reviewers are selected in round-robin order based on availability.
* An email with the review assignment is sent directly to each reviewer.
* A list of review assignments is sent to the [gen-art](https://mailarchive.ietf.org/arch/browse/gen-art/) mailing list. 

The process for reviewing Early Review documents:

* The Secretary assigns a reviewer when a request comes in (sometimes from an AD, sometimes from a chair).
* We expect the reviewer to be done before the deadline (typically 2 weeks).
* The reviewer sends the review to the gen-art mailing list, the AD, WG chairs & authors, and optionally to the WG mailing list. 

The process for reviewing documents at Last Call:

* The Secretary assigns a reviewer within a week of the Last Call announcement.
* We expect the reviewer to be done before the end of Last Call.
* The reviewer sends the review to the gen-art list, the AD, WG chairs & authors, and optionally to the WG mailing list.
* Since IETF Last Call comments are commonly sent to the IETF discussion list, the reviewer may also choose to do that; in any case the review will be public. 

The Telechats are every other Thursday, with the [agenda](https://datatracker.ietf.org/iesg/agenda/) finalized on the Thursday evening one week prior to the Telechat. The process for reviewing documents when they appear on the IESG agenda:

* The Secretary makes Telechat review assignments at the same time as Last Call assignments.
* For documents that were reviewed at Last Call, the same reviewer is assigned and a new review is only asked for if the document is significantly revised or issues have not been resolved.
* Reviewers send their review to the gen-art list no later than COB (*i.e.*, 8 PM EDT) the Tuesday before the Telechat (earlier is better!)
* The reviewer sends the review to the gen-art list, the AD, WG chairs & authors, and optionally to the WG mailing list.
* If the AD concludes that the concerns raised by the reviewer warrant blocking the document, the AD will do so. 

### Form of review

Each review must include one of the following at the beginning of the review:

* For Early reviews: I am the assigned Gen-ART reviewer for this draft. For background on Gen-ART, please see the [FAQ](/group/gen/GenArtFAQ). 
&nbsp;
    Please resolve these comments along with any other comments you may receive.

*    For IETF Last Call reviews: I am the assigned Gen-ART reviewer for this draft. The General Area Review Team (Gen-ART) reviews all IETF documents being processed by the IESG for the IETF Chair. Please treat these comments just like any other last call comments. For more information, please see the [FAQ](/group/gen/GenArtFAQ). 

*    For IESG Evaluation reviews: I am the assigned Gen-ART reviewer for this draft. The General Area Review Team (Gen-ART) reviews all IETF documents being processed by the IESG for the IETF Chair. Please wait for direction from your document shepherd or AD before posting a new version of the draft. For more information, please see the [FAQ](/group/gen/GenArtFAQ). 

Each review must include a summary statement chosen from or adapted from the following list:

* This draft is ready for publication as a [type] RFC, where [type] is Informational, Experimental, etc. (In some cases, the review might recommend publication as a different [type] than requested by the author.)
* This draft is basically ready for publication, but has nits that should be fixed before publication.
* This draft is on the right track but has open issues, described in the review.
* This draft has serious issues, described in the review, and needs to be rethought.
* This draft has very fundamental issues, described in the review, and further work is not recommended.
* Unfortunately, I don't have the expertise to review this draft. 

The length of a review will vary greatly according to circumstances, and it is acceptable for purely editorial comments to be sent privately if it's obvious that the document will have to be substantially revised anyway. All substantive comments must be included in the public review. Wherever possible, they should be written as suggestions for improvement rather than as simple criticism. Explicit references to prior work and prior IETF discussion should be given.

Reviewers should review for all kinds of problems, from basic architectural or security issues, Internet-wide impact, technical nits, problems of form and format (such as IANA Considerations or incorrect references), and editorial issues. Since these reviews are on documents that are supposed to be finished, the review should consider "no issue too small" - but cover the whole range from the general architectural level to the editorial level. However, a review which consists only of copy-editing is not productive. If the reviewer feels that a draft is too badly written to advance, it will be sufficient to say so with one or two examples.

The review should apply generally agreed IETF criteria, such as

[RFC1958](https://datatracker.ietf.org/doc/rfc1958/) The Architectural Principles of the Internet

[RFC3426](https://datatracker.ietf.org/doc/rfc3426/) General Architectural and Policy Considerations

[RFC3439](https://datatracker.ietf.org/doc/rfc3439/) Some Internet Architectural Guidelines and Philosophy

[NITS](https://author-tools.ietf.org/idnits) "I-D Nits" tool

[RFC2223](https://datatracker.ietf.org/doc/rfc2223/) Instructions to RFC Authors

[BCP26](https://datatracker.ietf.org/doc/rfc5226/) Guidelines for Writing an IANA Considerations Section in RFCs

[RFC3552](https://datatracker.ietf.org/doc/rfc3552/) Guidelines for Writing RFC Text on Security Considerations

[RFC Style Guide](https://www.rfc-editor.org/styleguide/)

[RFC Editor Abbreviations List](https://www.rfc-editor.org/materials/abbrev.expansion.txt)

as well as any other applicable architectural or procedural documents. It is important that reviews give precise references to such criteria when relevant.

Of special interest to the GEN area (because it's no area's special interest) is:

* Clear description of why the document or protocol is useful to the Internet
* Adherence to IETF formalities such as capitalized MUST/SHOULD (ID-Nits)
* Useful and reasonable IANA considerations
* Correct dependencies for normative references
* That it's written in reasonably clear English. 
&nbsp;
### What is a Serious Issue?

When is a reviewer likely to flag an issue as **major**, which may well lead to a DISCUSS ballot in the IESG unless it's fixed in advance?

The IESG's own guidelines are at https://www.ietf.org/iesg/statement/discuss-criteria.html. Reviewers (or authors) can put themselves in the IETF Chair's shoes. Would you definitely hold up the document for this (*i.e.*, a solid DISCUSS)? Would publishing it as-is be actively misleading or harmful? Then it's major.

Would you *possibly* place a DISCUSS, which you would very likely drop as soon as an author or the sponsoring AD explained the point or said "sure, we'll fix that"? Or would you simply issue a COMMENT and ballot No Objection? Then it's minor.

Are you just saving some work for the RFC Editor? Then it's a nit.

However, all these are judgment calls in the end.
&nbsp;
### Draft Email Aliases

The following aliases can be helpful in getting the reviews to the right targets, replacing draftname by draft-ietf-wg-topic (without -xx version)

| draftname@ietf.org         | Draft authors (for now, could change) |
|----------------------------|---------------------------------------|
| draftname@ietf.org         | Draft authors (for now, could change) |
| draftname.authors@ietf.org | Draft authors                         
| draftname.chairs@ietf.org |	WG Chairs (if the draft is a WG draft) |
| draftname.notify@ietf.org |	The addresses entered into the tracker's email notification field for the draft |
| draftname.ad@ietf.org |	The sponsoring AD, if the draft has gone to the IESG |
| draftname.all@ietf.org |	All of the above, merged into one alias |

### Mailing List

All reviews are sent to the IETF gen-art mailing list: https://mailarchive.ietf.org/arch/browse/gen-art/, and also to the authors, ADs, and/or WG chairs/Document Shepherds. Reviewers may also send the reviews to the IETF discussion list, which is done by default if the Review Tool mentioned below is used to submit reviews.
### Review Tool

Reviews are managed using a specific tool. Reviewers can log in to the tool here: https://datatracker.ietf.org/group/genart/reviews/

Review tool user guide: https://wiki.ietf.org/group/gen/DatatrackerReviewToolHowTo
### Archiving of reviews

All reviews are archived. They are visible in the mailing list archive, along with any subsequent discussion copied to the list: https://mailarchive.ietf.org/arch/browse/gen-art/ 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-01-30. It was migrated from the old Trac wiki on 2023-01-24.*
---
title: In Charter Work
description: 
published: true
date: 2022-12-22T00:51:24.659Z
tags: 
editor: markdown
dateCreated: 2022-12-22T00:50:42.199Z
---

# Working on Topics in the RTGWG Charter 
The general process for working on specific topics that are within the RTGWG charter is the one followed by all IETF working groups. Authors submit an internet draft for consideration by the WG. After feedback on the draft and revisions taking into account that feedback, the WG chairs conduct a poll to determine if there is consensus to adopt the draft as a WG document. If there is consensus, the draft is adopted as a WG document. After more work on the document by the WG as a whole, the WG chairs conduct a poll (referred to as WG Last Call) to determine if there is consensus to submit the document to the IESG for publication. If there is consensus at WG Last Call, the document continues along the process for publication with shepherd review, AD review, and IETF last call.

While the general process described above is common to almost all IETF working groups, there is significant variation among working groups in the specifics of how this process is implemented. Below is a more detailed description of the current process used for the RTGWG.

## Initial Internet Draft Submission
Authors submit an internet draft using the tool at https://datatracker.ietf.org/submit/. In order for the draft to automatically appear at https://datatracker.ietf.org/wg/rtgwg/documents/ under the heading of **Related Internet-Drafts**, the draft name has to be of the form draft-xxxxx-rtgwg-yyyyyyyyy-00

If the authors intend that the document should eventually be adopted by the RTGWG, then the initial submission should follow this convention of using rtgwg in the name to allow working group participants to easily find the document and understand the authors intentions.

Note that an initial submission should not have a name of the form draft-ietf-rtgwg-yyyyyyyyy-00. Draft names starting with draft-ietf-rtgwg are reserved for documents that have been adopted by the WG. Authors generally use an author name or combination of author names for the xxxxx part of the draft name.

Also, note that the submission tool does not automatically generate an email to rtgwg@… for non-WG documents, regardless of the naming convention. Therefore, an email to rtgwg@… which brings the draft to the attention of the working group and solicits feedback is also useful.

## Presenting the Draft at a Meeting of the RTGWG
It is quite useful to present a draft at a meeting of the RTGWG in order to solicit feedback on the draft. The RTGWG is generally meeting in one or two sessions at each of the three annual IETF meetings. The RTGWG chairs usually send out an email soliciting requests for presentation time slots about 30 days before the meeting itself. However, authors are encouraged to request presentation time slots before that as well. A request to present at a meeting doesn't guarantee a time slot, since the chairs will generally need to prioritize presentations and discussions related to existing WG documents.

Presenting the draft at a meeting is not an absolute requirement for getting a draft adopted as a WG document. If the authors intend to seek WG adoption of a draft but are unable to present it themselves at a meeting, they should email the RTGWG chairs (rtgwg-chairs@…) to come up with a plan to present it remotely, have someone else present it on the authors behalf, or come up with another method for engaging the WG sufficiently before conducting a poll for WG adoption.

## Request for WG Adoption Poll
Authors should send email to rtgwg-chairs@… to indicate that they feel the document is ready to be considered for WG adoption. The chairs may suggest changes or improvements before proceeding with the WG adoption poll, or the chairs may agree that the document is basically ready to be considered for WG adoption.

The Routing Area has a process for improving the quality of drafts using review done by members of the Routing Area Directorate (http://trac.tools.ietf.org/area/rtg/trac/wiki/RtgDirDocQa). The RTGWG chairs have found it useful to improve document quality with a Directorate review before initiating a poll for WG adoption, since the poll often triggers many WG participants to read the draft in detail. The chairs will have a reviewer assigned, and the review will generally take a few weeks. In general, the authors should produce another revision of the draft incorporating the reviewer's feedback before the chairs conduct a poll for WG adoption, so that readers evaluating the document for WG adoption benefit from these improvements.

Once the authors have incorporated the feedback in a new revision, they should email the chairs to request a poll for WG adoption.

## Response from Authors Regarding Relevant IPR
As part of the poll for WG adoption, the RTGWG currently requires that each person listed as an author or contributor for a document respond to the RTGWG mailing list stating whether or not he or she is aware of any relevant IPR. The document will not advance to the next stage until a response has been received from each author and each individual that has contributed to the document.

The same procedure is repeated at WG Last Call.

## Work on WG Documents
If the WG decides to adopt the draft, the chairs will ask the authors to submit a new revision of the draft with a name of the form draft-ietf-rtgwg-yyyyyyyyy-00, which indicates that it is an RTGWG document.

As the authors publish new revisions of a WG document, the draft submission tool will automatically generate email to the WG about the new revision. However, authors should also send email to the WG with a brief explanation of the changes in the new revision.

If the draft was written in XML and formatted using xml2rfc, then the authors should also submit the XML using the submission tool. This makes it easier to extract YANG models and other code components, and gives the WG more control of the draft.

Authors are encouraged to use tools such as github to facilitate collaborative work on documents. However, substantive discussions regarding the contents of the document still need to take place on the RTGWG mailing list.

## WG Last Call and Beyond
The process for WG Last Call and beyond is fairly uniform across Routing Area working groups and is well documented elsewhere.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-06. It was migrated from the old Trac wiki on 2022-12-21.*
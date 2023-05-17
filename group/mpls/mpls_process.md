---
title: MPLS WG Process
description: MPLS WG Process
published: true
date: 2023-02-27T16:29:39.516Z
tags: 
editor: markdown
dateCreated: 2023-02-27T16:29:34.736Z
---

# MPLS Working Group Process
The MPLS wg review (or document) process involves several steps, some of them are mandatory (i.e. prescribe by the IETF document process), others are optional, e.g. there to help wg chairs and shepherds to judge working group consensus.

## Individual Documents
Almost all IETF documents starts out as an individual document, the filename format is for example:

draft -individual-wg-foo-bar

draft - indicates that it is an IETF draft!
individual - indicates the author(s), most common the last name of the main editor, but the rules are quite liberal and you might use the initials of all the authors
wg - indicates which working group the document is intended for, for the MPLS wg this should be "mpls"!
foo-bar is used to in high-level style indicate the content of the document.

Draft are posted in txt-format, via the ID submission tool and have a version number (starting with -00).

This means that "draft- andersson-mpls-foggy-thoughts-00.txt", is the first version by someone named "andersson", who is thinking about something (unclear what) that is intended for the mpls working group.

Note: Don't try to play too much with the file-name format, if you do it usually ends up with the draft not being brought to the working groups attention. With a correctly formed file-name the document will show up on the working group home page, under the heading Related Internet-Drafts.

Authors post their draft with the intention that they should be discussed and improved. Note that it is the responsibility of the authors/interested working group participants to drive this discussion.

At some point during this discussion the authors (or someone else) thinks the document is ready to be adopted as a working group document. This should be communicated to the working group chairs via a mail. The working group chairs make some judgement call, but under normal circumstances it will show up on the working group home page as a

## Candidate for WG Adoption
"Candidate for WG Adoption" is a state in the IETF Data Tracker. Before that the state is just "ID Exists". The Working Group chairs put the document in "Candidate for WG Adoption" when it is confirmed that the document belongs in the working group.

While the document stays in this state some activities takes place.

### WG chair review
One of the working group chairs is appointed as "document shepherd" (in some cases someone but a working group takes on the role as document shepherd.
The working group chair/document shepherd makes a review of the document that is sent to the document authors, the purpose of the review is to prepare for the MPLS-RT review.

### MPLS-RT review
The explicit goal of the MPLS-RT review is to help wg chairs to make the decision if a document is ready for the working group adoption poll. The questions asked of the reviewers are

whether the document is coherent
if it is useful (ie, is it likely to be actually useful in operational networks)
is the document technically sound
Apart from that MPLS-RT reviewers normally have a lot of comments ranging from nits, to suggestions of technical change and improvement. Please note that while we are doing the first chair review and the MPLS-RT review the document is still an individual document (i.e. the revision control is with the document authors) and there is no way to force authors to do certain changes; on the other hand the working group chairs can't be forced to request an adoption poll for a document that they don't think will make it.

The practical outcome of both the working group chair review and the mpls-rt review is that the authors are very interested to update the documents since a document of good quality is more likely to become a working group document. One criteria that the working group chairs are looking for is if the mpls-rt reviewers are comfortable with how their comments has been addressed.

Authors should analyze the comments received and decide what can be addressed immediately and what need more discussion, and even might have to wait until after document has become a working group a document.

For comments received during the MPLS-RT review - and for any comment on any draft (individual or wg) it is the responsibility of the authors/editors to verify that the comment has been correctly understood and that the person making the comment(s) are comfortable with how they have been addressed.

### IPR Poll
While the document is in "Candidate"-state we also do a first IPR poll. All the authors are asked to confirm if they are aware of IPRs that relate to the draft or not, any participant in the working group are asked to disclose any relevant IPRs that they are aware of.

Once the the steps above are complete we are ready to move the document into:

## Call for working group adoption issued
The call for adoption poll is not intended to change a document, the question is whether the document

is within charter
addresses a problem that need to be addressed
is a good enough start to address this problem
For tracking purposes the last version of the individual document and the first of the working group document (-00) are kept identical, with the exception of adminstratvia (file name, version number and date).

The format of the working group document file-name is draft -ietf-wg-foo-bar

## Working Group Document (WG Document)
As a document is accepted as a working document it is placed in a state called WG Document.

In the WG Document state the working group takes over revision control of the document, and this is the state where the the working group does most of it work.

When there is a feeling that the document is ready for working group last call, a new WG chair and or Document Shepherd review is undertaken, a new IPR poll is done and eventually the Working Group Last Call (wglc) is started.

When the wglc is started it is done so by an end date set, however there are reasons why working group chairs might want to leave the wglc open longer than initially was announced, e.g. waiting for an important review that might take more time than expected. The wglc is closed by a mail to the working group mailing list.

When a wglc is closed a document is typically placed in Waiting for WG Chair Go Ahead.

## Waiting for WG Chair Go Ahead
Waiting for WG Chair Go Ahead is a state used to address the comments received during the wglc. Once the reviewers are comfortable with how the comments has been addressed, the document almost ready for the request for publication. The next step is the Document Shepherd Write-up, the write-up is finalized in the state WG Consensus: Waiting for Write-up

## WG Consensus: Waiting for Write-up
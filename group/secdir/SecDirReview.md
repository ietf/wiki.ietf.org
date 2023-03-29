---
title: IETF Security Area Review Process
description: Document review process used by the IETF Security Directorate
published: true
date: 2023-03-29T05:43:57.690Z
tags: 
editor: markdown
dateCreated: 2022-11-09T15:37:54.246Z
---

## Quick Links

 * [IESG agenda](https://datatracker.ietf.org/iesg/agenda/)
 * [IETF Datatracker](https://datatracker.ietf.org/)
 * [SecDir reviewers](https://datatracker.ietf.org/group/secdir/about/)
 * [SecDir mailing list membership](https://www.ietf.org/mailman/roster/secdir)

## Purpose

Security directorate reviews are solicited primarily to help the area directors improve their efficiency, particularly when preparing for IESG telechats, allowing them to focus on (potentially) troublesome documents and spend less time on the trouble-free ones. Improving the documents is an important, but clearly secondary, purpose. Yet a third purpose is to broaden the SecDir reviewers' exposure to work going on in other parts of the IETF.

Accordingly, reviews from SecDir members do not, in and of themselves, cause the IESG to block a document. The reviews may, however, convince individual IESG members to block a document. The reviews, particularly those conducted in last call and earlier, may also help the document editors improve their documents.

## Schedule and Deadlines

Assignments are usually sent out weekly near the end of the week (Thursday-Saturday).

Please try to complete reviews by the end of IETF last call, allowing the authors to respond to comments well in advance of the IESG telechat.  In any case, please try to have your review (or re-review) done by the Friday before the Thursday telechat. 

As a general rule, reviews after the telechat date are not useful, but check the [IETF Datatracker](https://datatracker.ietf.org/) to see if the document has been deferred. In most cases you will get email saying that the review is no longer useful when the document is already past the telechat.

## What to Look For

The most important item is to give the ADs a sense of how important it is that they pay attention to the document. The SECDIR and SEC AD reviews of documents have produced the following list of [Common SEC Area Review Issues](TypicalSECAreaIssues) that have been repeatedly identified.

## Re-Reviews

Once you have been assigned a document, you are generally expected to stay with that document through completion, even if additional reviewers are assigned.  Accordingly, when a document you've already reviewed is revised or is scheduled for the IESG telechat, the secretary may assign it to you again for a recheck.  These reassignments will be flagged with an "R" in the assignment email.

Look to see if the draft has changed since the last call review and briefly let the ADs know if any identified showstopper problems have been fixed or still remain. Feel free to include your original review, just to make it easier to find. Particularly on these returning items, remember that datatracker history tab has diffs between versions. Send the re-reviews just like the initial review.

## Early Reviews

The WG chair can request and early review of the document he feels is almost ready (usually after WG LC or similar), just to get early feedback on the document before the IETF LC. The early reviews are in separate section in the assignment email, and they should be done during next two weeks or so to be useful for the WG. Their reviews should be sent to the same places than other reviewers, but it is very important to include the draftname.all@ietf.org so the reviews go the WG Chairs. You may also include the WG list if you want, but WG chairs can also forward your reviews there.

## Where to send reviews

You can either use the datatracker to complete your review, or you can send the review email to the mailing lists. If you use the datatracker to complete the review, there is option to either write the review in the form, or upload a text file containing the review, or search for the email review done earlier from the archives, and point the review to that. In the first two cases the review will automatically be sent to certain email lists, including secdir@ietf.org. 

In all cases the review must be sent to the secdir@ietf.org, and this can either be done manually, or by using the datatracker. In case you send email manually, please put the document name and version number in the Subject line, and start a new thread. Do not reply to any emails, for example your previous review, as the secdir secretary will only check the new threads on the secdir list to find your review, and mark your review done.  Send all reviews, including "no problem" reviews, to iesg@ietf.org, secdir@ietf.org, and draftname.all@ietf.org.  The latter alias reaches draft editors, chairs, and others listed in the ID tracker's notification field. Note, that the \<draftname>.all alias does not have the version number of the draft in it.

You may send to last-call@ietf.org instead of (or in addition to) the IESG, if you prefer. If there's something you want to share only with the ADs, send a separate, ADDITIONAL, message to them, flagged as private, but also send a note to the broader world, as above.

Here's some sample boilerplate, if you care to use it:
> 
> I have reviewed this document as part of the security directorate's 
> ongoing effort to review all IETF documents being processed by the 
> IESG.  These comments were written primarily for the benefit of the 
> security area directors.  Document editors and WG chairs should treat 
> these comments just like any other last call comments.
> 
> The summary of the review is XXX

Where the XXX is the general summary whether the draft is '''Ready''', '''Ready with nits''', '''Ready with issues''', '''Almost ready''' and '''Not ready'''.

'''Ready''' means you do not have any real comments to the document. '''Ready with nits''' means there was something in the document which might require new revision, for example typo, or changing language more readable, but not something that really would require ADs to put discuss on the document. '''Ready with issues''' means there is something in the document that might require ADs to put discuss on the document, or which they need to check more carefully, i.e. some kind of security issue. 

When sending with the datatracker form the boilerplate will NOT be automatically added, so if you want to have it, add it there manually.

### Useful email aliases

WG chairs may be reached at wgname-chairs@ietf.org. 

Replace draftname by draft-ietf-wg-topic  (without -xx version):

| draftname@ietf.org | Draft authors (for now, could change) |
| ---- | ---- |
| draftname@ietf.org | Draft authors (for now, could change) |
| draftname.authors@ietf.org | Draft authors |
| draftname.chairs@ietf.org | WG Chairs (if the draft is a WG draft) 
| draftname.notify@ietf.org | The addresses entered into the tracker's email notification field for the draft 
| draftname.ad@ietf.org | The sponsoring AD, if the draft has gone to the IESG 
| draftname.all@ietf.org | All of the above, merged into one alias |

## Workload

We have about fifty reviewers in the pool. In recent years there were about 20 documents to be review each month. 

Accordingly, we should each be assigned one new document approximately every two months. Note that one document might easily come up two or more times (e.g., during Early review, then again during IETF last call and when placed on the telechat agenda).

The secretary is using a datatracker review tool for round-robin assignments. This tool is also available for the reviewers by just logging in to the datatracker, and selecting "My reviews" from the account menu. [https://datatracker.ietf.org/accounts/review/ My reviews] page contains list of assigned documents, and also the list of latest documents reviewer has reviewed.

In the end of that page, there is also option to edit the settings for the reviewer, i.e., reviewer can mark himself being away for period of times. 

After finishing the review by sending email to the mailing lists, the reviewer, should click the assigned reviews link and then select "Compete review" from the page, and fill in the review form. This is needs to be done after sending the email to the specific lists so mailing list search will find the link to the review.

The list of reviewers in order can be seen from the [https://datatracker.ietf.org/group/secdir/reviewers/ Security area reviewers] page. Note that this list may differ vary slightly from the current [https://www.ietf.org/mailman/roster/secdir mailing list membership].

## Accomodating yourself

Feel free to send secdir-secretary@mit.edu any requests regarding your own secdir workload (e.g., "this document can easily be split into three segments, could you assign two more people", "I'm going on holiday, don't give me any assignments until September 2nd", "I'm bored, give me more to do"). While we're happy to accomodate your schedule, more notice will make it easier to reassign the review to someone else. 

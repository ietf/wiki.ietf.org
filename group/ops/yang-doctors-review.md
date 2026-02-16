---
title: YANG Doctor Detailed Review Procedure
description: 
published: true
date: 2026-01-23T22:51:48.876Z
tags: 
editor: markdown
dateCreated: 2022-12-20T20:20:16.981Z
---

# YANG Doctor Detailed Review Procedure
## Useful Contacts

Mailing list : yang-doctors@ietf.org

Shepherding Area Director :
Mahesh Jethanandani mjethanandani@gmail.com

Secretaries:
Per Andersson per.ietf@ionio.se and Quifang Ma maqiufang1@huawei.com

## Quick Links

   [YANG Doctors home page](https://datatracker.ietf.org/group/yangdoctors/about/)
   [YANG Doctors review tracking](https://datatracker.ietf.org/group/yangdoctors/reviews/)

##  Doctors Review Process
### Purpose

The YANG doctors (reviewers) are supposed to help the OPS AD responsible for Network Management to review documents containing a YANG module that are destined to be published.
The YANG doctors can also act as NETCONF/YANG advisors to WGs in any area of the IETF. Such is normally arranged between the WG chairs and the responsible ADs.

All documents with a YANG module will be passed by a YANG doctors review before they will be approved by the IESG.
A YANG Doctors review **MUST** be done before or during WG LC. The review **MAY** be repeated during the IETF LC with the same reviewer if WG chairs see it as helpful. Early reviews before WGLC **MAY** be done with a document assumed to be stable if the WG needs particular help and to catch up issues early especially regarding YANG module structure etc.

As a general rule, reviews shall be done before or during the WGLC. A late review during IETF LC is the last resort and should be avoided.
### Schedule and Deadlines

The YANG doctors are all volunteers so it may take some time. The review time for documents are proposed as below:

-    WG document going to WGLC: The general practice is 2 weeks (can be extended up to 4 weeks).
-    WG document under development (Early Review): Usually 3 weeks (can be extended up to 8 weeks).
-    Stable non-WG document planned to publish: Initial deadline for 4 weeks, reviewed as best effort. 

The deadline can be extended if agreed by the involved parties.

### How to request YANG Doctors Review?

ADs and WG chairs responsible for a document with YANG modules are in charge to enter the review request directly via the datatracker page of the draft.

Non-WG documents can only be reviewed if the WG chair states that there is a plan for adoption and the YANG module is ready for review or an AD states that the draft is stable and it is going to be published as an AD sponsored RFC.

To request a review please:

- Sign-in to the Datatracker and go to the draft page, e.g. https://datatracker.ietf.org/doc/draft-ietf-netconf-keystore/
- Click on the button "Request review",
- Choose the type of review (Early, Last Call, Telechat) and set a deadline fitting the document type as explained above,
- If required a particular YANG doctor can be proposed as reviewer in the comments. 

### Assignment of YANG Doctors to reviews and Workload

YANG Doctors secretary assigns open requests to reviewers using the review tracking tool on datatracker. The tool on datatracker proposes a reviewer based on the round robin approach.
If the document was reviewed earlier the tool recommends the same reviewer again.

Following the assignment of a reviewer to a YANG module the tool generates an email informing the reviewer by indicating the type of review (Early, LC or Telechat) and the review deadline.

YANG doctors can enter their unavailable times into their datatracker account profile to avoid an assignment during their absence.

### What to look for during a review

The most important item is to give the AD a sense of how important it is that they pay attention to the document.
For YANG reviews the YANG Doctors will apply the BCP 216 (RFC 8407) on the Guidelines for Authors and Reviewers of YANG Data Model Documents https://datatracker.ietf.org/doc/rfc8407/. The YANG language syntax and semantics should be analyzed. The compliance with [Network Management Datastore Architecture](https://tools.ietf.org/html/rfc8342) should to be ensured (see also [NMDA guidelines](https://tools.ietf.org/html/draft-dsdt-nmda-guidelines-01)). In addition, when the semver set of documents are approved by IESG for publication, the review should check to make sure that a semver statement has been added to the revision statement in the module.
### Where to enter the review result

YANG Doctors enter the review result into the review tracking tool with following procedure:

-    The reviewer opens the corresponding draft review request page from the list at: https://datatracker.ietf.org/group/yangdoctors/reviews/
-    Clicks on the "Complete review" button
-    Enters the review state, the number of the reviewed revision, and the review result.
-    In case the reviewer enters the review result directly into the tool or uploads a text file, the tool generates an email to YANG Doctors maillist, draft authors and the related WG maillist.
-    Please choose as review state any of **Not ready, On the Right Track, Almost ready, Ready with issues, Ready with Nits** and **Ready**.

**Ready** means the document is in good shape and the reviewer does not have any real comments to the document.
**Ready with nits** means there was something in the document which might require new revision, for example typo, or changing language as more readable, but not something that really would require ADs to put discuss on the document.
**Ready with issues** means there is something in the document that might require ADs to put discuss on the document, or which they need to check more carefully, i.e. some kind of security issue.

If the reviewer discovers an important issue that would require feedback from the entire IETF community, you may include ietf@ietf.org in addition to other mailing lists. If there's something the reviewer wants to share only with the ADs, an additional separate message can be sent to the AD, flagged as PRIVATE.

The assignment of reviews for YANG modules from external organizations will be listed on the YANG review history page at: (/group/ops/yang-doctors-review-history). 
The review result will be sent as usual to YANG Doctors maillist, draft authors ([draft].all@ietf.org) and the related WG maillist. Please provide review state and result as described above.
### Early Reviews

Since YANG is a relatively new technology for some IETF working groups, proactive reviews from YANG doctors can be requested also in an early phase of the development (WG document under development). Our secretary assigns those documents when the responsible ADs or WG chairs signal some level of maturity. Also, the WG chair can request an early review of the document he feels is almost ready, just to get early feedback on the document before the IETF LC. Early reviews are indicated in the assignment email generated by the datatracker, and they should be done within approx. 3 weeks to be useful for the WG. It’s expected that early reviews will imply multiple new draft versions. So the reviewer must be ready to follow this draft for some time.
For some background information on early reviews, see [EarlyReview](/group/ops/EarlyReview).

### Re-Reviews

Once a reviewer has been assigned to a document, the reviewer is generally expected to stay with that document through its completion, even if additional reviewers are assigned. Accordingly, when a document was reviewed already by a particular reviewer and is then revised or scheduled for the IESG telechat, YANG Doctors secretary may reassign it to the same reviewer for a recheck.

The reviewer should look whether the draft has changed since the last call review and briefly let the ADs know if any identified showstopper issues have been fixed or still remain (please CC YANG doctors secretaries as well, for tracking). Feel free to include your original review, just to provide a history. Particularly on these returning items, remember that the HTML-version of the draft (at https://tools.ietf.org/html/draft-ietf-xxx) provides precomputed diffs for WG docs.

### Improvement of YANG language and usage guidelines

Under some circumstances, the YANG doctors might discover open issues in BCP 216 (RFC 8407) or provide feedback worth documenting for the larger community. This should be documented on the [YANG questions/answers WIKI](https://wiki.ietf.org/e/en/group/ops/YANGDoctorsFAQ).
### Useful email aliasses

FYI, all existing aliases, along with its members, are documented at http://tools.ietf.org/draft/aliases.

WG chairs may be reached at wgname-chairs@ietf.org.

Replace draftname by draft-ietf-wg-topic (without -xx version):
|                                 |                                                                                    |
|---------------------------------|------------------------------------------------------------------------------------|
| draftname@ietf.org           |  Draft authors                                                                     |
|  draftname.authors@ietf.org  |  Draft authors                                                                     |
|  draftname.chairs@ietf.org   |  WG Chairs (if the draft is a WG draft)                                            |
|  draftname.notify@ietf.org   |  The addresses entered into the tracker's email notification field for the draft   |
|  draftname.ad@ietf.org       |  The sponsoring AD, if the draft has gone to the IESG                              |
|  draftname.all@ietf.org      |  All of the above, merged into one alias                                           |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-07-31. It was migrated from the old Trac wiki on 2022-12-20.*
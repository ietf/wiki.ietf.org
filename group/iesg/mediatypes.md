---
title: Media Types
description: 
published: true
date: 2022-09-14T15:15:13.990Z
tags: iesg
editor: markdown
dateCreated: 2022-09-14T15:15:13.990Z
---

# Media Type Registration Review Practices 

## Media Type Registration Reviews - Standards !Tree, with or without Internet Drafts 

Section 5 of RFC 6838 and Section 2.2 of RFC 4289 (which make up BCP 13) describe media type registration procedures.  '''Note the recommendation for community review on the ietf-types@iana.org mailing list for registrations in the standards tree.'''
As described in Section 2.2.1 of RFC 4289, the review period is two weeks.

An AD who requests IESG evaluation of a document containing a media type registration should confirm that media-types review was requested and completed.  If an internet-draft is being evaluated '''this should be done by noting the date of the request and actions taken as a result of the review in the ballot write-up'''.  If the review is taking place as part of a management item (to review a registration request received from another standards body (see below) without an internet-draft, which is the current exception) the date and review results should be included in the text for the management item.

The review request should be visible in the archives of the media-types mailing list.  The archives can be found here:

   https://www.ietf.org/mailman/listinfo/media-types

## Standards Tree Registrations From Other SDOs

BCP 13 describes the process for making registrations into the Standards Tree by parties other than the IETF.  These are usually some kind of standards development organization (SDO).

The BCP stipulates that IANA maintains a list of "recognized" SDOs approved to make such registrations directly.  It can be found here:

https://www.iana.org/assignments/iesg-recognized-organizations

When such a registration request comes, if the requesting SDO isn't on that list, the IESG is asked to approve that addition.  If the IESG agrees, then this SDO can make future standards tree registrations without notification of the IESG.  If it does not, then the next request from this same SDO will face this process again.  In any case, the request is still forwarded to the media type reviewers for analysis and any necessary development.

Historically this evaluation is done by an ART Area Director, or at least someone who's familiar with media types.  BCP 13 includes no criteria for deciding what SDOs can be added to this list, nor does it define "recognized", so it's at the whim of whoever is answering the question.

The purpose of this check is not to double-check the application or second-guess the work of the media type reviewers.  The reason for this check is to give the IETF an opportunity to ask a couple of questions:

1. Are more of these anticipated?
1. Given the technical work related to the request, should we recommend to the IAB that a liaison be created to this SDO?

In terms of what's "recognized", several things might be considered, but this list is obviously not exhaustive:

* quality of their technical work
* stability of their published documents
* citations by other bodies
* published organizational structure (bylaws, management, etc.)
* open vs. closed
* incorporation (perhaps as a non-profit)
* documentation of previous meetings
* easily discoverable
* established liaison with the IETF
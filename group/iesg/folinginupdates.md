---
title: Folding In Updates
description: 
published: true
date: 2022-11-29T19:37:35.786Z
tags: iesg
editor: markdown
dateCreated: 2022-09-07T14:43:24.263Z
---

# Folding in Updates
When we want to progress a Proposed Standard (or Draft Standard from before RFC 6410) along the Standards Track to Internet Standard, RFC 6410 is clear that relevant errata need to be considered.  But there is no guidance about what to do when other specifications "update" the one in question.

Consider a situation where we want to progress RFC AAAA to Internet Standard, and we have RFCs BBBB, CCCC, and DDDD that are all marked as "Updates AAAA".  Can AAAA be reclassified as Internet Standard directly?  Do we need an AAAAbis document for this?  If so, what changes go into AAAAbis, and what happens to the three updates?

The IESG considers that the content of the ultimate Internet Standard is up to the rough consensus of the working group and the IETF community, and that judgment needs to be applied for each situation.  In general, updates that are truly considered to be "part of the standard" should be incorporated into a "bis" document.  The updates that are not part of the base standard, but are extensions or are otherwise insufficiently mature, should not be incorporated, but should be cited as informative references to maintain the sense that they update the Internet Standard, just as they updated the Proposed Standard.

Of course, if none of the updates are to be considered part of the Internet Standard, and no errata need to be incorporated, the Proposed Standard can be reclassified "in place" as Internet Standard, without publishing a new RFC.

Example 1:
RFC AAAA is updated by RFCs BBBB, CCCC, and DDDD.  None of the updates are to be part of the Internet Standard, but they remain applicable as updates to it.  In this case, RFC AAAA may be progressed to Internet Standard (using the status-change process), without a new RFC.  If errata need to be addressed and that requires an AAAAbis document, it will obsolete AAAA and cite the other RFCs as in Example 2.

Example 2:
RFC AAAA is updated by RFCs BBBB, CCCC, and DDDD.  CCCC should be part of the Internet Standard, and BBBB and DDDD remain applicable as updates to it.  In this case, an AAAAbis should be produced, which obsoletes AAAA and CCCC, and which incorporates what CCCC specifies.  There should be informative references to BBBB and DDDD, with citations that say that they are applicable as Proposed Standard updates to the standard.

Example 3:
RFC AAAA is updated by RFCs BBBB, CCCC, and DDDD.  CCCC should be part of the Internet Standard, DDDD remains applicable as an update to it, but BBBB is no longer applicable.  In this case, an AAAAbis should be produced, which obsoletes AAAA, BBBB, and CCCC, and which incorporates what CCCC specifies.  There should be an informative reference to DDDD, with a citation that says that it is applicable as a Proposed Standard update to the standard.  The Introduction section should explain that BBBB is now obsolete and is no longer applicable.  (Alternatively, AAAAbis could request that BBBB be reclassified as Historic, rather than flagging it as obsolete.  See the [IESG Statement on Designating RFCs as Historic](http://www.ietf.org/iesg/statement/designating-rfcs-as-historic.html).)

Again, the judgment of which updates, if any, belong to the standard, which remain applicable as updates, and which have become obsolete is up to the working group, and ultimately to the IETF community during last call.  The IESG will offer advice and guidance, as necessary.
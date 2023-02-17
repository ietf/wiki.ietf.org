---
title: Publish Path
description: 
published: true
date: 2023-01-13T16:32:46.381Z
tags: iesg
editor: markdown
dateCreated: 2023-01-13T16:14:58.658Z
---

# Publish Path
There are more details for various aspects of the publication path throughout this wiki. This section is just intended as a very brief summary.

At some point, a WG or an individual decides that a draft is ready for IESG consideration. They will make a formal publication request - sometimes to the IESG as a whole, sometimes to the AD concerned, and sometimes even to *support@ietf.org*. (Independent submissions go to the Independent Submissions Editor (ISE), which is formally outside the IETF Standards Process, and the IESG portion of their processing is described in RFC 5742 (BCP 92).)

A truly out-of-the-blue publication request is rare, but in that case the IESG Chair will need to decide which AD will shepherd the request.

However it happens, the Internet-Draft will enter the ''Publication Requested'' state. If it came from a WG, the [PROTO process](http://datatracker.ietf.org/doc/rfc4858/?include_text=1) applies. It is the shepherding AD's responsibility to move the draft immediately into the ''AD Evaluation'' state and to start evaluation. If all is well, the AD then needs to start a two or four week last call^1^. If all is well, the AD then needs to move the draft into ''IESG Evaluation'' and onto a forthcoming telechat agenda. If all is well after the telechat, the AD needs to ensure that the draft enters the ''Approved - Announcement Sent'' state, after which the RFC Editor takes over.

This is the simple case - no problems found during AD Evaluation, Last Call or IESG Evaluation. But normally, some problems ''are'' found and discussion with the PROTO shepherd, the authors, and the WG may be needed to resolve them. Large or complicated changes to the draft will necessitate a new draft and the shepherd will set the state to ''Revised ID Needed''. Smaller changes can be made by inserting a ''Note to the RFC Editor'' in the tracker, with precise instructions for the change to be made.

Note that IETF consensus (after IETF last call) on an AD-sponsored Informational document that describes a vendor-specific protocol or protocol extension implies consensus for the publication of the document as a clear description of the protocol rather than approval of the content of the document an agreed technical solution.

The IESG has some new target times for various steps along the publication path (note that these are asiprational):

 <1 week in Publication-Requested
 2 weeks in AD evaluation
 2 weeks for last call (4 weeks for non-WG)
 0 days for waiting for write-up
 0 days for waiting for AD go ahead
 2-3 weeks for IESG evaluation
 1 week for PROTO shepherd or AD to report actionable DISCUSS comments
 2 weeks for revised ID.


^1^ [Even Informational and Experimental documents need to be IETF Last Called]()
---
title: Historic Status
description: 
published: true
date: 2023-02-20T20:18:21.669Z
tags: 
editor: markdown
dateCreated: 2023-02-20T20:18:21.669Z
---


# In-place RFC Status Changes (was: Moving an RFC to Historic Status)

The IESG now has "Status Change" documents as a tool to change an RFC's status without issuing a new RFC. These documents are stored in the datatracker.

What the IESG has told the community about Status Change documents appears in an IESG statement (https://www.ietf.org/iesg/statement/designating-rfcs-as-historic.html) that describes three types of Status Change documents.

*(Note: the title of the IESG Statement is somewhat misleading, because we expected that Status Change documents would typically be used to move RFCs to Historic status, but in principle, there's no reason they can't be used for other types of moves)*

The AD initiating this action chooses one of the three types, depending on how much justification is necessary, how controversial the move is expected to be, and whether the move is part of other work that will be Last Called at the same time. Start by picking a category.

Once you know what you're going to say, the datatracker Status Change page has a button for "New RFC Status Change", which creates a blank Status Change document.

In the words of Cindy:

> To create the status change doc, please go to
> https://datatracker.ietf.org/doc/rfc-status-changes ("Documents > RFC status
> changes" from the Datatracker menu) and hit the "New RFC status change" button
> at the top of the page. From there, you can fill in the details.

Do the right thing, and save your document. These documents go through the stages an AD would expect (currently, Needs Shepherd, AD Review, Last Call Requested, In Last Call, Waiting for AD Go-Ahead, and IESG Evaluation, but the canonical states are at ​https://datatracker.ietf.org/doc/help/state/status-change/).

**Note:** When the IESG approves a Status Change, the RFC picks up a new Status in the RFC Editor index, but no canonical text changes - the front page of the RFC isn't updated. That also means that document copyright statements, IPR statements, etc. don't change. In some cases, this has become an issue that made advancing a Standards-Track RFC without changes controversial, depending on things like how old the document's copyright statement and IPR statements happen to be, and how many approved errata could have been folded in. Your mileage may vary.

**Note:** Spencer was amazed that this page hadn't been touched in six years and completely replaced the outdated content, but he did that while processing his first Status Change document. He'll try to circle back and do an update if he encounters anything worth mentioning.



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-09-04. It was migrated from the old Trac wiki on 2023-02-17.*
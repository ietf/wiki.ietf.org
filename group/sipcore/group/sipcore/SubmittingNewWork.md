---
title: Submitting New Work
description: 
published: true
date: 2022-12-21T21:58:33.332Z
tags: 
editor: markdown
dateCreated: 2022-12-21T21:58:29.694Z
---

You've decided that you want to bring some new SIP-related work to the IETF, and want to know the best way to do that. Excellent -- we're happy to have new ideas and new people to work with us. This page offers some pointers that will increase your chances of success, and should hopefully prevent unnecessary delays.

The most important advice is: if you are not 100% certain which working group you should be working with, then you should start by taking your work to DISPATCH. To be clear, the charter for SIPCORE is actually quite narrow, and allows the working group to work on exactly two kinds of things:

1. Legacy work left over from the old SIP and SIPPING working groups (for example, the RFC4474bis work falls under this category), and
2. Changes and fixes to the core SIP protocol (RFCs 3261 through 3265).
Item #1 is obviously closed to new work. Item #2 does not include protocol extensions.

For example, if you identified a problem with one of the SIP state machines, or found an issue with the way that SIP's timers interact with each other, that would go in SIPCORE. On the other hand, if you want to add a new header field, or even a new method, to the SIP protocol to accomplish something new, that does *not* go in SIPCORE.

In general, then, if you want to do new work with the SIP protocol, here is your easiest path to success:

1. Subscribe to the ​[DISPATCH mailing list](https://www.ietf.org/mailman/listinfo/dispatch)
2. Send an email to that list, focusing primarily on giving a high level description of the problem you are trying to solve, preferably with some use cases. If you have some thoughts on how to solve the problem you can sketch them too, but don't invest too much effort in that, since it is likely to change significantly after the the problem is discussed by the community.
3. Frame the email above so as to solicit discussion and feedback on it. Hopefully that will come. If not, then perhaps your problem isn't of general interest. Or maybe your problem will need to be further clarified so others can relate to it.
4. If it looks like there is interest, you can then [create a draft on your topic](https://author-tools.ietf.org/) and [submit it to the internet-drafts repository](https://datatracker.ietf.org/submit/). Give it a name like "draft-your-surname-dispatch-your-topic-00.txt". In this draft you would formalize the problem statement, use cases, and a list of requirements that any solution to the problem statement must fulfill. *Note that documents cannot have names starting with "draft-ietf" unless and until they have been adopted by an IETF working group.*

5. Then, send an email to the DISPATCH list referencing this draft and asking for comments on it.
6. Based on the comments received, you will likely want to submit one or more revisions to the draft, refining it.
7. Somewhere along the way in this process, the DISPATCH WG chairs will probably get involved to guide you in how to proceed, based on the interest in the subject expressed on the list.

  It is possible to skip directly to the step where you submit an internet-draft. However, if this is your first time through the process, you will probably have an easier time -- and spend less work overall -- if you start from the beginning.
  
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-08-14. It was migrated from the old Trac wiki on 2022-12-21.*
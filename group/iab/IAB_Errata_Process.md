---
title: IAB Errata Process
description: 
published: true
date: 2023-12-05T21:06:37.572Z
tags: 
editor: markdown
dateCreated: 2023-12-05T21:06:37.572Z
---

# IAB Errata Process
## IAB Processing of RFC Errata for the IAB Stream
These are strong guidelines and not immutable rules. Common sense and good judgment should be used by the IAB to decide what is the right thing to do. Errata are meant to fix "bugs" in the RFC and should not be used to change what the IAB meant when it approved the RFC. These guidelines only apply to errata on RFCs in the IAB stream. They apply to new errata and not errata that have already been processed. Note that the IAB is more liberal with the Verified state than the IESG is in the IETF stream; the IESG must take care not to change IETF consensus, whereas an IAB stream document typically just reflects the consensus of the IAB itself, which is easier to verify than IETF consensus.

After an erratum is reported, a report will be sent to the IAB and the authors, and the Program (if any) in which it originated. The IAB will classify the erratum as falling under one of the following states:

- **Verified** - The erratum is appropriate under the criteria below and should be available to the Internet community.
- **Rejected** - The erratum is in error, or proposes a change to the RFC that should be done by publishing a new RFC that replaces the current RFC.
- **Hold for Document Update** - The erratum is not a necessary update to the RFC. However, any future update of the document might consider this erratum, and determine whether it is correct and merits including in the update. This state should never be used for workshop reports, since they are never updated.

Guidelines for review for IAB consensus documents are:

1. Changes that address errors that could cause significant confusion, or correct text to be what was clearly originally intended, should be Verified.
2. Changes which are simply stylistic issues or simply make things read better should be Hold for Document Update.
3. Changes that might be different from the intended IAB consensus when the document was approved should be either Hold for Document Update or Rejected. Deciding between these two depends on judgment. Changes that are clearly modifications to the intended consensus, or involve large textual changes, should be Rejected. In unclear situations, small changes can be Hold for Document Update.

Guidelines for review for workshop reports are:

1. Changes that might be different from the intended consensus during the workshop (even if later discovered to be wrong) should be Rejected.
2. Changes that address errors that could cause significant confusion, or correct text to be what was clearly originally intended, should be Verified.
3. Changes which simply make things read better should be Rejected.

## Process
- The RFC editor mails iab@iab.org telling us there is an errata.
- The errata will be available through the [errata webpage](http://www.rfc-editor.org/errata.php)
- A designated person in the IAB will starts a 2 week call on the IAB list.
  - (A link to the erratum can be constructed in a way similar to: http://www.rfc-editor.org/errata_search.php?rfc=4948)
- Discussion takes place on the IAB list
- After the two weeks the designated person pokes the chair in order to determine consensus and uses the RFC editor webpage to update the status of the erratum.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-11-18. It was migrated from the old IAB wiki on 2023-12-05.*
---
title: Chartering Working Groups
description: 
published: true
date: 2022-11-29T19:39:21.033Z
tags: iesg
editor: markdown
dateCreated: 2022-09-20T22:26:53.302Z
---

# For chartering a new working group: 

- Make sure you're logged into the datatracker, as this stuff is only visible to ADs.
 - Go to the datatracker page for the WG acronym <https://datatracker.ietf.org/wg/WGNAME/about/> (the WGNAME needs to be in lower case), to make sure about whether it already exists or not.
 - If you find an **unrelated** working group with the same acronym, however old that working group was, stop here and pick a new name.

## If you're chartering something brand new, with a new acronym that hasn't been used before: 
 - The previous step should have given you "The page you were looking for couldn't be found."
 - Hover over "Groups" at the top left and select "Chartering Groups" from the drop-down menu.
 - Under "WGs", press the "Charter new WG" button.
 - Fill in the Name, Acronym, and Area Director fields, and set the State to "Proposed".
 - The Secretariat will populate the "List email", "List subscribe", and "List archive" fields on the WG's datatracker page, so you don't have to fill them in.
 - Press the "Start chartering" button at the bottom of the page.
 - You will be taken to the charter submission page.

## If you're chartering with an acronym that existed before, because you're re-creating a working group that used to exist, or chartering a working group with the same acronym as a BoF: 

 - The previous step should have taken you to the BoF's or old WG's "about" page.
 - The State will be "BOF", "BOF Concluded", or "Concluded".  Change it to "Proposed".
 - Change the "Area Director" field if necessary.  You can also change the "Name" field, in case the full name has been tweaked.
 - Press the "Submit Charter" button.
 - You will be taken to the charter submission page.

## When you get to the charter submission page: 

 - Set the state to "Draft Charter", press the "Change charter text" button, and paste in text or select "Choose File" to get the text from a plain-text file.
 - The datatracker does reasonable text flow now, so it works best for continuing edits and diffs if you just put in plain, un-flowed text.  Use line-breaks only to separate paragraphs.
 - Markdown doesn't work, so don't use it.  If you want bullets you have to do that manually.  And you can't do highlighting, such as bold or italics.
 - Submit the charter.  You will be prompted to send an optional message to the Secretariat.
 - The Secretariat will automatically create a mailing list for the proposed working group and will announce the proposed charter and the mailing list to the community.  If you do not want that, want to re-use an existing mailing list instead of creating a new one, or have any other comments or instructions to pass on, put that information there.
 - You can also enter any comments you have that should go into the datatracker.
## Charter states: 

**Draft Charter** means that you've entered a charter proposal, but it's not being formally evaluated yet.  We should enter charter proposals in this state as early as reasonably possible, so a mailing list will be created, the community will be informed, and open charter discussion can happen.  The IAB can also comment on the charter at this point.
**Start Chartering** means that the charter is under formal review by the IESG, and the Secretariat will schedule it on the next telechat.  Select this state when the charter is ready for formal evaluation and can be placed on a telechat that could happen in as soon as one week.
**External Review** means that formal review of the charter is being announced on the ietf-announce and new-work lists.  That review normally runs for 10 days, and the charter will normally be scheduled for the following telechat.  This is set by the Secretariat after the initial IESG ballot, and ADs should not need to set this state.
**IESG Review** means that External Review has completed and the charter is under review for final approval.  This state isn't always used, and sometimes it just stays in External Review.  In any case, the Secretariat will take care of this, and ADs don't need to set this state.

## When you're ready to put the charter into formal evaluation:  

 - Go to the charter page, which you can get to from your AD dashboard or from the "Chartering Groups" page.
 - Change the state to "Start Chartering".  As above, you can enter comments both for the Secretariat and for recording in the datatracker.
 - **Important:** This creates an evaluation ballot, but, unlike the case with document ballots, **it does not** record a "Yes" ballot for you.  You must go to the ballot and use "Edit Position" to do that yourself.  At this point you can put any comments for the IESG and community into your ballot, and have it sent to the IESG and the WG mailing list.

## Editing the charter: 

 - You will be updating the charter throughout the review process.  The initial version will have the suffix "-00-00", and subsequent versions will increment the second number, "-00-01", etc.  The final, approved version will charter the working group with a suffix of "-00".
 - The charter needs one "Yes" position and no "Block" positions to proceed to External Review.  There is no requirement for a certain number of "No Objection" positions (similar to Informational documents).
 - On the telechat, if there are no Blocks but you still need to make some edits in order to address comments, ask the Secretariat to hold it for edits, and then inform the Secretariat when you're ready with it.  Custom is to send email to the IESG, BCC iesg-secretary, and use a subject such as "Approved: charter-ietf-WGNAME-00-04".
 - The Secretariat will change the state to External Review and initiate the external review process.

## After External Review: 
 - When External Review starts, the Secretariat will automatically schedule the charter for its final approval on the next telechat that's at least 10 days in the future.
 - There will also be a new, empty ballot, set up for final approval.
 - You (and everyone else) will need to ballot again.  It's easy to forget this; don't.
 - Editing the charter here works the same as above, as do the rules for approval and letting the Secretariat know everything's ready.
 - After final approval, the Secretariat will check that everything that's needed is in place (see below), and will send out the WG Action announcement.

## Are all ducks in a row?: 
 
 - (We hate it when ducks fight.)
 - With the Secretariat creating and announcing WG mailing lists early, all that's likely to be missing now are chairs and milestones.  The Secretariat will remind you on the telechat if you don't have chairs set up in the datatracker.
 - Please do not wait until the last days to try to find chairs.  It's best to start your chair search early, even while the charter is being discussed in the community.  Prospective chairs might appreciate having input to the charter, if they haven't already been participating in the discussion.
 - Consider not picking the WG's proponents as chairs.  We're better off with chairs who are less tied into the outcome, and who can be unbiased managers.
 - Consider pairing a new chair with an experienced one as often as possible, to help develop our pool of experienced chairs (and possible AD candidates).
 - Consider diversity of perspectives when looking for chairs.  A working group proposed by application vendors, for example, might do well by having at least one chair from the network operations side, or the security side.
 - And then there are the milestones…

## Milestones: 

 - We have gone back and forth about how important it is to have milestones before charter approval, and when they're needed.
 - The IESG's current thinking is more toward having initial milestones in place for External Review, and definitely having them before final approval.
 - It would be good to steer the charter discussion to include discussion of initial milestones so there's not a mad scramble to come up with milestones in a rush.
 - Milestones are entered separately, not as part of the charter text.  See the "Edit Milestones" button on the charter submission page.



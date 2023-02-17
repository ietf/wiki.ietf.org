---
title: Datatracker Review Tool How-To
description: 
published: true
date: 2023-01-25T05:23:06.882Z
tags: 
editor: markdown
dateCreated: 2022-12-09T01:34:41.277Z
---

# Datatracker Review Tool How-To

The Datatracker Review Tool is a feature that implements the requirements covered in [RFC 7735 - Tracking Reviews of Documents](https://datatracker.ietf.org/doc/rfc7735/).

Log into trac to see the [current list of bugs and enhancements for the Datatracker Review Tool](https://trac.tools.ietf.org/tools/ietfdb/query?status=!closed&component=review%2F)

This how-to is somewhat Gen-ART-centric, but I hope that it is useful for reviewers in other directorates.

The information on this page is also geared for reviewers. Information for secretaries can be found on the [How-to for Secretaries page](/group/gen/DatatrackerReviewToolHowToSecretary).

## Accessing the Review Tool

Prerequisites

* A Datatracker username and password. If you do not have these, go to https://datatracker.ietf.org/accounts/create/ to create or reset your login. Once you have created an account, let the secretary know so that you can be given access to the review tool. 

To access the tool:

1. Go to https://datatracker.ietf.org/.
2. Select **Sign in** from the **User** menu. Provide your username and password. Upon successful login, the front page of the Datatracker reappears and your username is displayed as a label for the user menu. If your login was unsuccessful, please visit [the Datatracker account page](https://datatracker.ietf.org/accounts/create/).
3. To ensure that your user information is correct, select **Account Info** from your user menu to check your user information. 

To see an overview of your review team's assignments:

1. Go to https://datatracker.ietf.org/group/genart/reviews/. You do not have to be logged in. This information is generally available.
2. You can also select **genart reviews** from the **Documents** menu. 

## Setting Review Preferences

The review tool allows you to specify how often you want assignments, and when you want to be reminded of deadlines. It also allows you to set times of unavailability.

1. Log into [Datatracker](https://datatracker.ietf.org/).
2. Select **My Reviews** from your user menu. The **Review Overview** page appears.
3. If you have been participating on a review team for any period of time, you may need to scroll down to the bottom of the page to find your settings. You will have separate sections for each review team in which you are a participant.
4. Click the **Change Settings** button. The **Change reviewer settings** page appears.
5. Click the **Save** button when you are done with the settings. 

The following preferences can be set:

**Review wishes**
&nbsp;&nbsp;&nbsp;&nbsp; In this field, you can select a draft that you would like to be assigned to you when it becomes available for review. 
**Can review at most**
&nbsp;&nbsp;&nbsp;&nbsp;Allows you to set how often you want to receive assignments. 
**Filter regexp**
&nbsp;&nbsp;&nbsp;&nbsp;Allows you specify patterns of draftnames, using regular expressions, that you don't not want to receive as assignments (for instance, your own drafts, or drafts from working groups where you participate heavily). 
**Remind days before deadline**
&nbsp;&nbsp;&nbsp;&nbsp;If set, you will receive an email reminder for any incomplete reviews. Note that the deadline for any Telechat reviews is 2 days before the Telechat. 
**Unavailable periods**
&nbsp;&nbsp;&nbsp;&nbsp;Block off any time where you would be unavailable. You can specify a 'soft' break where you would not be assigned any new reviews but could still follow up on existing assignments.

## Accepting or Rejecting Assignments

You will receive an email when you are given an assignment:

1. Log into [Datatracker](https://datatracker.ietf.org/).
2. Either select **My Reviews** from your user menu or go here: https://datatracker.ietf.org/accounts/review/. The **Review Overview** page appears.
3. In the Assigned Reviews list, click the draftname link. A **Review Request** page appears.
4. Click the **Accept** button to accept the assignment.
5. Click the **Reject** button to reject the assignment - the secretary will be notified that another reviewer needs to be selected. 

## Finishing Assignments

You have three options for submitting your review:

* Entering the review directly into the Datatracker, which will automatically post to gen-art@ietf.org.
* Uploading a text file, which will automatically post to gen-art@ietf.org.
* Pointing to a message that has already been sent to gen-art@ietf.org. 

When you are ready to submit your review:

1. Log into Datatracker.
2. Select **My Reviews** from your user menu (https://datatracker.ietf.org/accounts/review/). The **Review Overview** page appears.
3. In the Assigned Reviews list, click the draftname link. A **Review Request** page appears.
4. Click the **Complete review** button. The **Complete Review** page appears.
5. Under the **Reviewed Revision** field, click a version number to indicate which version you reviewed.
6. Select a summary for the review in the **Result** radio button list. Guidelines can be found on the [Gen-ART wiki](/group/gen). 

If you want to enter your review directly:

7. Select the 'Enter review content' radio button. The **Review content** field appears.
8. Enter your review in the **Review content** field.
9. **Important:** Enter other email addresses (such as ​draftname.all@ietf.org) in the **Cc** field.
10. Click the **Complete Review** button. The review will automatically be sent to the following mailing lists: https://datatracker.ietf.org/mailtrigger/name/review_completed/ and any other addresses that you provide in the **Cc** field. 

If you want to upload a text file:

7. Select the 'Upload review content in a text file' radio button. The **Text file to upload** field appears.
8. Click the **Browse** button. A dialog box allowing you to select the file appears.
9. Select your review file and click **OK** or **Open** (depends on your file system, browser, etc.).
10. **Important:** Enter other email addresses (such as ​draftname.all@ietf.org) in the **Cc** field.
11. Click the **Complete Review** button. The review will automatically be sent to the following mailing lists: https://datatracker.ietf.org/mailtrigger/name/review_completed/ and any other addresses that you provide in the **Cc** field. 

If you want to submit your review to the mailing lists first:

7. Submit your review to the gen-art mailing list. You should also submit your review to the draft's email aliases: https://trac.ietf.org/trac/gen/wiki/WikiStart#DraftEmailAliases
8. Select the 'Link to review message' radio button. Several fields will appear.
9. Select the review from the list of emails that match the search criterion given in **Search** field. The message's link and its content will be displayed in the **Link to message** and **Review content** fields respectively.
10. Click the **Complete Review** button. 

When you have completed your review:

* A **Review of *draftname*** page will be displayed.
* A link to your review appears on the draft's Datatracker page.
* On your **Review Overview** page, the assignment will have moved from your **Assigned reviews** list to your **Latest closed review requests**.
* The review will be closed. 

## Correcting a Review

If you discover a mistake with a submitted review (accidentally selected the wrong version, clicked **Close review** rather than **Reject**, etc):

1. Select **My Reviews** from your user menu (https://datatracker.ietf.org/accounts/review/). The **Review Overview** page appears.
2. Click the draftname link of the assignment. A **Review Request** page appears.
3. Click the **Correct review** button. Make any changes necessary.
4. Click the **Revise review** button. A **Review of *draftname*** page will be displayed, and the review will be closed again. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-07-06. It was migrated from the old Trac wiki on 2023-01-24.*
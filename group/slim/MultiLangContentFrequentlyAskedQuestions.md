---
title: MultiLangContentFrequentlyAskedQuestions Wiki
description: 
published: true
date: 2023-01-15T22:47:32.929Z
tags: 
editor: markdown
dateCreated: 2023-01-15T22:47:28.545Z
---

# Why do we need a new multipart mimetype? 
If we were to use an existing multipart mimetype (for example multipart/alternative) to select the message part based on Content-Language as well as Content-Type, this could lead to unpredictable results within the huge number of existing MUAs that parse multipart/alternative. If we introduce a new multipart mimetype, then the existing MUAs can continue rendering the unknown multipart mimetype as multipart/mixed (in accordance with sections 5.1.3 and 5.1.7 of [RFC 2046](http://tools.ietf.org/html/rfc2046)) (which results in an acceptable rendering) but this would be predictable. Any MUAs that are updated to understand multipart/multilingual will know how to respond.

Also, using a new multipart mimetype will make the specification much easier to understand, make the required coding much simpler and therefore be more likely to get wide implementation as it is an 'easy win' rather than a risky change to existing code.

---
# Won't we already know the user's preferred language?
Not necessarily, because you may need to send an email in multiple languages to a group of people who are legitimate recipients (eg. your employees) but who have not gone through a stage of 'signing up to a mailing list' where preferred language information could have been collected. You will also have a good idea of which languages are likely to be understood by this group so they are an ideal use case.

If you have previously collected the preferred language of potential recipients, then the next step would be to split them up into groups by language so you are not including everyone on the same conversation. This means that anyone who replies is only replying to people who were sent the same email (those who have the same preferred language). This is segregation of employees by language and preventing a feeling of being part of a global team.

If you need to send more than one email, you will have to manage at least two conversations on the same topic.

Even if you can get the preferred language preference up front, you may not have the preference for translation type (original/human/automated) which helps the recipient get a version of the email that they are happy receiving.

---
# Can't we just send all the languages in the same part?
If we did this, it would quickly lead to an email with an unwieldy size especially if the content we wanted to send was quite long in just one language. This forces people whose preferred language is anything other than the first language in the email to scroll through pages of text in a language unknown to them (after clicking on an email whose subject they don't understand). It will also make them feel as though their inclusion in the email was just an after thought and that the email was not really relevant for them because they were just 'additional less important recipients'.

---
# Can't there just be a 'click here to translate' button?
Typically this action will pass the content through an automated translation service. It is well known that the quality of most automated translations are not very good and the professional image that is carefully maintained by Public Relations and Marketing departments would be at risk by bad translations of very carefully crafted messages to customers or prospects. It is much better to get a human translator to create the translations and have them vetted by the PR department and send them in one email. Then you can be absolutely certain of the message that the recipients will receive.

Another issue with a 'click here to translate' solution is that the recipient would need to be online. This does not work well for situations (eg. in unreliable wireless network areas or on a plane) where you have the email in your inbox, but can't get the content in your language until you can get a good internet connection. This would be very frustrating for the recipient.

---
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-10-30. It was migrated from the old Trac wiki on 2023-01-15.*
---
title: Interim Oct 2013
description: 
published: true
date: 2023-01-10T22:46:31.874Z
tags: 
editor: markdown
dateCreated: 2023-01-10T00:42:40.318Z
---

Meeting minutes: http://www.ietf.org/mail-archive/web/multipathtcp/current/msg02136.html

Meeting summary: http://www.ietf.org/mail-archive/web/multipathtcp/current/msg02135.html

We will hold an interim meeting of MPTCP WG on Thursday 3rd Oct at 3pm GMT.

http://www.timeanddate.com/worldclock/fixedtime.html?msg=MPTCP+interim+Oct+2013&iso=20131003T15

The purpose is to make progress on advancing [RFC 6824](http://tools.ietf.org/html/rfc6824) on the standards track.

We will discuss the security of the MPTCP protocol. The aim is to reach consensus on what security improvements are needed - and what are not needed - in order to progress MPTCP on the Standards track. We hope to cover both the threat(s) that we will handle and, at a high-level, the solutions that will be defined.

Agenda
1. Introduction - Chairs
2. Discussion led by Marcelo Bagnulo
3. Next steps - Chairs

Proposed approach:-
Prong 1: how to improve [RFC6824](http://tools.ietf.org/html/rfc6824) to solve the ADD_ADDR attack. The aim is to get security equivalent to [RFC5061](http://tools.ietf.org/html/rfc5061) (SCTP with dynamic addresses). We can also improve [RFC6824](http://tools.ietf.org/html/rfc6824) to make some of the fallback cases clearer (I remember that came out of the implementation survey). We could hope to do this quite quickly as a relatively small improvement to 6824, since there was some discussion on the list a while back how to solve this.
Prong 2: RFC6824 sends the key in the clear on the MP_CAPABLE exchange - What could we do better? We’ve had some possibilities mentioned in the past, but I don’t think there’s any consensus yet.
We could do Prong 1 quickly if it looks like Prong 2 will take some time. There has also been a comment that Prong 2 is more important.

Reading
http://tools.ietf.org/html/draft-bagnulo-mptcp-attacks-01[[BR]]

http://datatracker.ietf.org/doc/rfc6824/[[BR]]

---
Audio details (will be recorded) Topic: MPTCP WG Virtual Interim Meeting Date: Thursday, October 3, 2013 Time: 3:00 pm, Greenwich Time (Reykjavik, GMT) Meeting Number: 646 077 950 Meeting Password: 1234

---
To join the online meeting (Now from mobile devices!)

1. Go to https://ietf.webex.com/ietf/j.php?ED=235434767&UID=1634481087&PW=NZThiNjlkNTVi&RT=MiMyMA%3D%3D
2. If requested, enter your name and email address.
3. If a password is required, enter the meeting password: 1234
4. Click "Join".

To view in other time zones or languages, please click the link: https://ietf.webex.com/ietf/j.php?ED=235434767&UID=1634481087&PW=NZThiNjlkNTVi&ORT=MiMyMA%3D%3D

---
To join the audio conference only

---
Call-in toll number (US/Canada): 1-650-479-3208

Access code:646 077 950

---
For assistance

1. Go to https://ietf.webex.com/ietf/mc
2. On the left navigation bar, click "Support".

You can contact me at: cmorgan@… 1-510-492-4085

To add this meeting to your calendar program (for example Microsoft Outlook), click this link: https://ietf.webex.com/ietf/j.php?ED=235434767&UID=1634481087&ICS=MI&LD=1&RD=2&ST=1&SHA2=AAAAAnOZTPEApF8VnRY0tZA-WnpwUWUbtY8Gfq3R4sZLBktq&RT=MiMyMA%3D%3D

The playback of UCF (Universal Communications Format) rich media files requires appropriate players. To view this type of rich media files in the meeting, please check whether you have the players installed on your computer by going to  https://ietf.webex.com/ietf/systemdiagnosis.php.

Sign up for a free trial of WebEx? http://www.webex.com/go/mcemfreetrial

 http://www.webex.com

CCP:+16504793208x646077950#

IMPORTANT NOTICE: This WebEx? service includes a feature that allows audio and any documents and other materials exchanged or viewed during the session to be recorded. By joining this session, you automatically consent to such recordings. If you do not consent to the recording, discuss your concerns with the meeting host prior to the start of the recording or do not join the session. Please note that any such recordings may be subject to discovery in the event of litigation.
Attachment: [mptcp-interim-oct13.pptx](/mptcp-interim-oct13.pptx)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-10-30. It was migrated from the old Trac wiki on 2023-01-09.*
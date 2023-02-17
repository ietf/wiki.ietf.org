---
title: Interim Oct 2011
description: 
published: true
date: 2023-01-10T22:48:26.951Z
tags: 
editor: markdown
dateCreated: 2023-01-10T00:46:04.262Z
---

We will hold an interim meeting of MPTCP WG on Thursday 20th Oct at 3pm GMT.

Local time: http://www.timeanddate.com/worldclock/fixedtime.html?msg=Multipath+TCP+Interim&iso=20111020T15

Agenda is to conclude on the remaining open issues on the protocol doc, in particular concluding on the proxy issues: Reminder: the purpose of the audio is to close all remaining issues with the protocol draft (confirmed on the list). We will proceed with WG last call immediately a new version is produced that incorporates the conclusions (and simultaneously last call the API doc).

1. Proxy. It has previously been agreed that [1] we want to complete the protocol standard without deciding the detailed mechanism for supporting proxy operation, [2] we want to allow future flexibility for extensions to support a proxy. There are several possibilities for how to achieve this, some of which alter the current protocol, see email discussion for the possibilities http://www.ietf.org/mail-archive/web/multipathtcp/current/msg01569.html Our current impression is that consensus is for Option 5 (Keep the current format and later develop new option for proxy capability, eg ADD_ADDR2)
2. Keys on various MP_CAPABLE msgs. Email discussion concluded to go back to the approach in the -03 version of the draft, with key in SYN - as well as syn/ack ack (& ack for reliability). (Remember to update S2.1 as well) http://www.ietf.org/mail-archive/web/multipathtcp/current/msg01549.html
3. Fallback mode – proposed solution is to keep this simple, "Once MPTCP reverts to TCP, it MUST NOT revert back to MPTCP afterwards". http://www.ietf.org/mail-archive/web/multipathtcp/current/msg01555.html
4. Teardown of state when all subflows fail - This is a heuristics issue rather than a protocol issue, http://www.ietf.org/mail-archive/web/multipathtcp/current/msg01531.html
5. Add Bulk_transfer_optimisation flag to MP-Capable? Don't add, seems like extra complexity for not much gain http://www.ietf.org/mail-archive/web/multipathtcp/current/msg01531.html
6. Support of “Single-path mode” (an ambiguous term...)? No changes to the spec. Could be subject of later work on exact requirements for “single path mode” and potential future work to extend the protocol. http://www.ietf.org/mail-archive/web/multipathtcp/current/msg01559.html

Reading:

http://datatracker.ietf.org/doc/draft-ietf-mptcp-multiaddressed/

http://www.ietf.org/mail-archive/web/multipathtcp/current/maillist.html

Audio /webex details:

---
Meeting information

---
Topic: MPTCP Interim MultipathTCP
Date: Thursday, 20 October 2011
Time: 16:00, GMT Summer Time (London, GMT+01:00)
Meeting Number: 643 314 398
Meeting Password: MultipathTCP

---
To start or join the online meeting

---
Go to https://ietf.webex.com/ietf/j.php?ED=146400847&UID=490991697&PW=NNmEyYzVlZTI4&RT=MTgjMjE%3D

---
Audio conference information

---
Call-in toll number (US/Canada): +1-408-600-3600

Access code:643 314 398

---
For assistance

1. Go to https://ietf.webex.com/ietf/mc
2. On the left navigation bar, click "Support".

To update this meeting to your calendar program (for example Microsoft Outlook), click this link:https://ietf.webex.com/ietf/j.php?ED=146400847&UID=490991697&ICS=MIU&LD=1&RD=18&ST=1&SHA2=jmdrfj/Md85XIkMg/YcwwNkXjxouBJPok5QJft/zZpQ=

To check whether you have the appropriate players installed for UCF (Universal Communications Format) rich media files, go to https://ietf.webex.com/ietf/systemdiagnosis.php.

http://www.webex.com

CCM:+14086003600x643314398#

IMPORTANT NOTICE: This WebEx? service includes a feature that allows audio and any documents and other materials exchanged or viewed during the session to be recorded. You should inform all meeting attendees prior to recording if you intend to record the meeting. Please note that any such recordings may be subject to discovery in the event of litigation.
Note: we will record the meeting.

Attachments: [proxies.pptx](/proxies.pptx) [intro-interim-oct11.pptx](/intro-interim-oct11.pptx) [mptcp-interim-oct2011.txt](/mptcp-interim-oct2011.txt)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-10-17. It was migrated from the old Trac wiki on 2023-01-09.*
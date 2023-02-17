---
title: SIPCLF Wiki
description: 
published: true
date: 2023-01-15T22:34:36.659Z
tags: 
editor: markdown
dateCreated: 2023-01-15T22:34:31.513Z
---

**January 2011 Interim**
Files have been attached to the Wiki page. See the attached files section below.

Two slide sets - one from Vijay and one from Gonzalo.

**SIP-CLF Implementation results**
Please direct questions to: [email:peter.musgrave@magorcorp.com Peter Musgrave].

The sample files below are based on a call through a B2BUA to a conference, which in turn initiates a dial out to a second UA.

In addition a much longer sequence was logged (3007 messages to be precise).

First, the easy stuff to measure: output size

These samples are of the basic information in the problem statement (i.e. not extensions).

| Example | Indexed ASCII Output | IPFIX Output |
|---------|----------------------|--------------|
| B2B     | 14K                  | 10K          |
| log_1   | 935K                 | 673K         |

Files attached:

| File     | Description                                       |
|----------|---------------------------------------------------|
| b2b.sip  | Raw text of the SIP messages which were logged    |
| b2b.asc2 | Indexed ASCII log file for SIP traffic in b2b.sip |
| b2b.bin  | IPFIX output for SIP traffic in b2b.sip           |

Code Attached: (The full Eclipse workspace and supporting libraries exceeds the Wiki file size. If you'd like access please email and I can invite you to a DropBox?).

The code used the JAIN SIP stack to parse SIP messages from a text file and log in both formats.

I used `asciiReader.py` to double check the indexed ASCII pointers. The IPFIX output was tested by reading it into Hadrial Kaplan IPFIX plugin. Thanks to Hadriel for this (and for finding several length bugs). This final version of IPFIX output has not yet been re-verified.

I have not spent much time beautifying the code. So be gentle!

| File                 | Description                             |
|----------------------|-----------------------------------------|
| SipClfLogger.java    | Generic Logger Interface                |
| IpfixLogger.java     | IPFIX Implementation                    |
| IndexedAscii_02.java | Indexed ASCII Implementation            |
| asciiReader.py       | Python code to check pointers in IASCII |

Screen shot below (attached Files) shows Hadriel's Wireshark plugin in action.

Attachments:
[sipclf-problem-statement-vkg.pdf](/sipclf-problem-statement-vkg.pdf)
[sipclf-format.ppt](/sipclf-format.ppt)
[ipfixlogger.java](/ipfixlogger.java)
[screen_shot_2010-11-12_at_11.11.48_pm-2.png](/screen_shot_2010-11-12_at_11.11.48_pm-2.png)
[asciireader.py](/asciireader.py)
[indexedascii_02.java](/indexedascii_02.java)
[b2b.asc2](/b2b.asc2)
[b2b.bin](/b2b.bin)
[b2b.sip](/b2b.sip)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-01-18. It was migrated from the old Trac wiki on 2023-01-15.*
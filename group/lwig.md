---
title: LWIG WG - Light-Weight Implementation Guidance
description: 
published: true
date: 2023-01-04T23:58:58.816Z
tags: 
editor: markdown
dateCreated: 2022-12-16T16:47:12.212Z
---

# Lwig Session at IETF-90 in Toronto

WG Status Update: RFC7228 published in May 2014, which is the first RFC in the LWIG working group. draft-kovatsch-lwig-coap-02 was waiting for the authors for the next step.

The IPSEC-ESP Minimal document was presented at the meeting. The next step of the document will be determined based on the WG consensus.
# Lwig Session at IETF-87 in Berlin

WG Status Update: the lwig-terminology draft draft-ietf-lwig-terminology finished WGLC after IETF86 and it is in IESG evaluation process. lwig-ikev2-minimal draft was adopted as WG document and will recruit some review before WGLC, and several experts volunteered to review the draft. Lwig-energy efficient design draft draft-hex-lwig-energy-efficient-01 was also come up with a new version after the meeting and solicit comments from the list.

Document Discussion:

1.   Lwig-coap http://tools.ietf.org/html/draft-kovatsch-lwig-coap-01.txt implementation guidance: report the merge of several different coap guidance drafts, how to handle the FSM etc.
2.   Lwig-(D)TLS http://tools.ietf.org/html/draft-tschofenig-lwig-tls-minimal-03.txt implementation guidance: report the design decisions guidance of (D)TLS and Implementation details of DTLS in PSK mode, and TLS with raw public key.
3.   Lwig-energy efficient design draft http://tools.ietf.org/html/draft-hex-lwig-energy-efficient-01.txt: review the update of the draft after IETF86, including the new text of IEEE 802.11k power save mode and BTLE text.
4.  3GPP Link Implication draft http://tools.ietf.org/html/draft-ma-lwig-3gpplink-imply-00.txt: report the 3GPP M2M work item work and its implication to IP protocols design.
5.  Sleeping node problem statement http://tools.ietf.org/html/draft-hong-lwig-sleepynode-problem-statement-00.txt: report the problem statement of sleeping nodes in constrained networks. 

# Lwig Session at IETF-88 in Vancouver

The LWIG working group met on Wednesday, Nov. 6, 2013 for one hour and a half. Since IETF87, Lwig had adopted two drafts as working group drafts (draft-ietf-lwig-cellular and draft-ietf-lwig-tls-minimal). And the draft-ietf-lwig-ikev2-minimal draft finished WGLC, and we received several independent reviews of the drafts. Tero gave a short presentation of the WGLC review and resolution. The long-standing lwig-terminology draft was still in IESG review status and two DISCUSSes existed.

On the face to face session, the group went over the IESG reviews on the terminology draft and agreed on how to handle these comments. The most difficult part was how to explain the "constrained" as a relative word. The answer was we can only say it is relative to the state of the art. And the group also spent some time over how this work related to the charter. The answer was in each of the minimal implementation guidance documents, they should state according to the terminology.

The group also spent time discuss two individual documents, draft-hex-lwig-energy-efficient-02.txt and draft-zhu-core-groupauth-01. The discussion will hand over to the mailing list.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-07-29. It was migrated from the old Trac wiki on 2022-12-16.*
---
title: Minutes from the IPsecME WG interim meeting February 3, 2009
description: 
published: true
date: 2022-12-16T01:20:57.634Z
tags: 
editor: markdown
dateCreated: 2022-12-16T01:18:49.759Z
---

# Minutes from the IPsecME WG interim meeting February 3, 2009
Using TeamSpeak voice and instant messaging.
```
Minutes by Paul Hoffman (first half) and Yaron Sheffer (second half). See [Interim20090203](/group/ipsecme/Interim20090203) for the slides. Text from the slides is not repeated here.

Agenda was accepted.

A roll call was held so people could test out their !TeamSpeak client

 A few issues with mics being too low; were fixed. About 20 people in attendance for most of the meeting.

Session resumption update

        Hannes Tschofenig presented

        Issue #75: Make "by reference" a first class citizen
                Made editorial changes to give both types of tickets equal credit
        Issue #74: Extend IKE_SA_INIT instead of new exchange type
                Paul Hoffman, wearing co-chair hat, wants more input from other folks
                Peny Yang asked if this is an implementation or protocol issue.

                Hui Deng pointed out that this is also an operational issue.

                Paul will clear this on the list

        Issue #73: Ticket location: prefer server-side ticket

                Some discussion about if this could be raised again.

                Paul pointed out that it was already closed on the mailing list

        Issue #70: Ticket lifetime - explicit or not? (and ticket push from gateway)

                Is lifetime a purely local issue?

                Four options listed; will be discussed on the list

                Option 1 also covers when you rekey

                        Tero Kivinen points out that this is not clear in the current draft

 

 

Visibility heuristics

        Tero Kivinen presented

        Only done at the beginning of a stream; then the results are stored

        Only is of value when doing deep packet inspection

                Normal devices don't need to do this at all

        Deep packet inspection devices already are doing many of these tests in other places

        There are lots of good heuristics, such as "port equals zero"

        Ken Grewal pointed out that different parts of hardware may not be able to maintain state

                Could cause congestion points in multiple places

        Paul said that we will discuss on the list before we decide which direction we will go

 

Redirect open issues

        Vijay Devarapalli presented

        Issue #66: Redirecting during IKE_AUTH

                Tero asked if the SA is torn down actively with DELETE payload; yes

                Yaron is OK closing the issue

                Yoav is not comfortable with having the SA come up but then be deleted at some short time later

                        Adding a timer is not difficult; just seemed less clean

                        Further discussion of cleanliness between Vijay and Yoav

        [No issue #] Non-gateway use cases

                Rich Graveman has a peer-to-peer use case

                Tero thought this is good text to add to the draft

                Similarly to MOBIKE, won't cover both sides moving at the same time

 

Document Roadmap

        Sheila Frankel presented

        Paul wants that the section on "not widely adopted" RFCs should not make it that they should be implemented.

        Yaron wants this to be about status of documents, not individual requirements levels

        Disagreement on whether to put in RFCs that use PRF+ but not IPsec itself

        Wants much more input

 

Mandatory access control (off-charter item)

        Joy Latten presented the recent labeled IPsec drafts (draft-jml-ipsec-ikev1-security-context-00 and draft-jml-ipsec-ikev2-security-context-00, both are non-charter items).

        The scope of the IKEv2 draft is larger, because multilevel concepts have been removed from RFC 4306.

        Implementations exist of labeled IPsec plus IKEv1. There was no discussion.

 

        The chairs requested Joy to notify the group whenever a new revision is published.

        Limited discussion of these drafts can happen on the mailing list, as long as it doesn't overwhelm our normal business.

 

IKEv2-bis
        Paul Hoffman presented

        Issue #36, Interaction of IKE_SA_INIT retransmissions with specific notifies. No discussion.

        Issue #14: Bounding the retransmit time.

        Tero wants to minimize storage by closing the retransmission windows after some reasonable amount of time. Otherwise no discussion.

        Issue #19: Motivation for including SPIs in the cookie. No discussion.

        Issue #62: Security considerations - implementation robustness.

        Yoav supports the proposed text.

        Issue #16 and #45: Order of IKE payloads. Paul mentioned that we want to hear from implementors what they are expecting as responders, and what they are sending as far as strict payload ordering. Yaron commented that we cannot presume to be in touch will all implementations out there, and all current implementations need to interop with any RFC 4306-compliant implementation. Paul: the defined order is not well defined, we added stuff in Clarifications (the Appendix), possibly inconsistent with RFC 4306. Tero: Clarifications certainly has more payloads than in the RFC 4306 examples. This was supposed to add examples, rather than make old implementations non-compliant. Paul: true, we cannot hear from every implementor; but we can assume everybody is following last calls. Tero: no, Clarifications is only informative, and RFC 4306 is authoritative. But once things go into Bis, they will become mandatory. Paul: but Clarifications is being rolled into Bis. Discussion should go to the list. We need to understand where Clarifications added stuff. Now what do we do about this delta? Yoav: trying to enforce payload order is a losing proposition, given the new payloads required by extension drafts. What is the relative order. We should demote the mandatory order. Tero: only Sec. 2 of RFC 4306 mandates an order. Paul: will try to de-emphasize that we can hear from everybody. But we CAN make the assumption that developers are following the discussion, however we may miss some. [Later note by Yaron: I find it weird that RFC 4306 indeed says that payloads should appear in the order specified by Sec. 2, but most of the basic exchanges only appear in Sec. 1. Which in my mind makes the original statement somewhat bogus. But people probably treated Sec. 1 as mandatory too.]

        Issue #11: Clarify which traffic selectors to use in rekeying.

        Paul: [unclear]. Tero: if you have SAs that violate the new policy, you either delete them or you rekey. Prefers a rekey, even if this is narrowing the SA. Mostly useful for decorrelated policies, but people are not doing that yet [general agreement by silence]. Gives an example where we have an IPsec SA between two hosts (or subnets) and then someone adds a new SPD rule which has higher precedence and which says that port 80 between those hosts should be put on a separate SA. This effectively creates a hole in the old IPsec SA, and the old IPsec SA now covers traffic selectors which it should not. Paul: if no-one is doing decorrelated policies, then they wouldn't have thought of this issue.

        [Later note by Tero:] There are three ways to do this:

       1 - Forbid overlapping selectors (i.e. make user interface so that you cannot enter overlapping traffic selectors, and require the administrator to "decorrelate" traffic selectors manually).

       2 - Go through SPD entries in the precedence order and do not use any kind of caching. This requires linear scan through SPD for every single packet.

       3 - Do the decorrelation properly and then you can use effective data structures to find the correct SPD entry, i.e. no linear scan is needed as you know that there cannot be any overlapping SPD entries in the decorrelated policy.

        Discussion whether decorrelated support is mandatory in RFC 4301 or not. 

        Issue #68: Counter mode ciphers in IKEv2 to protect IKE SA.

        General agreement that the document specifies that IV needs to be unpredictable for CBC, and gives a reference to other docs for the non-CBC modes. Paul will republish text for this issue.

        Paul promised a new version of the draft before the SF I-D deadline. He also promised that the IPR issue is going to be fixed.

Meeting adjourned close to on time (about two hours).
```

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-02-13. It was migrated from the old Trac wiki on 2022-12-15.*
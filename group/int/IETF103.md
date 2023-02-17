---
title: WG Summaries for IETF 103
description: 
published: true
date: 2022-12-15T04:57:40.207Z
tags: 
editor: markdown
dateCreated: 2022-12-15T04:56:50.820Z
---

The following INT working groups met at the IETF 103 in Bangkok

6lo 6man 6tisch dmm dnssd homenet intarea ipwave lpwan lwig ntp

## 6lo

Agenda and Slides: https://datatracker.ietf.org/meeting/materials#6lo

Both co-chairs, Samita and Gabriel, have announced they are stepping down. Suresh is looking for replacements, so now's the time to volunteer.

draft-ietf-6lo-rfc6775-update is in AUTH 48. draft-ietf-6lo-nfc in AD review stage and comments addressed. draft-ietf-6lo-deadline-time addressed comments from AD review, Suresh to initiate IETF LC soon.

Reviewed latest comments and changes on several documents now preparing for or at WG LC: -draft-ietf-6lo-backbone-router - draft-ietf-6lo-ap-nd (will be subject to early security directorate review) - draft-ietf-6lo-use-cases

One document ready for call for adoption: draft-hou-6lo-plc-05

We reviewed implementation experience on two drafts: draft-ietf-6lo-blemesh-02 (now ready for WG LC) and Fragment Forwarding performance.

## 6MAN 

The 6MAN working group met for a 2 hour session on Tuesday afternoon at IETF103. The session was well attended. The agenda, and slides from 6MAN are available at: https://datatracker.ietf.org/meeting/103/materials.html.
The working group also arranged for a side-meeting together with tsvwg and intarea on Path MTU discovery.

The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. Traditionally the 6MAN working group has had a very tight agenda, and we often have had to cut discussions short. Given the compressed IETF week, this session was even tighter than usual, and both the new individual draft talks were pushed out.

Major topics discussed where the segment routing base specification, the IPv6 only RA flag and possibilities for improvements of Path MTU discovery at the network layer.
The segment routing work is making progress, it has been in last-call since March, but as soon as all tickets are closed, the working group will issue a new working group last call. We expect this document can be sent off to the IESG by IETF104.

The IPv6 only RA flag is contentious. Especially for what the implications should be for the host implementation. After the WG discussion, the authors have come up with new text, which will be tested for consensus. If there still is no clear consensus, the working group will abandon this work.

In draft-pref64folks-6man-ra-pref64 a new RA option is proposed to configure a NAT64 prefix. There is some discussion around limiting the length of the prefix to 96, and also to pass more IPv4 routing policy via the option. As soon as these issues have been agreed on, the chairs will put out a call for adoption.

## DMM 

The DMM WG met on Thursday, November 8th, 2018. This was chaired by Sri Gundavelli. The other co-chair, Dapeng Liu could not attend the meeting. 

The agenda for the meeting was posted prior to the meeting and can be reviewed at: https://datatracker.ietf.org/meeting/103/materials/agenda-103-dmm/

* The meeting began with the chairs presenting the status of all the DMM documents. After the WG status,  the working group has reviewed the update on the current working group documents. The editors for each of those documents have provided those updates. The key ask from the chairs to the WG was for reviews. Chairs have made it clear that the documents will not move forward unless there is substantial feedback from the WG.

* There were presentation on some new topics. The topics that triggered most discussion was on draft-hmm-dmm-5g-uplane-analysis.txt and draft-fattore-dmm-n6-cpdp-trafficsteering. There was generally lot of interest for this work, but the key question was on the relevance of this work to 3GPP, in the immediate timeframe. The question was also on the archival value.  In general the chair/AD shared the view that we will consider these aspects as we move this documents forward.



## DPRIVE 

DPRIVE did not meet at IETF103, but are planning an interim in early December 2018.

## LWIG 

Chairs: Mohit Sethi, Zhen Cao

The Light-Weight Implementation Guidance (LWIG) Working Group met on November 7, 2018 for 1 hour. We ran out of time at the end but still managed to cover all the agenda items. 

* Chairs gave a status update on the various drafts in the working group. In addition to discussing new and existing documents, there was a discussion on draft-ietf-lwig-cellular-06. The draft has been in the RFC editors queue for > 1000 days because of a MISSREF. There was consensus in the room to wait and see if a last call is issued for the missing normative reference. Otherwise the working group might consider pulling the document back from the RFC editors queue to investigate if the normative reference is necessary (and if any other updates are required). 

* draft-ietf-lwig-tcp-constrained-node-networks-04 was presented by Carlos. The working group draft describes how to implement light-weight TCP on small devices. This draft was also presented in the TCPM working group. The draft received plenty of new feedback both during the LWIG and the TCPM sessions. Ilpo Järvinen sent another detailed review on the mailing list after the working group session. The authors now plan to update the document based on the latest round of comments and we might issue a WGLC if all the reviews are adequately addressed. 

* draft-ietf-lwig-nbr-mgmt-policy-02 was presented by Rahul. The draft describes a neighbor management policy for RPL based 6LoWPAN networks. The working document was updated based on an early review by the chair. The authors already have a proprietary implementation and are working to also have an open source implementation with the Contiki OS folks. There was discussion on splitting the document given that some of the recommendations only apply to specific scenarios and are not generally applicable. The room however had consensus to keep the current document structure. 

* There was an interesting presentation on performance of 6lo fragment forwarding by Rahul. This work was also presented in 6lo. Based on this performance report, we expect an update to the working group document on virtual reassembly buffers in 6LoWPAN (draft-ietf-lwig-6lowpan-virtual-reassembly-00).

* draft-ietf-lwig-curve-representations-01 was remotely presented by Rene. The working group draft provides guidelines for developers implementing standard ECC curves such as NIST P-256 and EdDSA25519 and x25519 on small devices. Implementations of the recommendations in the draft already exist. We are now waiting from more reviews from crypto experts in the crypto expert review panel (Alexey Melnikov has promised to help on this). 

* draft-urien-suit-security-classes-00 was presented by Pascal. This was a last minute addition to the agenda. The draft describes different kinds of device classes for secure software updates. The next step for the authors is to investigate how this work relates to the device classes in RFC 7228 and draft-bormann-lwig-7228bis-03.

All in all, a successful and productive meeting. Thanks to Suresh for guiding us. We continue in Prague.


## 6TiSCH

During IETF103, the 6TiSCH WG has 1 WG meeting and 2 side meetings.

The WG meeting covered 5 drafts:

* draft-ietf-6tisch-architecture is almost ready. Pascal pushed -16 before the meeting. Pascal will merge draft-ietf-6tisch-terminology into draft-ietf-6tisch-architecture and publish -17. WGLC will be called and authors of the key 6TiSCH draft will be asked to review.
* rfc8480 was published.
* draft-ietf-6tisch-msf was covered through 3 presentations: an intro and two "lessons learnt" presentations by 2 implementors (one by simulation using the 6TiSCH simulator, one by experimentation using OpenWSN). Performance is very good and matches the expectations, some lessons learnt already captured in Appendix E of draft-ietf-6tisch-msf. Authors will update the document based on these lessons learnt and ensure with implementors that all lessons learnt have been captured.
* draft-ietf-6tisch-minimal-security is almost ready. It received 7 reviews during the last WGLC, all of which have been integrated, and which reviewers approve. Two final changes are still needed. Editor will discuss those on the ML, integrate them into a new version of the draft if consensus. Chairs will then open a 1-week WGLC only on those changes.
* draft-tiloca-6tisch-robust-scheduling is new out-of-charter work which proposes a "cell shuffling" solution to prevent a selective jamming attack. The presentation was well received, the author are asked to provide more arguments about the importance of such attack. 

The first side meeting was bar BoF "Predictable and Available Wireless", organized by Pascal Thubert, in which we discusses the opportunity to apply 6TiSCH to other physical layers, in particular 802.11 WiFi. Discussions are continuing on a new mailing list https://www.ietf.org/mailman/listinfo/paw.

The second side meeting was called to discuss EDHOC (draft-selander-ace-cose-ecdhe) and was attended by Jim Schaad (ace co-chair), Roman Danyliw (ace and secdispatch co-chair), Goran Selander, Francesca Palombini (EDHOC authors), Malisa Vucinic (6TiSCH security), Pascal Thubert and Thomas Watteyne (6TiSCH co-chairs). It was agreed that draft-selander-ace-cose-ecdhe would go through the secdispatch process to find the right home for it. The 6TiSCH WG agreed to produce a requirements document in end-of-year, and present that to a secdispatch interim meeting which will be held in January 2019.



## LPWAN 

The LPWAN Working Group met on Tuesday, November 6, 2018  for 2 hours and followed its agenda as scheduled with no particular issue. In general, the main points of discussions were SCHC-over-FOO and the WGLC-3 with a focus on the SCHC fragmentation.


* Chairs opened the session with a status of the WG. 

* Dominique Barthel presented the work at the hackathon, with the ease to introduce SCHC to newcomers. Linux-based SCHC implementation is planned for future hackathons.

* SCHC IP/UDP editor Dominique Barthel presented the fragmentation rework in  draft-ietf-lpwan-ipv6-static-context-hc with Ack-on-Error mode.  The very active work done in the past months was summarized and the process of starting a new WGLC to confirm the changes on the fragmentation operation changes was decided. Discussions on the concept of profile, and the need for a profile data model were evoqued as gating factor to complete the technology specific drafts.



Technology-specific drafts were then presented. 


   * Sigfox: Juan Carlos Zuniga presented the SCHC-over-Sigfox draft (draft-zuniga-lpwan-schc-over-sigfox). Updates on the parametrization for Sigfox technology was given. 
    
    
   * LoRaWAN: Ivaylo Petrov presented the SCHC-over-LoRaWAN draft ( draft-petrov-lpwan-ipv6-schc-over-lorawan). 


   * Charlie Perkins presented the newly submitted SCHC-over-802.15.4. He introduced the new LPWAN effort at IEEE 802.15.4 called 802.15.4w and a personal submission draft (draft-authors-lpwan-schc-802154). Suresh indicated that since this was not identified as an original 4 technologies, there is a need for information similar to that found in RFC 8376 (was draft-ietf-lpwan-overview) before we can work in that technology. The group appeared keen to add it to charter, to be discussed in the group rechartering process.

   * Then the group discussed rechartering. The same items as in IETF 102 were discussed (OAM, reshufflng of existing sub items). Additionally, IPv4 was mentioned but the group and Suresh indicated that the need for it and the required changes to SCHC ad to be documented to start with.

   * Finally Alexander provided an early view of how the profile data model could be structured. The hope is that authors will take the pen and start publishing about it even before we recharter for it.
    
The group completed within due time.



## Intarea 

The Internet Area Working Group met on Wednesday, Nov 7 for 1.5 hours.

We had an update on the last version of “Discovering Provisioning Domain Names and Data” proposal (draft-ietf-intarea-provisioning-domains-03). The document is getting ready for WGLC. However, the chairs have requested a review from the security area directorate since March and no response has been received. It would be important to have this review before advancing the draft.

Ron Bonica presented the "IP fragmentation considered fragile/harmful" (draft-bonica-intarea-frag-fragile-02) and good feedback eas provided by the group.

Tom Herbert gave an update on “Generic UDP Encapsulation and Extensions” (draft-ietf-intarea-gue-06 and draft-ietf-intarea-gue-extensions-05). 
It was suggested evaluate the possibility of having a BoF on the topic, as the work is getting complicated and it is requiring functionalities from other layers than L3. 

Bing Liu presented "Limited Domains and Internet Protocols", (draft-carpenter-limited-domains-04). A lot of discussion happened on the concept of domains. After several inputs it was suggested that the authors consider a BoF to have more people and inputs on the topic.

Jing Zhu presented "User-Plane Protocols for MultipleAccess Management Services (MAMS)" (draft-zhu-intarea-mams-user-protocol-06). The complexity and large scope of the issue also suggested that a BoF may be needed to have more people comment on this.

Yizhou Li presented "Overlayed Path Segment Forwarding (OPSF) Problem Statement" (draft-li-tsvwg-overlayed-path-segment-fwding-ps-00). A new naming less similar to OSPF was recommended.

Finally, Vladimir Oltenau have a quick n update on SOCKS v6 (draft-olteanu-intarea-socks-6-05). The question about standardizing it in IntArea or as AD sponsored was raised.  The author was encouraged to talk to discuss with the AD. 



## ipwave 

The IPWAVE Working Group met on Tuesday, Nov 6 for 1 hour.

We had an update on the last version of "Transmission of IPv6 Packets over IEEE 802.11 Networks in mode Outside the Context of a Basic Service Set" draft (draft-ietf-ipwave-ipv6-over-80211ocb-30). A previous version of this document was sent to 6man for review (as stated in our charter) and received some comments that are being addressed by the authors. During the meeting it was discussed about what remains to be done and next steps. Authors met offline with some 6man participants and agreed on changes. It was also agreed that authors will summarize in an e-mail all the changes. After that we will go to WGLC before sending the document again to 6man for another review.

The second WG document, "IP Wireless Access in Vehicular Environments (IPWAVE): Problem Statement and Use Cases" (draft-ietf-ipwave-vehicular-networking-07) was also presented. This has been updated significantly, but more reviews are needed. Sri Gundavelli and Charles Perkings agreed to review the document.

A couple of non WG presentations were also made, one on "IPv6 Neighbor Discovery for IP-Based Vehicular Networks" and one on "Transport Layer Security (TLS) Authentication using ITS ETSI and IEEE Certificates"

It was also discussed in the meeting about having presence in the IETF 104 hackathon.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-11-22. It was migrated from the old Trac wiki on 2022-12-14.*
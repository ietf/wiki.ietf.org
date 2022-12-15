---
title: WG Summaries for IETF 92
description: 
published: true
date: 2022-12-15T01:59:23.251Z
tags: 
editor: markdown
dateCreated: 2022-12-15T01:59:23.251Z
---

# IETF 92 Summaries

## 6LO

70+ attendees , 11 presentations, 10 6lo drafts

Since IETF91:

 - Published 2 RFC\'s:

   -  draft-ietf-6lo-ghc-03 ==\> <http://tools.ietf.org/html/rfc7400> • draft-ietf-6lo-lowpanz-05 ==\> <http://tools.ietf.org/html/rfc7428>

 - Submitted to IESG: <https://tools.ietf.org/html/draft-ietf-6lo-btle-10> 
 - Adopted <http://tools.ietf.org/html/draft-ietf-6lo-nfc>

Started with discussion on official documents:

> • IPv6 over NFC: <http://tools.ietf.org/html/draft-ietf-6lo-nfc> -
>
> > • this document was adopted recently by the WG
>
> • IPv6 over MS/TP (BACnet): <https://tools.ietf.org/html/draft-ietf-6lo-6lobac-01> -
>
> > • some discussion about compressed and uncompressed addresses as well as support for privacy in addressing. • On a very positive note, right before the meeting, this draft received the BACnet MS/TP Frame Type Number issued by ASHRAE, something the authors had been waiting for.

New potential work presented by Dave Thaler on enabling security/privacy addressing in 6LoWPAN technologies: <https://tools.ietf.org/html/draft-thaler-6lo-privacy-addrs-00>

> • 3 techniques, of which #3 is quite complex, not much interest. • #1 might be enough given certain conditions and technologies, but Dave points out #2 seem to work well in more general cases.

The requirements for 6775 update were also presented: <https://tools.ietf.org/html/draft-thubert-6lo-rfc6775-update-reqs-06.> This will be continued on the wiki page so the WG can agree on the requirements.

There was a presentation on an adaptation of SeND and CGA for low power and lossy network: <https://tools.ietf.org/html/draft-sarikaya-6lo-cga-nd-02.>

The largest chunk of the time was spent on the discussion about compressing ROLL artifacts (http://[www.ietf.org/proceedings/92/slides/slides-92-6lo-6.pdf](www.ietf.org/proceedings/92/slides/slides-92-6lo-6.pdf)). Of these, the proponents expressed some interest in no longer pursuing the NHC path (\"NHC++\"), and instead focus on the dispatch header approach. The claim is that even if they cannot reclaim the Mesh Header code, even a less optimal code point use would still be better and more flexible than basing it on NHC. Carsten brought up the issue of multicast for state synchronization as another reason to want flexibility going forward. There is still work to be done specifying fully the compression as well as sending out liaisons to SDO\'s to gauge whether reclaiming the Mesh Header is something we should even consider.

ETSI presented their plugfest program (http://[www.ietf.org/proceedings/92/slides/slides-92-6lo-8.pdf](www.ietf.org/proceedings/92/slides/slides-92-6lo-8.pdf)). There has been some history already in 6lowpan and with the upcoming 6tisch plugfest, and there are people volunteering to help with a 6lo plugfest for IETF 94, so this is looking like it will happen.

ZigBee NAN (neighborhood area networks) needs some work on MLE (mesh link establishment) and HIP-DEX (key management for MLE based on HIP): <https://tools.ietf.org/html/draft-ohba-mle-hip-dex-00.> After separate discussion with those folks this seems doable in the experimental RFC track published by 6lo.

Finally, two presentations dealt with the problem of security bootstrapping (both analysis and mechanisms): <https://tools.ietf.org/html/draft-kumar-6lo-selective-bootstrap-00> and <https://tools.ietf.org/html/draft-he-6lo-analysis-iot-sbootstrapping-00.> This is one of the security topics which have triggered the Bar BoF on security for 6lo.

## 6MAN

The 6MAN working group met for a 2.5 hour session on Monday morning at IETF92. The session was well attended with about 140 participants.

The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. With the new individual drafts being given 5 minutes and 3 slides each.

There was a suggestion to move the core IPv6 documents to full standard. The chairs will pursue this with the IESG as soon as possible.

The main topics of the meeting included reports from the Efficient ND design team, improved host support for host multi-prefix multi-homing, and renewed work on IPv6 source routing.

MIF\'s works on \"provisioning domains\" was presented, and there was five lightning talks on new drafts.

No new documents were adopted.

The proceedings from 6MAN are available at: <https://datatracker.ietf.org/meeting/92/materials.html#wg>-6man

## 6TISCH

6TiSCH met twice at IETF92:

-   Monday\'s sessions was focused on security and presenting the DetNet work happening in a separate mailing list. \~70 attendees, \~20 online. 3 presentations.
-   Thursday\'s session was focused on WG docs, on-the-fly scheduling, the upcoming ETSI plug test (in Prague) and rechartering. \~50 attendees, \~20 online, 9 presentations.

Since IETF91:

-   in RFC queue:
    -   <http://tools.ietf.org/wg/6tisch/draft-ietf-6tisch-tsch/>
-   new WG docs: none
-   updates to WG docs:
    -   <http://tools.ietf.org/html/draft-ietf-6tisch-6top-interface/>
    -   <http://tools.ietf.org/html/draft-ietf-6tisch-architecture/>
    -   <http://tools.ietf.org/wg/6tisch/draft-ietf-6tisch-coap/>
    -   <http://tools.ietf.org/wg/6tisch/draft-ietf-6tisch-minimal/>
    -   <http://tools.ietf.org/wg/6tisch/draft-ietf-6tisch-terminology/>
-   new individual drafts
    -   <http://tools.ietf.org/html/draft-dujovne-6tisch-on-the-fly-05.txt>
    -   <http://tools.ietf.org/html/draft-struik-6tisch-security-considerations-01.txt>
    -   <http://tools.ietf.org/html/draft-wang-6tisch-track-use-cases-00.txt>
-   updated individual drafts
    -   <http://tools.ietf.org/html/draft-piro-6tisch-security-issues-03.txt>
    -   <http://tools.ietf.org/html/draft-richardson-6tisch-idevid-cert-01.txt>
-   interim meetings:
    -   7 WG interim meeting (virtual)
    -   4 virtual meeting of the security DT
    -   1 virtual meeting around on-the-fly scheduling

Monday ~~\--~~

In the context of rechartering, the applicability of the deterministic networking (DetNet) work to the establishment of 6TiSCH tracks was presented to the group. The chairs asked the WG for input on how to proceed with the interests that 6TiSCH has on DetNet. The consensus in the room was that 6TiSCH should charter a requirement draft to DetNet but should not be the home of the DetNet work. Rather, DetNet should be its own entity, which should take requirements from the likes of 6TiSCH, and work on solutions with the relevant WGs. It was noted that the relevant WGs included PCE, CCAMP and TEAS.

Zhuo Chen presented \<draft-wang-6tisch-track-use-cases-00\>, which highlights the important of track reservation in a 6TiSCH network, and could be a starting point to the requirement work for DetNet.

A large portion of the Monday session was spent discussing the state of the work on the security DT. Rene Struik presented \<draft-struik-6tisch-security-considerations-01\>, which discusses the high-level discussion about the flows involved in the joining process. Some discussion on the place of security in the possible rechartering followed. The work in the 6TiSCH DT was summarized, with its goal to provide an abstraction of the security model for use on TSCH networks. Some discussion followed to highlight the need to quantify the overhead (time, energy) associated with the proposed approach, and about the need to leave space for a simple PSK option. It was noted that the resulting work is so far 95% independent on the MAC layer, and the rest is mostly independent on the mode of IEEE802.15.4. The general consensus in the room was that security is a very important aspect, and that the solution (in particular around the joining process) should be applicable to the IoT space beyond 6TiSCH. The chairs asked the room about input about whether this work should be kept entirely within the 6TiSCH security DT, or pushed somewhere else. There was some input that the work in the DT was moving swiftly, and that we should be careful not to break the momentum. It was also noted that some goals such as describing a solution that would emulate those deployed in industrial networks with same or better security properties was certainly an achievable goal. It was also noted that there is interest in an autonomic bootstrap but that ANIMA did not include IoT in their charter - note: talking offline with Sheng (ANIMA chair), it seems that ANIMA would still favor a solution that is compatible with IoT if that is at all possible.

Thursday ~~\-\-\--~~

On Thursday, the first section of the meeting was spend on reviewing the WG drafts.

-   draft-ietf-6tisch-tsch passed IESG review and is now in the editor queue
-   draft-ietf-6tisch-minimal passed last call and the resolutions left pending were discussed. That was mostly the RPL artifacts compression and the security section. For the former, the decision was not to compress RPL artifact in this specification, and go with the ETSI plug test with that form. The text on security was challenged and the solution is being formed on the ML.
-   draft-ietf-6tisch-architecture also passed last call. The history, the structure in volumes were presented. It was discussed that the security section is now effectively consensual, and that the only comments left are from Michael, to be solved soon.
-   draft-ietf-6tisch-coap and draft-ietf-6tisch-6top-interface are ready for last call, and the work is considered mostly complete, except for the security piece. Due to the hassle in updating a data model once published, the chairs are holding the last call until more feedback from implementations indicate that the work is complete.

Some non-WG drafts were reviewed in to prepare for rechartering

-   draft-wang-6tisch-6top-sublayer describes the working of the 6top layer. The work is is required to support dynamic scheduling. It is effectively well-advanced and ready for prime time.
-   draft-dujovne-6tisch-on-the-fly describes the decision engine to adapt the bandwidth to fit the needs of stochastic IP flows, typically along RPL routes. The work was presented for 30 minutes and is effectively well-advanced as well.

Then final discussions of the sessions were around.

-   The group was positive with adding work on dynamic scheduling, which would typically include the 2 drafts above.
-   For centralized scheduling, it was noted that the CoAP and the 6top interface WG docs enable to program a 6TiSCH node from a central controller (a PCE). But it was also noted that a reservation along the path ala RSVP-TE is not supported. For the time being, the group would defer to DetNet to propose models and see what can be supported with the 6top interface draft as it currently stands before adding anything new for TE-type of reservation.
-   The discussion on security that was started on Monday was continued. There is a strong interest in the group to pursue that work. It was noted that 6lo organized an informal session later in the day on that same topic.
-   Ted Lemon highlighted that the work outlined in the current charter needs to be well addressed before rechartering. the chairs responded that the apparently incomplete work was mostly the 6top interface and CoAP drafts, and the reason for that was that the chairs are holding the documents till more implementation feedback is reported and completeness can be asserted. This is should not be considered as unfinished work and should not prevent the rechartering.
-   Pat Kinney made the case of removing the \"e\" from the references to the TSCH mode of 802.15.4e in the charter. There was no opposition in the room and the change will be confirmed in the mailing list.

## DHC

The DHC WG met on Thursday March 26. 28 people signed the blue sheets.

There were 7 presentations:

1\. The WG co-chairs started the meeting by providing a WG status update. Since IETF-91, the WG adopted 3 documents (2 on DHCP privacy issues and the RFC3315 bis work) and last called 2 documents (stateful-issues and access-network-identifier). There were no RFCs published and the stateful issues document was added to the editor queue just before IETF-92. In reviewing the WG documents, it was confirmed that the addr-registration I-D (which failed WGLC in Sept 2014) is dead (it has also expried).

2\. Tomek Mrugalski presented an update on DHCP privacy work (draft-ietf-dhc-dhcp-privacy, draft-ietf-dhc-dhcpv6-privacy, draft-mrugalski-dhc-dhcpv6-privacy-mitigation).

3\. Christian Huitema presented on draft-huitema-dhc-anonymity-profile.

The authors of the privacy drafts decided prior to the DHC WG meeting to work with Christian on the anonymity profile draft and will drop dhcpv6-privacy-mitigation.

4\. Lishan Li presented draft-cui-dhc-dhcpv6-yang-01. There was significant interest in this work.

5\. Bing Liu presented draft-liu-dhc-dhcp-yang-model.

6\. Sheng Jiang presented draft-jiang-dhc-sedhcpv4, which applies draft-ietf-dhc-sedhcpv6 to DHCPv4. Updates are needed to fix some issues in the draft, and given the state of sedhcpv6, it probably makes sense to await IESG review of sedhcpv6 before adopting sedhcpv4.

7\. Tomek Mrugalski provided an update on the RFC3315bis work and he along with Bernie Volz and Marcin Siodelski lead the discussion on some open issues (see tickets 142, 144, 81, 18, 68, 82, 114, 70, and 86 in the issue tracker - <http://tools.ietf.org/group/dhcpv6bis/>).

The WG meeting ran over by a few minutes.

## DMM

DMM had two meeting slots and total 3h. Most of the meeting time was given to four Working Teams to deliver their progress reports and conclusions if any.

Working Team #1 (Exposing mobility state) has two parts in their design: an interface from applications to host stack, and an interface between the network and the host (mobile node). The working team asked an adoption of the I-D draft-yegin-dmm-ondemand-mobility as the basis for the solution for the former. The latter part and actually the on wire protocol solutions (e.g. for DHC, NDP, ..) are for future I-Ds to propose. The sense of the room was 10 for adoption and 3 against. The discussion of the solution basics how the API actually works was vivid. The related I-D draft-moses-dmm-dhcp-ondemand-mobility-00 discusses how DHCPv6 could be extended for the network to the host protocol solution.

Working Team #2 (Enhanced anchoring) described their current understanding of the architectural solutions forward. There was some confusion on used terminology and how those (and the proposed solution) e.g. map to existing mobility protocols/routing protocols.

Working Team #3 (Forwarding path and signaling Management) presented their conclusions and asked for the adoption of the I-D draft-wt-dmm-fpc-cpdp. The sense of the room was 10 for adoption and 1 against.

Working Team #4 (Distributed mobility management deployment models and scenarios) presented their conclusions so far. No requests to adopt any I-D yet.

Related to the Working Team #4 the I-D draft-matsushima-stateless-uplane-vepc-04 describes one way of deploying distributed mobility system. Some more discussion is still needed around it (there was a preliminary query whether the WG would be interest in working on this this architectural approach. There was 8-9 voices for willing to work on this approach and 0 against).

The AERO solution update was also given. There was also two Mobile IP \"maintenance\" related topics. The I-D draft-yan-dmm-hnprenum-00 presents a solution for PMIPv6 renumbering. There is interest to work on this but some more discussion in the WG is still needed. A call for adoption of the I-D draft-perkins-dmm-4283mnids was asked. The sense of the room was 7 for adoption and 0 against.

All adoption calls will be confirmed on the DMM mailing list.

## DNSSD

## DPRIVE

DPRIVE met and are working toward making a decision on a direction to move forward on. There are three competing proposals: 1) Private-DNS; 2) Start TLS; and 3) Confidential-DNS. All three proposals were discussed, and the temperature of the room was that there was not enough information to make a decision on any one proposal. The room was then polled on each proposal to study in more detail; and the decisions were 1) Private-DNS: no; 2) Start-TLS: yes; and 3) Confidential-DNS: equal yes and no.

## HOMENET

The Working Group had reached an impasse over the choice of a single mandatory-to-implement routing protocol for use in the Homenet Architecture. With OPSFv3 having fallen out of favour with the WG last year, the remaining choices under consideration were IS-IS and Babel. Margaret Wasserman produced a draft comparing the two protocols, but ultimately the balance was too finely to make a choice. In particular, the Routing Area ADs were adamant that more work would be required on Babel to bring it to Proposed Standards rather than permit a downref. Conversely IS-IS lacks features that are required or highly desirable in a Homenet. Ultimately a hum was taken on a proposal to form a Design Team with a narrow charter focused on making a formal recommendation to the WG in time for the Prague meeting.

draft-ietf-homenet-prefix-assignment-03 went through WGLC with minimal changes and should advance to IETF LC shortly. The xNCP drafts should be ready for WGLC within the next month or so.

draft-ietf-homenet-front-end-naming-delegation requires a little more work on the renumbering issue before it can go to WGLC.

## INTAREA

The intarea working group met in a short one hour slot. Fred Templin presented a draft about Tunnel MTU and Advisory Packet Too Big Messages. The draft was not up for adoption. Ron Bonica presented the draft about IPv6 Support for Generic Routing Encapsulation (GRE). There had been quite a bit of discussion about this draft on the list. There were two proposed changes to the draft concerning checksums and MTU handling. A new version wlll be submitted after the meeting and the draft will go to working group last call. Tom Herbert presented a draft about Generic UDP Encapsulation. We need some discussion about where is the right venue for this draft. There was a short update about the MIF working group (they were not meeting in Dallas) by Hui Deng. Lishan Li presented a draft about DHCPv6 Options for Discovery of 464XLAT IPv6 Prefixes. It is unclear where this belongs and we will discuss on the mailing list if this work is appropriate for intarea. Erik Nordmark presented on IP over Intentionally Partially Partitioned Links. There was no draft but the work may be interesting in case one materializes.

## LISP

[http://trac.tools.ietf.org/wg/lisp/trac/wiki/92nd%20IETF%20Dallas ​Summary Activities 92nd IETF](Dallas)

## LWIG

## NTP/TICTOC

## SUNSET4

Sunset4 WG met Thursday. This was our first meeting since Toronto, and followed a long period of little activity, so it was an attempt to do a soft restart on the WG. We were short a WG Chair (Marc) due to double-booking, so Wes chaired solo. We lost the primary author on our two WG docs (Simon Perreault) due to job change, but JF Tremblay agreed to take over, submitted a revision of the noipv4 draft prior to IETF and one of the other authors submitted an updated gap analysis draft just prior to the meeting. The gap analysis is reasonably complete, we are going to solicit reviews from folks who actually are running IPv6-only networks. noipv4 needs more work, but we have a path forward. Two other non-wg drafts, cgn-port-mapping is a milestone item, has been rev\'d to eliminate some IPR, so we have a path forward to adopt as WG item. IPv6-only DNS draft seems like good work, but draft is -00 and needs some reviews. Some discussion also about where \"IPv4 as a service\" belongs (v6ops or Sunset4). Our charter seems to be the right fit, but unclear who is interested in doing the work at the moment - may be folks who are in v6ops that didn\'t attend sunset4, more discussion to come. Generally, WG was fairly limited in terms of people participating in the discussion, so it\'s hard to take a direction from the discussion that happened there.

## TRILL

The TRILL WG met in the first afternoon slot Wednesday. This was its last meeting as an INT Area WG since it is transitioning to the RTG Area at the end of IETF 92. Its three current major efforts are OAM, active-active, and directory assist. The two main OAM RFCs, 7455 and 7456, have been published. There is a suite of YANG modules for TRILL and OAM in process and the TRILL OMA MIB is awaiting MIB Doctor review.

A brief status update was given on TRILL active-active: Publication has been requested on the three main drafts: draft-ietf-trill-aa-multi-attach, draft-ietf-trill-cmt, and draft-ietf-trill-pseudonode-nickname. The first and third of these are normatively dependent on draft-ietf-trill-rfc7180bis, which is also being advanced.

A brief status update was given on Directory Assisted TRILL Edge. It is expected that, after the next revision, a WG Last Call can be started and draft-ietf-trill-directory-assist-mechanisms and the supporting drafts draft-ietf-trill-ia-appsubtlv and draft-ietf-channel-tunnel. For the directory, the channel-tunnel draft is used just to provide security for pull directory queries and responses. A separate presentation was given on the channel-tunnel draft.

A presentation was given on draft-yizhou-trill-tree-selection, which provides for restricting TRILL distribution trees by Data Label and multicast group. A call for adoption is expected to be issued for this draft.

A revision to RFC 6439, the Appointed Forwarder RFC, was presented. A number of optional optimizations were presented that are subject to IPR that will be disclosed soon and that support faster enablement and switching of Appointed Forwarder in many cases including link failure.

draft-ietf-trill-over-ip is being updated to make better use of hardware support for security and encapsulation. In particular, as was presented, DTLS has been replaced with IPsec ESP for security and it is planned to add a method of negotiating the encapsulation used so a common, hardware supported encapsulation common to the communicating ports can be selected if available.

A presentation was given on an early draft covering TRILL link security, namely draft-eastlake-trill-link-secuirty-00.txt.

Finally, there was a presentation on a new method of multi-level TRILL nickname handling where level 1 areas are represented by the set of border RBridge nicknames for that area and border RBridge use a nickname they own to replace the ingress nickname on level 1 to level 2 transition.

## HIP

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, the WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis, all of which have already been published as RFCs. The WG is actively working on preparing a second batch for pub req.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-04-28. It was migrated from the old Trac wiki on 2022-12-14.*
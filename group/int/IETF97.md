---
title: WG Summaries for IETF 97
description: 
published: true
date: 2022-12-15T03:45:14.388Z
tags: 
editor: markdown
dateCreated: 2022-12-15T03:45:14.388Z
---

WG summaries are listed by alphabetical WG name.

## 6Lo Summary

6lo WG met at IETF97 (Seoul, S.Korea) for 2.5 hours on Tuesday afternoon session . The meeting was well attended. Co-chair Gabriel ran the meeting in the room and Samita attended via meetecho. James W., 6lo WG secretary was in the meeting as well. The chairs presented the WG draft status and agenda items. 6lo WG had made very good progress since IETF97 with the help of AD and the INTAREA community reviewers. draft-ietf-6lo-ethertype-request has become RFC7973 and draft-ietf-6lo-paging-dispatch was also on RFC editor queue. Draft-ietf-6lo-dect-ule, draft-ietf-6lo-6lobac, draft-ietf-6lo-dispatch-iana-registry and draft-ietf-6lo-privacy-considerations have been submitted to IESG and all of them are on IETF LC on the week of IETF97. 3 drafts have been adopted as WG documents. They are:
- draft-gomez-6lo-blemesh-02
- draft-hong-6lo-usecases-03
- draft-sarikaya-6lo-ap-nd-04

draft-ietf-6lo-nfc, draft-gomez-6lo-blemesh and draft-hong-6lo-usecases have been presented and received input from the WG. No major comments. 6lo-blemesh updated the WG about the comments from Bluetooth SIG that was coordinated by the 6lo chairs sometime ago.

Draft-thubert-6lo-rfc6775-update talked about further optimization of RFC6775 that removes DAR/DAC requirement for LL address with 6LBR and instead leave the responsibility with 6LR for a 6lowpan subnet-model. The modification was questioned by one or two individuals concerning whether this changes IPv6 behavior but the WG explained that the modification is an extension of existing feature described in RFC6775 and this is only true for 6lowpan resource-constrained networks that run 6lowpan-stack. Co-chair Gabriel asked for in-room response in order to gauge WG consensus with a hum. The WG responded positively. WG chairs will take the adoption call to the mailing list.

Draft-rashid-6lo-iid-assignment was presented and asked for WG input and they were asked to scope out usecase scenarios for this solution as the group did not see the application rightaway. Draft-lijo-6lo-expiration-time and draft-gomez-6lo-optimized-fragmentation were presented by the respective co-authors.

## 6TiSCH Summary

The Working Group meeting went smoothly and according to agenda, started and completed in time. A status was given on related work in other WG and at the IEEE. It is expected that the IETF IE identifier will be granted.

About draft-ietf-6tisch-minimal. A recommendation to remove well known keys and a todo to ask for an early sec dir review.

About draft-ietf-6tisch-6top-protocol. Got new implementers feedback, asking limited changes. The work depends on the allocation of an IETF IE by the IEEE ANA. draft-kivinen-802-15-ie, the draft that presents the need and the expected utilization of an IETF IE, is mostly complete and due to IESG telechat in a few weeks. Once the request is posted to IEEE, we can expect a rapid turn-around and that the IETF IE will be granted before YE2016, which matches the expected date for WGLC for this document.

About draft-ietf-6tisch-6top-sf0. A few questions are still open, such as the source of the time slots that are to be granted. Chairs to do a formal request to have feedback from implementers.

About draft-vucinic-6tisch-minimal-security. New draft describing the end of the join process once the key is obtained. Depends on work at CORE on OSCOAP. Will be integrated as the second phase of the 6TiSCH join. No opposition to WG adoption in the room, chairs to call for adoption on the ML.

About draft-richardson-6tisch-dtsecurity-secure-join. Work of the security design team, well advanced. Inherits from ANIMA, and can be seen as the first and optional phase of the join process. One critical decision remains to be made, whether the FSM is in the JCE or in the device. No opposition to WG adoption in the room, chairs to call for adoption on the ML.

## DNS-SD Summary

Drafts discussed:
- draft-ietf-dnssd-hybrid-05
- draft-ietf-dnssd-push-09
- draft-ietf-dnsop-session-signal-01 (DNSOP WG item)
- draft-ietf-dnssd-privacy-00
- draft-ietf-dnssd-pairing-00

The main item in DNS-SD, the Hybrid Proxy, is pretty much done. We decided in the meeting to rename the draft to be the Discovery Proxy, with a view to also supporting a separate Advertising Proxy function (to be defined in a new I-D to follow). The document is ready to go to the IESG. It has dependencies on DNS Push, which is also pretty much done, and in turn on the DNS Session Signalling draft which is being progressed in DNSOP. There are a few issues to resolve in that draft; once done, all three documents should be publishable together. The DNS Session Signalling work will have other use cases beyond DNS-SD.

The WG is also progressing DNS-SD privacy work, in the form of a general draft describing a mechanism for private service discovery, and a specific device pairing draft. Both will be reviewed within SAAG in the near future, and we expect implementation reports to follow at IETF98.

The WG will produce a new document soon on BCPs for enterprise/campus deployments of the new DNS-SD Discovery Proxy, and a new document on how multiple links might be stitched together (to avoid name clashes) in a typical homenet scenario. The WG milestones will be updated to reflect the new work.

## DMM Summary

DMM working group met for 2.5 hour from 9:30-12:00 on Monday.

The following documents have been submitted to IESG:
1) MN Identifier Types for RFC 4283 Mobile Node Identifier Option (draft-ietf-dmm-4283mnids-03 )
Note: The authors submitted an updated version during the meeting. The chairs will finish the write-up and submit to IESG soon.
2) Home Network Prefix Renumbering in PMIPv6 (draft-ietf-dmm-hnprenum-03)
3) LMA Controlled MAG Session Parameters (draft-ietf-dmm-lma-controlled-mag-params-02)

The working group discussed the following documents:
1. Enhanced Mobility Anchoring (draft-ietf-dmm-distributed-mobility-anchoring-02)：This document has been improved from the last version.Next step: needs more reviews from the working group.

2. Use Cases and API Extension for Source IP Address Selection (draft-sijeon-dmm-use-cases-api-source-05): This draft proposes new requirement for source IP address selection in on demand mobility scenario. The working group discussed whether to merge this extension to the \"On Demand Mobility Management\" document. Will continue this discussion on mailing list.

3. Implementation Status of FPC (draft-ietf-dmm-fpc-cpdp-05):Introduces the implementation of DMM FMC (Protocol for Forwarding Policy Configuration). This implementation is implemented using Java and current performance is 8700 tps.

4. Overview of draft-ietf-dmm-fpc-cpdp (draft-ietf-dmm-fpc-cpdp-05): This is the 05 version of the DMM FPC protocol (Protocol for Forwarding Policy Configuration). Next step: need more feedback from the working group.

5. DHCPv6 Extension for On Demand Mobility exposure: Discussion on whether or not DHCPv6 should only request IA prefix instead of IA address.

## DPRIVE Summary

DPRIVE met on Friday Afternoon session 1. The vast majority of the Phase 1 (Stub to Recursive) work is complete, and we spent most of the time discussing how we were planning on addressing the Phase 2 (Recursive to Authoritative) work. We had a useful discussion, and there was significant support for working on this - we will be discussing things like rechartering with our Ad (Terry) soon.

1: draft-ietf-dprive-dnsodtls lies with the IESG.

2: draft-ietf-dprive-dtls-and-tls-profiles was presented. It has already completed one WGLC without enough feedback. We have started another WGLC and are encouraging more feedback.

3: draft-mayrhofer-dprive-padding-profile was also presented \-- it got string support for adoption in the room, and we have started an onlist call for adoption.

4: Most of the time was spent on a Bof Style Phase 2 discussion. There was strong interest in moving forward with this, and we will be discussing rechartering with our AD.

## IPWAVE Summary

This was the first meeting of the IPWAVE WG.

A few weeks before IETF 97, there were four documents that addressed various parts of IPv6 over 802.11-OCB. Right before the document cut-off date, the authors of those documents were able to merge them into a single document. The bulk of the session was spent on status and open issues related to that document. Most people in the room were willing to adopt the next version of that document, which will incorporate the discussion that took place during the Seoul meeting. The expectation is that will be posted before the end of the year.

The remained o the time was spent on topics that will eventually be included in an informational document. The WG Chairs suggested that a single informational document was much more desirable that several documents. A recent statement by the IESG supports this view.

## LPWAN Summary

WG meeting lasted 2 hours.

This was the first meeting of the group after its forming. The charter was presented, with its two charter items. The rest of the meeting was dedicated to presentations related to these two items.

Presenting draft-farrell-lpwan-overview-04 then draft-zuniga-lpwan-sigfox-system-description-01 and draft-ratilainen-lpwan-nb-iot-00

Draft farrell addresses the first chartered item - an LPWAN characterization/overview document -; it is a combination of four individual submissions (the fifth will be submitted soon), one for each of the four represented technology, and one on the gap analysis. After a quick intro on that draft, 3 of the 4 baseline technologies were presented, Wi-SUN, SigFox and NB_IOT (which was pushed to the end due to connectivity problems with meetecho). The LoRa document presentation was postponed for the next IETF due the LoRa Alliance meeting happening concurrently, one thing we\'d like to avoid in the future, and last minute cancellation of the editor. The main questions on the LPWAN overview document were aimed at figuring out the level of detail to be expected from the main draft, vs. the individual submissions. Questions like - \"What do we expect from the document? How much details (e.g. include radio information)? Do we need the terminology/architecture from the Gap analysis?\" One sense was that the gap analysis portion may be removed before shipping since it is of high by transient value.

There was a general consensus in the room that this is the way to go and that we have everything necessary to advance with it. A call for adoption confirmed this, with next step - calling on the mailing list.

Presenting draft-toutain-lpwan-ipv6-static-context-hc-00 and draft-toutain-lpwan-coap-static-context-hc-00: The second charter item - compression for IP/UDP/CoAP - was addressed by two documents in the second half of the meeting. The first document focuses on introducing the general approach and IP/UDP compression and has been around for more than 6 months. Interesting discussion on the scope, the purpose, many people have read it, and there are initial implementations. The call for adoption was accepted in the room, next step - call for adoption on the mailing list. The extension document for CoAP compression is a logical extension of the first document and the room also decided to adopt the document along with the first one. The CoAP compression is a much more recent one, with more need for polishing and technical work. The chairs insisted that additional authors can/should contribute in case this became a WG item, which was welcomed.

In short, very good support in the room for the three presented documents. A little bit more than a third of the room has read the individual submission drafts, and many are willing to contribute. Consensus in the room for adopting all three documents, which should now be confirmed by the mailing list.

## INTArea Summary

INTArea WG met for one hour on November 16th. We had 9 presentations, one announcement from IEEE 802.1CF OmniRAN and a tight schedule!

Agenda and actions:

- "IP Broadcast Considerations" (draft-ietf-intarea-broadcast-consider-01): submitted to IESG
- "Extended Ping" (draft-bonica-intarea-eping-02): expect a WG adoption call
- "IP over Intentionally Partitioned Links" (draft-nordmark-intarea-ippl-05): expect a WG adoption call
- "IP Tunnels in the Internet Architecture" (draft-ietf-intarea-tunnels-03): a new version is to be submitted soon after which, a LC may start 
- "Generic UDP Encapsulation and Extensions" (draft-ietf-intarea-gue-00 & draft-herbert-gue-extensions-01): work in progress. No action at this stage
- "Identifier-locator Addressing for IPv6" (draft-herbert-nvo3-ila-03): AD suggested scoping the draft before moving forward
- "Special Purpose IP Address Registries" (draft-bhcv-rfc4890bis): presented for the first time and will be sponsored by our AD
- "Multiple Access Management Protocol" (draft-kanugovi-intarea-mams-protocol-01): presented for the first time
- "Interconnecting sites by IP tunnels" (draft-yong-intarea-inter-sites-over-tunnels): no time for presentation

All adoption and/or last calls will be confirmed on the mailing list

## LWIG Summary

LWIG WG met at Thursday, Nov 17, 2016. About 50 people attend the session.
- draft-ietf-lwig-crypto-sensors-01, a WG item, the author briefly report the updates, and will head for WGLC after some review;
- draft-gomez-lwig-tcp-constrained-node-networks-00, a candidate draft for a WG item, the author talked about the draft. There were still some un-echoed issues on the mailing list. The authors need to clear them before moving forward.
- 6LOWPAN Neighbor Management Policy. A non-draft tech talk which was well received with much interactive discussion. Some well-known experts appreciated the work and it was highly recommended to have a draft as soon as possible. The presenter will go back to write a draft.

## DHC Summary

DHC WG met at IETF97 for 45 minutes on Friday afternoon session. The audience was small due to being the last session. Chairs gave an update regarding completed (1 RFC published) and on-going (2 I-Ds sent to IESG, several WG drafts progressing).

The first discussion was about draft-fsc-softwire-dhcp4o6-saddr-opt, which defines an extra option for lw4over6. This work started in Softwires, but now seeks adoption in DHC. The response was positive and chairs will initiate adoption call after next rev is published.

The second discussion was about draft-ietf-dhc-rfc3315bis, a primary work of the WG. We had a very successful WGLC (more than 290 separate comments received). DHCPv6bis team is working through them and currently addressed over 210 of them. Updated rev is expected around January. Several issues were discussed and several comments were received.

The third presentation was done by the chair regarding draft-ietf-dhc-dhcpv4-forcerenew-extensions, which was inactive since adoption. Authors were unresponsive and there was no interest in carrying forward with DHCPv4 extension, so pending confirmation on the mailing list, this work will be dropped.

Fourth and final presentation was about reviving draft-ietf-dhc-dhcpv6-agentopt-delegate draft that would inform relays of assigned addresses and prefixes. This work can be a solution to the snooping problem when server-client encryption is enabled (another WG item, draft-ietf-dhc-sedhcpv6). The discussion gravitated towards not resurrecting until the sedhcpv6 I-D progresses further.

## HIP WG Summary

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, the WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity. We have also added a new HIP DEX draft to the charter. We intend to close the WG after publishing that draft as RFC.

We are requesting the publication of our drafts in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis, all of which have already been published as RFCs. The second batch included RFC 5203bis, RFC 5204bis, RFC 5205bis, and RFC 6253bis, all of which have already been published as RFCs as well. The third batch included RFC 5206bis (only mobility) and the related multihoming spec, both of which have already been approved by the IESG. The WG is actively working on preparing the next batch for pub req. The only documents the WG needs to publish before concluding its charter are the native NAT traversal spec, RFC 4423bis, and HIP DEX.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-11-29. It was migrated from the old Trac wiki on 2022-12-14.*
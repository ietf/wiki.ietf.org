---
title: WG Summaries for IETF 94
description: 
published: true
date: 2022-12-15T03:21:12.381Z
tags: 
editor: markdown
dateCreated: 2022-12-15T03:21:08.662Z
---

IETF 94 Summaries

## 6TiSCH

The 2-hour 6TiSCH meeting focused mainly on 3 elements:

-   rechartering. This has been discussed during 2 interim meetings, and the text presented at the WG meeting summarized the conclusions from those discussions. The proposed new charter builds upon the old charter, and introduces dynamic scheduling of cells. Several constructive remarks were made about the presentation of the different work items; the chairs took as action items to integrate those in proposed charter text, and to transmit it to the IESG.
-   the main technical part of the meeting was dedicated to the draft-wang-6tisch-6top-sublayer-03 and draft-dujovne-6tisch-6top-sf0-00 drafts (both of which are complementary). No major issues were raised about these draft, but the WG asked a number of clarifying technical questions and make some smal suggestions the authors agreed to integrate.
-   a presentation of draft-thubert-6tisch-4detnet-01, which links the work done at 6TiSCH with the work done at DetNet. The chairs asked for more feedback on the document on the mailing.

A number of other points were raised:

-   draft-ietf-6tisch-minimal-12 was transmitted to the IESG a couple of weeks before the IETF94 meeting. Three constructive reviews were sent back to the WG. To advance the work on the draft, and in the interest of time, the reviews are discussed on the ML. We had a discussion on the status of the draft (currently Proposed Standard), which we will conclude on the ML.
-   We announced the second 6TiSCH plugtests event to be held on 2-4 February 2016 in Paris, France, organized by ETSI and hosted by Inria.
-   We had an announcement about a Study Group created at the IEEE around defining an LLC which could include work from the 6TiSCH and 6lo WGs, as well as a KMP and L2R routing protocol. We agreed to continue the IETF/IEEE liaison around that aspect. The same announcement was made in the 6lo and ROLL WGs, with a longer presentation at the INT Area session.

The full minutes, the detailed action items and the presented slides are published in the IETF material manager. The meeting was recorded through Meetecho, and the recording (audio+video) is available.

## 6lo

6lo WG met on Nov 5th, Thursday morning session for 2.5 hours. The meeting was well attended.

The WG discussed 12 drafts - the agenda and materials page contain more details: https://datatracker.ietf.org/meeting/94/agenda/6lo/.

6lo WG produced its 4th RFC 7668 \[ IPv6 over Bluetooth Low Enregy\] right before IETF94 and completed last call for ietf-draft-6lo-dect-ule-03 and adopted draft-ietf-6lo-privacy-considerations. The WG is looking for reviewers for the following drafts:

- NFC: draft-ietf-6lo-nfc
- 6775-update-req: draft-thubert-6lo-rfc6775-update-reqs
- Backbone router: draft-thubert-6lo-backbone-router

Candidates for adoption call:

- Backbone router: draft-thubert-6lo-backbone-router
- Routing header Dispatch: draft-thubert-6lo-routing-dispatch
- IANA chairs document: draft-chairs-6lo-dispatch-iana-registry

draft-ietf-6lo-lobac was presented at the WG meeting and it is ready to go for Last call soon. The WG discussed the ESC dispatch draft (draft-chairs-6lo-dispatch-iana-registry) for closing a few open issues requiring WG input. Draft-thubert-6lo-routing-dispatch provides a mechanism for 2nd type of dispatch header for variety of different usecases for 6lo.

The group will also work on a 6lo-usecase document (draft-hong-6lo-use-cases-00)and pick up the remaining work to review the unofficial WG document for RFC6775 update requirements. Two documents target adoption call for experimental RFC due to smartgrid deployment:
- draft-kelsey-6lo-mesh-link-establishment
- draft-ohba-6lo-mle-hip-dex

6lowpan with Ipsec security compression draft (draft-reza-6lo-ipsec-02) has been also presented and it has received comments on improvement of the bit-usage.

Other documents that are presented at the meeting:
- draft-delcarpio-6lo-wlanah-01 (IPv6 over 802.11ah)
- draft-gomez-6lo-blemesh-00 (IPv6 for Bluetooth Mesh)
- draft-sarikaya-6lo-ap-nd-01 (An alternative to SEND mechanism for 6lowpan-ND)

Charlie Perkins also announced a proposed IEEE study item for 802.15.4 LLC work. The proposed study slides are uploaded in the 6lo materials page. No timeslots were allocated for this talk at 6lo due to lack of extra time but the topic has been discussed at 6tisch and intarea working group. The goal of this work is still not very clear but it was promised that they(IEEE?) would work with IETF 6lo, 6tisch other relevant working groups in the future.

**Meeting outcome**

- 6lobac will be going for WG LC soon
- Dect-ule draft will be ready for IESG submission after shephard\'s review
- draft-chairs-6lo-iana went on for adoption call right after the session \[ Brian H. \]
- Working group is looking for a shephard for the iana document
- Two reviewers received for 6lo-routing-dispatch and 6lo-backbone-router documents
- The above two documents are targeting for adoption calls
- 6lo-usecase document and 6lowpan-update-requirement document will be discussed before the next IETF

## DHC

The DHC WG met on Thursday (11/5) for 2 hours with the following presentations:

1. Tomek Mrugalski discussed the DHCP4o6 implementation/testing work done at IETF-94\'s Hackathon where the team had 2 independent server and client implementations interoperating. 
2. Linhui Sun presented the YANG Data Model for DHCPv6 Configuration by reviewing the recent major changes to the draft-ietf-dhc-dhcpv6-yang draft and providing some results from mapping the model to various implementations. 
3. Sunil M Gandewar presented Relay Initiated Release (draft-gandhewar-dhc-relay-initiated-release and draft-gandhewar-dhc-v6-relay-initiated-release) by providing a summary of recent events, the background and motivation for the work, after which concerns regarding the concept were discussed. 
4. Tomek Mrugalski introduced Moving forward on Secure DHCPv6 (draft-ietf-dhc-sedhcpv6) by reviewing the history of the work and discussions during the week to resolve the IESG and general security concerns. The plan is to merge the authentication (draft-ietf-dhc-sedhcpv6) and encryption (draft-cui-dhc-dhcpv6-encryption) draft and have authentication with encryption or just encryption. Lishan Li followed with proposed changes to the draft-li-dhc-secure-dhcpv6-deployment draft to provide motivation, the threat model, and deployment scenarios. The pre-distributed key concept targeted at the organization model, rather than TOFU, will be featured. TOFU will be left for future work. 
5. Bernie Volz presented the DHCPv6 Failover Update for Kim Kinnear. The original concept of a design document will be scraped and the recently submitted protocol document will replace it. Several volunteers to review the draft-ietf-dhc-dhcpv6-failover-protocol were recruited. 
6. Lishan Li presented DHCPv6 Prefix Length hint issues for Tianxiang Li. The issues and proposed solutions were discussed. 
7. Bernie Volz presented the DHCPv6bis update and lead the discussion on the proposed solutions to several tickets. While there was general support for the proposed solutions, follow up will occur on the DHC WG mailing list to confirm.

Summary results: 
1. draft-ietf-dhc-dhcpv6-yang-00 - Expect updated draft. 
2. draft-gandhewar-dhc-relay-initiated-release and draft-gandhewar-dhc-v6-relay-initiated-release will be revised to address WG concerns. 
3. draft-ietf-dhc-sedhcpv6-08 and draft-cui-dhc-dhcpv6-encryption-04 will be merged, TOFU will be removed. 
4. draft-li-dhc-secure-dhcpv6-deployment-01 will undergo a major revision. 
5. draft-ietf-dhc-dhcpv6-failover-protocol-00 will be reviewed and updated. 
6. draft-cui-dhc-dhcpv6-prefix-length-hint-issue-01 will be updated, perhaps reorganized more like the slides presented at IETF-94. 
7. draft-ietf-dhc-rfc3315bis-02 will be updated once solutions to tickets 81, 150, 151, and 152 confirmed on mailing list.

## DPRIVE

The DPRIVE (DNS Privacy Exchange) WG met on Monday 5 November. Presentations included dns-over-tls, dns-over-dtls, dprive-privacy-eval. There was a presentation on a new possible encryption mechanism dprive-dnsenc. We discussed a path forward, and then the chairs did an interpretive dance.

**meeting outcome:**

- more reading of the DTLS document
- more reading of the DTLS document
- Split the authenication into a separate document

## DNSSD

Chairs opened the meeting with agenda bashing and document status update (documents accepted as WG documents):

**draft-ietf-dnssd-hybrid-01**
- Will consider for WG last call today
- Does this document meet the requirements of RFC 7558?
- Looking for document shepherd

**draft-ietf-dnssd-push-02**
- Needs review against dnssd-hybrid specification
- Will consider for WG last call today
- Looking for document shepherd

**draft-ietf-dnssd-mdns-dns-interop-02**
- WG last call complete 2015/07; comments discussed at IETF-93
- Rev -02 published includes updates from WG last call comments 
- Needs final review by WG before forwarding to IESG
- Looking for document shepherd

The chairs asked if there was consensus in the room to do a short WG last call review to confirm that draft-ietf-dnssd-mdns-dns-interop-02 addresses the comments during the previous WG last call.

**Summary meeting results**

- draft-ietf-dnssd-push: after 2nd implementation ready for WG last call 
- draft-ietf-dnssd-hybrid: ready for WG last call; will send to IESG when draft-ietf-dnssd-push is ready for IESG
- draft-ietf-dnssd-mdns-dns-interop: ready for WG last call review and then send to IESG

**Document discussions:**

**Scalable DNS-SD (SSD) Threat,** draft-otis-dnssd-scalable-dns-sd-threats-02

Doug Otis gave a presentation about the -02 revision, which replaces draft-otis-dnssd-mdns-xlink-06 and draft-rafiee-dnssd-mdns-threatmodel-03. Based on WG comments, draft-otis-dnssd-scalable-dns-sd-threats-02 needs additional editing to use a more accurate model of DNS, mDNS and other name resolution mechanisms as the basis for the threat analysis.

**DNS Push Notifications,** draft-ietf-dnssd-push-02

Stuart Cheshire gave a brief review of updates to the -02 rev. The WG then discussed whether the document is ready for WG last call. Consensus is that the WG would like to see an interoperable implementation prior to WG last call.

**Hybrid Unicast/Multicast DNS-Based SD,** draft-ietf-dnssd-hybrid-01

Stuart Cheshire gave a brief review of updates to the -01 rev. The WG consensus in the room was that the document is ready for WG last call. However, because this document depends on draft-ietf-dnssd-push-02, this document will be held and then sent to the IESG when draft-ietf-dnssd-push-02 is ready to go to the IESG.

**Optimizing DNS-SD query using TXT records,** draft-aggarwal-dnssd-optimize-query-00

Dave Thaler reviewed the previous presentation of draft-aggarwal-dnssd-optimize-query-00 and presented additional details of allseenalliance.org/framework/documentation/learn/core/system-description/advertisement-discovery. The AllSeen Alliance document describes extensions to DNS-SD/mDNS defined by AllSeen. The request from the WG is to write a document accommodating AllSeen requirements while adhering as closely as possible to draft-ietf-dnssd-hybrid-01.

## DMM

Distributed Mobility Management Working Group met on Nov 3, Tuesday morning session for 2.5 hours.

Chair introduced the current status of the working group. DMM has published two RFCs and has three working group documents. The WG has 23 individual drafts. Three milestone has been finished.

The WG discussed 11 presentations during the WG session. The agenda and meeting materials can be found in:

-   https://datatracker.ietf.org/meeting/94/agenda/dmm/
-   https://datatracker.ietf.org/meeting/94/materials.html

The agenda includes DMM related working group topics, Mobile IP maintenance related topics and overflow queue. The DMM related topics includes the working team topics: exposing mobility state, enhanced mobility anchoring, protocol for forwarding policy configuration, dmm deployment and other proposals, including AERO, API extension, prefix cost.

The MIP maintenance topics includes LMA controlled MAG session parameters, MN identifier types.

**Summary meeting results:**
The chairs will start/finish the WGLC for the three working group documents:

-   draft-ietf-dmm-4283mnids-01
-   draft-ietf-dmm-fpc-cpdp-01
-   draft-ietf-dmm-ondemand-mobility-01

The following document adoption will be confirmed on the mailing list:

-   draft-gundavelli-dmm-lma-controlled-mag-params
-   draft-yan-dmm-hnprenum-03
-   draft-seite-dmm-rg-multihoming-02

## 6MAN

The 6MAN working group met for a 2 1/2 hour session on Wednesday morning at IETF94. The session was well attended. The agenda, and slides from 6MAN are available at: https://datatracker.ietf.org/meeting/94/materials.html.

The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. With the new individual drafts being given 5 minutes and 3 slides each. There was no time for presentation of new drafts at this meeting.

Major topics discussed where the host routing in a multi-prefix network, IPv6 to Internet Standard, and Hop-by-Hop header handling.

The recently adopted Host routing in a multi-prefix network was presented. There is good for support for this work and it is expected to move forward.

An update on the project to move the IPv6 to Internet Standard was presented. As a result of the discussion the plan going forward is to:

-   Complete work on rfc2460bis and rfc4291bis

-   Move the ICMPv6 (RFC4443) will be advance as is

-   Path MTU Discover, RFC1981 will need a small update

-   Collect data to make sure there is interoperability for the updated document

-   Submit to IESG for Internet Standard as a package:

    -   rfc2460bis, rfc4291bis, rfc1981bis
    -   RFC4443, RFC3596, RFC1981, RFC2460, RFC4941

As part of the discussion, the update to RFC2460 made by draft-ietf-6man-deprecate-atomfrag-generation-03 will be incorporated in rfc2460bis, and this draft will be published for Informational status.

There was an active discussion on proposed changes to the handling of the Hop-by-Hop header. A general consensus was reached to allow this header to be processed or ignored based on the configuration of a node.

**Summary meeting results:**

The chairs will start w.g. last calls for:

-   draft-ietf-6man-ipv6-mibs-obsolete-00
-   draft-ietf-6man-multi-homed-host-02
-   draft-ietf-6man-rdnss-rfc6106bis-06

The following document adoption will be confirmed on the mailing list:

-   draft-hinden-6man-rfc4291bis-06
-   draft-krishnan-6man-maxra-03
-   draft-previdi-6man-segment-routing-header-08

## INTAREA

The intarea working group met in a short one hour slot in Yokhama. Two new documents have been adopted as working group items before the meeting. One is about issues with current hostname practice and one is about multi-hop ad-hoc wireless links.

The tunnels draft has been updated after a long hiatus. The changes were presented and the sense of the room was favorable to the changes. The draft will continue to be discussed on the list and frequently.

There was a presentation from the IEEE 802.11 regarding the optimizations they are working on to improve multicast. The presentation was very well received and there will be a non-WG mailing list set up to discuss further.

There were two presentations about drafts that are defining yang models for GRE and IP tunnels. The work does not have a current home and the document authors have been referred to intarea as a potential home for this work. We will discuss with the ADs to determine future steps.

There was a presentation about some new proposed work in the IEEE (802.15.llc) that is trying to increase the ease of use of 802.15.4. This was purely informational and there is no further work expected as of now.

## SOFTWIRE

The softwire working group met for a short session in Yokohama. The main goal of the meeting was to ascertain a direction forward for some of the remaining working group items such as unified CPE and MAP deployment.

The unified CPE document has been greatly simplified to be coherent with the final state of the MAP DHCP options. One of the open items was how to specify priority between the different transition mechanisms and one proposal was presented (i.e. a list of mechanisms ordered by priority). This will be discussed further on the list to see if this mechanism is the right way forward and whether there is interest to do this work at all anymore.

Similarly, there were some opinions in the working group that the MAP deployment work should wait for actual deployment experiences instead of presenting considerations to plan for deployment. The chairs will send of a note to the v6ops mailing list so solicit comments on whether such deployment considerations are useful.

## HOMENET

The Homenet WG met at IETF 94 on the morning of Tuesday 3rd November. The chairs began with a WG document status update since IETF 93, which included one WG document moved to the RFC Editor's Queue, one approved by the IESG, and the other just exiting IETF Last Call. Outstanding documents include those related to DNS naming and Service Discovery, as well as new work targeting reconciliation of work done in the MIF WG with that in the Homenet WG.

In addition to regular document status updates, the chairs also highlighted the email posted a week earlier concerning their decision regarding routing protocols in the home. This decision seemed to be well accepted by the WG, and the remainder of the time was devoted to the MIF and Naming/Service Discovery work mentioned above. Following the session a presentation and demonstration by the Homenet Hackathon team was provided for those who wished to remain in the room.

## HIP

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, the WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis, all of which have already been published as RFCs. We just requested the publication of the second batch, which includes RFC 5203bis, RFC 5204bis, RFC 5205bis, and RFC 6253bis. The WG is actively working on preparing the next batch for pub req.

## MIF

The MIF wg met for 2 and half hour on Friday morning.

1) MIF WG document status review draft-ietf-mif-happy-eyeballs-extension 
Authors are calling for WGLC, one issue has been raised about whether it mandate algorithm

   IPR disclosure on MPVD DHCP WG had concensus to drop this document because of IPR claim

2) draft-stenberg-mif-mpvd-dns 
This draft was proposed to avoid IPR issue and implemented during IETF Hackthon. it need further discussion

3) draft-kline-mif-mpvd-api-reqs 
Erik introduced the requirement for api, he received lots of feedback on how to improve it, WG think this work should continue , and Android implementer invite more OS people to work together, Tommy will check.

4) MIF/Homenet discussion
Margaret and Mark have presented the offline discussion between homenet and mif design team. they received many feedback on the output of the design team.

5) Suresh presented WG document on draft-ietf-mif-mpvd-ndp-support and draft-ietf-mif-mpvd-id, WG has the strong desire to take authentication out of informational document, and no opposition. WG also think NDP document should not have the host behavior. For ID document, WG has the strong concensus on waiting for 1st protocol use it, then specify the type of ID.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-11-22. It was migrated from the old Trac wiki on 2022-12-14.*
---
title: IETF 89 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:28:38.447Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:28:07.635Z
---

# IETF 89 Working Group High Level Summary

Page created for the IETF 89, March 2 - 8 2014, in London.

**6renum** -

**bmwg** -

**dime** -

About 20 people in the room for the dime WG but most of them are active followers/participants (authors, reviewers, AAA experts, etc.). Rough consensus in the room to move as WG document the draft draft-bertz-dime-congestion-flow-attributes, which defines AVPs for the transfer of Explicit Congestion Notification (ECN) related infos. A new milestone will be added in the charter. A bunch of volunteers will review the v03 of the draft-ietf-dime-group-signaling defining AVPs for the management of session group, that can be used for bulk operations, in order to move forward a WGLC. The main discussion was again on the draft-ietf-dime-ovli-01, which proposes generic AVPs for overload control management over Diameter based networks. We have discussed the main contentious issues that block the publication of a version more stable. In the meeting room, some consensus was reached regarding the major left open issues and it seems that the next version should almost ready for WGLC. Anyway, any decision discussed in the meeting room will have to be confirmed on the mailing list.

**dnsop** -

DNSOP had two sessions this time, an unexpected second session that was to address DNS Privacy and Confidentiality and was the outcome of the DNSE BoF session earlier in the week. Nothing was resolved, though it was in general agreement that a X/Y/Z axis of options and solutions as a way of picking apart the solutions lacking options. Also, a separate mailing list to discuss DNS privacy would be spun up to keep the traffic away from DNSOP for the time being.

The main session had another amorphous topic of addressing the issue of Special TLD names, RFC 6761, and how to move forward. There was a request from IESG for some guidance on what to do with this problem. The outcome was more work is definitely needed, but it will take some more time to remove the DNS from the name space discussion. The group also handled several drafts relating to DNSSEC key exchange methods, and moving them forward, as well as adopting another draft on DNSSEC roadblock avoidance. The group then went back and resurrected drafts which had been approved by the group and gone through working group last call, but quietly expired. These will be reviewed to make sure the technology is still needed and valid (it is), and move these along also.

The larger rechartering discussion will be moved to the mailing list.

**eman** -

The EMAN Framework draft is now with IESG, work progresses on our three MIB drafts. We expect to submit all three before IETF-90. That leaves the EMAN Applicability Statement; we discussed what's needed to complete that. Our target is to get this to WGLC soon after IETF-91. Two other drafts were presented, mailing list discussion is encouraged.

**grow** -

From the meeting GROW has one new work item on a RPSL extension, which needs to be confirmed on the mailing list before adopting the draft. The community has interest in further improvements to routing policy language which may generate further work items. The session provided further feedback to the draft-ietf-grow-filtering-threats draft for which last call occurred in november 2013. One draft is ready for last call, draft-ietf-grow-ix-bgp-route-server-operations. There are two drafts that expired but have continued interest, draft-ietf-grow-bmp, draft-ietf-grow-ops-reqs-for-bgp-error-handling. These drafts are waiting update from the authors.

**ipfix** -

Meeting cancelled

**lmap** -

LMAP met for one meeting on Friday. The WG discussed the use cases and framework documents which both ran WG Last Calls. Good progress was registered on the open issues, with a few items to be confirmed on the mail list. The information model which became a WG item was also discussed. The WG receive updates about related work in IPPM (in the IETF) and BBF (out of the IETF). Between now and IETF-90 contributions are expected about the protocols and data models, the chairs will send a message to the WG mail list on this respect.

**mboned** -

**netconf** -

NETCONF session discussed 6 WG items covered in the new charter. The drafts Reverse SSH and RFC 5539bis are ready for WGLC. The WGLC will be started with April 1st as deadline. YANG Data Model for NETCONF Server Configuration will be updated and submitted as WG item with the new name draft-ietf-netconf-server-model. Security considerations section will be extended. RESTCONF Protocol and YANG Patch Media Type will be revised and submitted as WG documents. Zero Touch draft will incorporate the results of the discussion and submitted as WG document.

**netmod** -

The NETMOD meeting in London was attended by about 70 people. All currently charter work items are either in the RFC editor queue, on the IESG agenda, or they passed WG last call and are on the way to the area director. The discussion of a proposed new WG charter resulted in some minor modifications. The WG also discussed the ecosystem around YANG data model development and support and how it could be improved to better support and accelerate implementations of YANG modules. The active contributors indicated support for the new charter and there were no objections. The revised charter text including the modifications has been circulated on the mailing list right after the meeting. After the charter discussion, the WG started to go through a list of issues that may be addressed in a YANG maintenance release in order to determine which issues are in scope, out of scope, or need more discussion. The status of the stateless packet filter data model and a revision of the guidelines document has been reported.

**opsawg** -

**opsec** -

**radext** - The radext wg met on Tuesday March 4 and had approximately 20 people attending and 1 on jabber. No new RFCs have been published since IETF 88. Two active wg drafts, three proposed wg drafts and one proposed draft were discussed during the 1.5hr meeting. Of the five drafts discussed, two (radext-dynamic, radext-radius-fragmentation) are wg drafts and all progressed with new versions submitted since IETF88. radext-dynamic completed wglc and non-ops review, which drove publication of several new versions. A new version was published during IETF 89 week and will undergo a shortened wglc. radext-radius-fragmentation made its second showing as wg draft and made substantial progress since IETF 88 with completion of wglc and review by IP and transport directorate. At IETF 89 discussion centered on dealing with RFC2865 conflict and tentative resolution reached. A new version will be published and be taken through a shortened wglc. Two of the proposed wg drafts (radext-bigger, radext-cfg-radius) were received positively by wg. Wg reached consensus to make radext-bigger an official wg work item and also reached consensus on opening up radext charter soon to allow for work specified in radext-cfg-radius. The third individual draft (radext-key) was met with skeptical eye by a number of wg members due to the belief that radext is not the right protocol for the use case described the draft. Discussion to be taken to be mailing list to provide authors alternative protocol options.

**v6ops**- v6ops held two meetings and discussed a total of nine drafts. draft-byrne-v6ops-clatip requests an IPv4 prefix for use in ds-lite networks. Softwire (Yong Cui) indicates that they would rather handle that as part of the softwire process, and has requested discussion of that in their meeting Friday. There is an issue with Neighbor Discovery on Wifi networks, for which the 6man chairs set up a design team and presentations were made in 6man and v6ops. The design team should be considered joint between the working groups, and we expect outcomes from it to both working groups, in terms of ND protocol (primarily timer and procedure) recommendations and operational recommendations. draft-ietf-v6ops-dc-ipv6 and draft-ietf-v6ops-balanced-ipv6-security are expected to advance to the IESG in the near future. Work was discussed regarding the use of ULAs and the operational interaction of DHCP and SLAAC; those efforts are ongoing.

**wpkops** - Some vendor survey results are in. The coverage is incomplete. The group had to decide whether to drive to on-time completion with the available results or attempt to expand the coverage. It was decided to take the latter approach. Efforts to obtain responses from the identified vendors will be renewed. And the opportunities for obtaining test results will also be pursued.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-03-10. It was migrated from the old Trac wiki on 2022-12-19.*
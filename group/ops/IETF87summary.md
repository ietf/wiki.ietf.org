---
title: IETF 87 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:20:40.797Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:19:13.628Z
---

## IETF Working Group 87 High Level Summary  

Page created for the IETF 87, July 28 - August 2 2013, in Berlin.

**6renum** The 6renum WG did not meet in Berlin. Its work is done, and the final draft, draft-ietf-6renum-gap-analysis-08, is ready for publication having been through IESG review.

**adslmib** No meeting.

**bmwg** The session has 20 people attending and 2 remote participants. Two new RFCs were published in the interim between IETF meetings. The new WG draft on BGP dataplane convergence was discussed, with  many questions and suggestion surrounding the sample test results. The SIP wg drafts have moved back to the working group this week, and we still need a status report on the Content Aware drafts. There was extensive list discussions leading up to the session on many of the new work proposal drafts, and close attention paid to traffic management, in-service software update, and data center benchmarking (the last two are planned to move toward wg adoption with specific calls for interest on the list, but both seem ready based on list and meeting interest levels). There is still some interest in Power benchmarking, as discussed. Re-chartering is currently planned by IETF-88.



**dime** About 20 people were in the room and some folks were remotely participating.

Session Grouping: some issues have to be discussed but the general approach seems to be fine for the group.

Overload Control: Due to several approaches, no agreement for the adoption of one draft as WG document. A way forward was agreed: form a design team responsible for editing a draft capturing a minimal approach on the definition of the AVPs required to advertize overload situation. The resulting draft should be finalized for the next IETF meeting. Other drafts may be initiated to describe how these AVPs can be used in various use cases (overload control, load balancing, etc.)

E2E security: not enough time to discuss this topic in the meeting. However, the requirement draft seems to stable enough to become a WG document and even be moved forward for publication. This will be discussed on the mailing list.

AVPs For Provisioning IPv4-Over-IPv6 method info: The group welcomes the effort to define these AVPs in the Dime WG. Some AVPs could be defined in a different way. Comments will be sent on the mailing list to improve the document and a new version of the draft will be submitted. The chairs will see how to update the current charter to include this new topic. 

**dnsop** Four Different items presented.  First, Discussion on handling of AS112 with alternate proposals presented. One is using an Omniscient AS112, the other uses DNAME mechanism.  The decision was to adopt both documents in the working group and continue to evaluate.  Second was a discussion on Child/Parent zone key handling. One method would load the keys into records at the parent, and then perform functions, the second was to definite bit-pointers on what part of the key to copy and the action to take.  End action is to present two new drafts to adopt moving forward. Third presentation discusses a mechanism for pre-fetching queries in recursive resolvers. Turns out Unbound does this, but slightly different.  End result is to adopt in the working group and move forward. Final presentation described a mechanism to clear DNS Resolvers for domains, aka a giant 'panic button'. Lots of debate over this and the consensus was to leave this for now until it can be better explained. 

**eman** A new version of the EMAN Framework draft was published mid-July. This has many changes, everyone is asked to read/review/comment on
it.  It may be possible to simplify the Framework further, but we don't want that to delay it any longer. We will start WG Last Call for it about mid-August.

**grow** During IETF 87 four drafts were presented, both of which have been presented before but not yet adopted by GROW.  The exchange point router server operations draft (draft-hilliard-ix-bgp-route-server-operations-03,) has been a long term work in progress with a companion draft in IDR.  Based on feedback from the meeting there is interest in this document as work, and is ready for call for adoption.  The second draft draft-cardona-filtering-threats, has a new revision from the last ietf.  Again there is working group interest in the document, and ready for call to adoption.  The other two require no action.  Also there are a number active drafts the group is waiting for new revisions from the authors.  draft-ietf-grow-ops-reqs-for-bgp-error-handling is one draft that has significant interest in the group, but has expired.  The primary author reconfirmed an updated revision is in progress.


**ipfix** Our Link Layer Attributes and IPFIX Mediation Protocol drafts will be submitted this month (August).  
Extended Field Specifiers look really useful, we could use them for
exporting MIB Objects, We must choose between implementing EFSF (which
would need a charter update) first, or using a mibFieldOption Template
so as to finish the Exporting MIB Objects draft.  Both, of course,
will require changes to IPFIX collectors.
There are several new drafts that could be WG items.  These need to have
objectives that could not be achieved by just registering new IEs via
IANA/IE Doctors.

**lmap** The LMAP WG met at its first meeting as a WG at IETF-87. It was a well attended meeting, with a busy agenda for the full 2.5 hours. The focus of the agenda was in refining the use cases, and discussing the framework contributions - which are the two principal items in the WG charter. Terminology and a proposal for information models were next in the agenda, as their developments will be a direct result of the requirements derived from the use cases and framework work. Other shorter contributions to other chartered items were presented and their progress is encouraged at this point in time as individual submissions. 

**mboned**

**netconf**

51 participants in the 2 hour NETCONF session, Status of the documents:
NETCONF Over TLS - RFC 5539bis has been updated addressing the issues and the call-home mechanism. 
Reverse SSH addressing the call-home mechanism has been adopted as WG item. Long discussion on the maillist on security.

Juergen Schoenwaelder on NETCONF Over TLS: For configuration YANG models, the use of submodules with a single namespace (5 in favor) or separate modules with different namespaces (9 in favor) has been discussed. AI: Check on the maillist. Juergen will specify option 3 for the call-home role swapping, i.e. swapping the roles directly after establishing the TCP connection, which is supported by the security experts. Next step is WGLC and TLS WG review.

Andy Bierman on YANG API: Concerning the notifications we need to understand the possible solutions. Kent Watsen is going to co-author. Once we have a new draft available we can discuss how to adopt.

Kent Watsen on Reverse Secure Shell: Issues to solve are authentication, initial secure state, validating the host key, identification and Zero-configuration. The latter will be done in a separate draft by Steve Hanna. Steve Hanna will further provide an applicability statement. Kent will update the draft for discussion and to get comments of the security experts. Huge interest in the WG to proceed.

Tal Mizrahi on Time Capability in NETCONF: Nobody in favor or opposed. The draft will be taken to the maillist.
Robert Varga on Efficient XML Interchange Capability for NETCONF: 12 in favor and 0 against. The document will be further discussed and updated.
Shouchuan Yang on NETCONF rpc-error extension: 2 persons in favor and 6 against. The draft will be further discussed on the maillist. 

**netmod**

The NETMOD working group has met for 1.5 hours on Thursday, August 1st, during the 87th IETF meeting. The meeting was attended by ~50 people.

Several documents are in WG last call and more reviews are needed. Some additional people were recruited during the meeting to perform reviews.

The routing documents are technically complete. Lada will work with authors of the I2RS working group to harmonize things with the information model defined by the I2RS working group but this must be completed the latest by the next IETF meeting in Vancouver; the NETMOD WG is not going to wait for the I2RS WG to complete its work.

Some minor issues need to be resolved on the SNMP configuration model. The next revision is expected to be complete and ready for WG last call.

A new individual draft was presented and discussed which defines a generic data model for presenting network topologies. This I-D is related to an information model submission to the I2RS WG.

The open mike discussion centered around the future role of the WG, if it is time to move data model work out of NETMOD into other working groups, how to provide guidelines to data model writers, and whether the YANG specification should be revised to make it less dependent on NETCONF concepts and whether new features should be added the YANG.

**opsawg**

The opsawg met on Wednesday 31 July in combined session with the ops area meeting.  Eight IDs were discussed, three of which were related to CAPWAP.  The consensus of the people in the room was that one ID, CGN Deployment with BGP/MPLS IP VPNs, was ready for WGLC.  The other documents were judged to need additional work.  There was also a discussion about how best to do work on CAPWAP but no specific conclusions were reached.

**opsec**
No specific surprises happened during the OPSEC WG. Three documents were discussed (draft-jdurand-bgp-security, draft-ietf-opsec-v6 and draft-gont-opsec-ipv6-nd-security). The planned document milestones for OPSEC are on track to be matched.

**radext**
The radext wg met on Tuesday July 30 and had approximately 20 people attending and 2 remote participants. Two new RFCs (6911,6929) were published since IETF 86.  Seven drafts were discussed during the 1.5hr meeting.  Four (radext-dtls, radext-ieee802, radext-dynamicdiscovery, radext-nai) were wg drafts and all had progressed with new versions submitted since IETF86.  radext-dtls is ready for wglc and plan to take it last call after ietf87. The other three have outstanding issues that need resolution and for which good discussion/resolution occurred during the meeting.  One (radext-radius-fragmentation) was a proposal for chartered work and meeting consensus is that is worthy of an adoption call.   The last two drafts were individual submissions (radext-datatypes, radext-key-management).  Both of these drafts show merit, but co-chairs are not willing to take on as charter milestones until current milestones are completed.  

**v6ops**
IPv6 Operations met twice, with two general reports (Microsoft's Teredo Sunset experiment and a report from APNIC on observable ULAs in routing and in backscatter traffic) and discussions of 16 Internet Drafts.

Of these, draft-ietf-v6ops-enterprise-incremental-ipv6, draft-taylor-v6ops-fragdrop, draft-ietf-v6ops-64share, and draft-ietf-v6ops-nat64-experience were deemed ready for working group last call.

draft-lopez-v6ops-dc-ipv6, draft-servin-v6ops-monitor-ds-ipv6, and draft-v6ops-vyncke-balanced-ipv6-security were accepted as working group documents.

draft-chen-v6ops-ipv6-roaming-analysis will continue as an individual draft for the moment. It will eventually need to be sent in a liaison to GSMA (operator's association associated with 3GPP) documenting issues and inviting mobile operator solutions.

draft-jiang-v6ops-semantic-prefix points up an issue in the overloading of addresses. 6man and v6ops need to discuss the development a "reasoning behind the addressing architecture".

draft-osamu-v6ops-ipv4-literal-in-url will go to behave.


**wpkops**
The wpkops working group did not meet during IETF 87.  One draft was submitted at the end of June but without sufficient time to review on the list before the meeting. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-08-03. It was migrated from the old Trac wiki on 2022-12-19.*
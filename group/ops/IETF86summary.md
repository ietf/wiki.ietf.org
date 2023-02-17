---
title: IETF 86 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:16:10.786Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:16:06.254Z
---

# IETF Working Group 86 High Level Summary 

### EMAN

The Entity MIBv4 and EMAN Requirements are (nearly) completed.  The
meeting focused on the EMAN Framework; in particular we explored the
question "should we develop the EMAN Information Model using UML, so
that it can be used by other organisations such as SCTE."  That
question will be discussed further on the EMAN list.  Meanwhile the
EMAN Framework authors will continue their work on that I-D; our
Milestone for it is 'April 2013.'


### IPFIX

Our three current chartered drafts, Link layer IEs, MIB Variable
Export and Mediation Protocol are close to completion.  Several
possible new work items were discussed:
+ Extended Field Specifier Fields (EFSF) as a way to handle 'decorators' in Information Elements, e.g. the layer of an mplsLabelSection.
+ A textual representation for Information Elements, making it easier to use the IPFIX Information Model for flows in text-based environments.
+ Mechanisms for moving Private Enterprise IEs into the IANA IPFIX IE Registry, so that Collectors can recognise them more easily.
These will be discussed further on the IPFIX list. 

### NETMOD

The NETMOD working group has met for 1.5 hours on Tuesday, March 12th,
during the 86th IETF meeting. The meeting was attended by ~40 people.

* The following documents draft-ietf-netmod-interfaces-cfg-09,
  draft-ietf-netmod-ip-cfg-09, draft-ietf-netmod-rfc6021-bis-00, and
  draft-ietf-netmod-iana-if-type-04 have been sent Benoit for
  processing them through the IESG. The routing document
  draft-ietf-netmod-routing-cfg-09 is to follow (waiting for David to
  finish the writeup).

* The system data model draft-ietf-netmod-system-mgmt-05 is in WG last
  call and a number of issues have been brought up. WG meeting time
  was used to find out which issues require changes to the document.
  Once there is a revised I-D, we will need to run a 2nd WG last call.

* The SNMP configuration data model draft-ietf-netmod-snmp-cfg-01 is
  in WG last call. A few minor issues have been identified that Martin
  and Juergen will work on. This document needs further reviews and
  likely a 2nd WG last call when a revised I-D is available.

* A revised proposal for a set of data models for stateless packet
  filters was presented. Several people in the room expressed that
  they find this work is useful.

* Lada presented briefly on the JSON mapping of YANG.

### NETCONF

Below is a summary and action items from the NETCONF WG session on March 11, 2013 in Orlando, FL, USA.

- We had approx. 65 participants in the 1.5 hour NETCONF session,
- We reviewed the status of the WG,
- We went through the chartered WG item and had a good discussion also on non-chartered documents.

Status of the documents (http://www.ietf.org/proceedings/86/slides/slides-86-netconf-5.ppt):
RFC5539bis (Netconf over TLS) has been updated addressing the issues raised so far and is currently in WGLC.

Main chartered topic was rfc5539bis (Netconf over TLS). Basically the WG has consensus, but the room wanted to add the Call Home mechanism. This must be confirmed on the WG list. Authors will add text for this and submit a new version.

There was also support from the room to resurrect the Call Home mechanism for the mandatory transport binding SSH. Kent Watsen volunteered to resurrect his draft on Reverse SSH and there were volunteers to review and implement.

Question: Would it be OK to have Call Home for the optional TLS transport while not having it for the mandatory SSH transport. Our AD (Benoit) to check this with IESG.

Also several other presentations on "NETCONF API", Operational State retrieval, Conditional Enablement, and Implementation
Experience have been held and discussed. We need revisions for at least the Operational State draft so we can ask the WG to review and comment.

We also asked for volunteers to work on the supporting documentation for RFC advancement. Volunteers to send email to chairs.

NETCONF and NETMOD chairs have planned to meet with I2RS chairs later in the week.

### BMWG

BMWG met with 25 people in attendance.

One RFC was approved and published, the RFC2544 AS.
WGLC is complete for IMIX Genome, the call of the result awaits 
appointment of our new AD Advisor, Joel.

Two WG charter topics need renewed attention, the Content Aware
Device Benchmarking and the SIP device Benchmarking (where there
are substantial IETF Last Call comments, and revised drafts are
needed).

Four New Work Proposal topics were presented:

Power Benchmarking represents an important but challenging area
for BMWG. A key point is to coordinate with other "green" activities
and be sure that the metrics meet the user community's needs.
Folks have read this and are interested in working it.

Traffic Management Benchmarking needs some refinement to match
the usual role of vendor comparison, but there is clear interest
on the list. Support for these items will be tested on the list.

IPv6 Neighbor Discovery discussions yielded clarifications of the 
metrics andf identification of normal, capacity, and overload 
stages of testing. This is an early draft with reasonable interest,
and it will benefit from further development and feedback.

A range of work areas related to Datacenter Benchmarking were proposed
(presentation only). There appears to be useful work in this space
beyond the existing data center bridge draft, so comments and further
proposals are sought.

The New In-Service Software Update draft was not presented, but ut was 
noted that there was some interest and useful discussion on the list
prior to the meeting.

The WG thanked Ron Bonica for his efforts as AD advisor, and made it 
through another session without anyone proposing to benchmark Facebook.

### ADSLMIB

Did not meet

### V6OPS

(update from fred, paraphrased by ad)

draft-smith-v6ops-larger-ipv6-loopback-prefix or draft-ietf-v6ops-design-choices (which will be discussed on the list). 

I'm expecting an updated version of draft-ietf-v6ops-nat64-experience, which we will take to WGLC.

I see cognitive dissonance between draft-ietf-v6ops-mobile-device-profile and draft-ietf-v6ops-rfc3316bis. 

The IPID draft will in substance go to 6man. 6man may need a requirements document from v6ops, and right now the consensus in v6ops doesn't support the draft - but v6ops also doesn't have many operators of the category this comes from. We're trying to work with these folks to make something rational happen.

We asked five data center operators to review draft-lopez-v6ops-dc-ipv6 on the list. We'll see where that goes.

The working group is discussing, right now, whether to take draft-liu-v6ops-ula-usage-analysis as a working group document. In that discussion, we are hearing two fundamental viewpoints: "we need to give guidance on the use of ULAs" and "we would like that guidance to be based on operational experience". That reads as "yes" or "no" on the specific draft respectively.

The drafts not mentioned were updated but are not "done".

### WPKOPS

met for the first time.

Discussed the initial set of documents and the newly minted charter.

### DNSOP

One chair (Stephen Morris) stepping down. volunteers to replace him solicited on from the WG

documents dicsussed.

DNS in JSON
Negative Trust Anchors
Automating DNSSEC Delegation
Omniscient AS112 Open Questions

### OPSAWG/OPSAREA

IEEE oui restructing and dicussion occured

capwap document series dicussed. reviews solicited from former capwap review team and IEEE involed participant (Dorothy Stanley).

draft-asai-vmm-mib hypervisor virtuaization mib discussed and reviews requested.

### OPSEC

Documents discussed

draft-gont-opsec-ipv6-nd-security
draft-ietf-opsec-lla-only
draft-ietf-opsec-v6

### 6RENUM

Did not meet

### GROW

Documents discussed

draft-cardona-filtering-threats-01

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-03-20. It was migrated from the old Trac wiki on 2022-12-19.*
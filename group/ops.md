---
title: OPS Area (Operations & Management)
description: 
published: true
date: 2023-05-03T05:05:38.577Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:25:37.192Z
---

- # IETF Operations & Management (OPS) Area Home Page


## Getting Started

The Ops area aims to be very friendly. We don't always succeed, but we try to make newcomers feel welcome.

We've started an [Ops reading / book recommendation list](/group/ops/OpsBooks) here. These are just a set of books that we'd found interesting / useful, and figured that you might enjoy too...

## Office Hours

Warren Kumari and Rob Wilton hold irregular on-line office hours. 
The schedule is posted at the URL below:

 * [Office Hours](/group/ops/OfficeHours)

## Hot Topics / Tips 

The below are some things to consider and keep in mind while writing Internet Drafts, both in the Operations and Management area, but also in the IETF in general.


There are many ways to shoot yourself in the foot when writing an Internet Draft - here are some of the ways that the current AD has seen this happen and / or things which it is worth keeping in mind. 

Note that these are just the personal views and advice from the current OpsAD - it is far from complete, feel free to send me additional pointers / ways which you've seen people trip over operational bits.

RFC 5706 Appendix A. - "Guidelines for Considering Operations and Management of New Protocols and Protocol Extensions" (https://tools.ietf.org/html/rfc5706) contains a checklist which is also very helpful. 



### DNS 


DNS is core plumbing, and as such it is one of the obvious tools in the protocol designer's toolbox. There are, however, a number of dangers here. 

These include:

-  Trying to use a name in the "rightmost" (TLD) part of the name - this is almost definitely doing to end poorly for you. For a small subset of issues with this see:
   - RFC 8244 - Special-Use Domain Names Problem Statement
   - RFC6761 - Special-Use Domain Names
   - IAB statement on the registration of special use names in the ARPA domain
   - Guidelines for Use of the Special Use Names Registry ("work in progress.")
- Assuming that the "reverse DNS" tree (in-addr.arpa) is complete and / or up to date and / or reflects reality. Periodically it is assumed that publishing security or similar information at e.g 1.2.0.192.in-addr.arpa.is safe because only the "owner" of 192.0.2.1 controls this. This is sadly incorrect.
- Mistakenly thinking that DNS is a UDP only protocol (and / or that TCP is only used for zone transfers). Additional reading: RFC7766 - DNS Transport over TCP - Implementation Requirements
- Using DNS TXT records. While the DNS can store TXT records (RFC1464), it is almost definitely a mistake to develop a protocol which uses these. A new DNS RRType is much preferred - it makes it easier to parse, and is less likely to break things. See RFC6895 -  Domain Name System (DNS) IANA Considerations, Section 3.1 for more detail.
- Incorrect usage of the _underscore naming pattern - see RFC8552 - Scoped Interpretation of DNS Resource Records through "Underscored" Naming of Attribute Leaves for advice on how to use these.

### IPv6 

- Due to various hardware limitations, packets with "excessive" IPv6 Extension Headers may be dropped. Various operators also filter packets with extension headers and or fragments - see the (expired) draft "Why Operators Filter Fragments and What It Implies"(https://www.ietf.org/archive/id/draft-taylor-v6ops-fragdrop-02.txt) for more background.


### Routing 

- Assuming that "customers" connect to Tier-2 ISPs who then connect to Tier-1 ISPs. The routing system is much more messy than this, and "customers" and various size ISPs all peer / purchase transit / etc.
- Assuming that sending a packet which needs "high-touch" (the control plane) of a router is a reasonable thing to do. In order to scale, modern routers do almost all work in dedicated network hardware. Anything which requires punting transit traffic to the control plane almost definitely means that the traffic will be dropped / that the protocol will not be deployable.
- Assuming that Quality of Service markings will cross administrative boundaries. 
  




### Guidelines for Considering Operations and Management of New Protocols and Protocol Extensions 
 
 * https://tools.ietf.org/html/rfc5706 


### MIB Guidelines 

In forthcoming MIB reviews the MIB Doctors will be applying these Guidelines for Authors and Reviewers of MIB Documents [RFC4181, BCP111]", (RFC issued September 23rd, 2005). These guidelines have been updated by an IESG approved document: "RFC 4181 Update to Recognize the IETF Trust [RFC4841, BCP111]". 

For your convenience: 

[Boilerplate for MIB documents](/group/ops/mib-boilerplate)
[Guidelines for a MIB security section](/group/ops/mib-security)
[Generic and Common Textual Conventions](/group/ops/mib-common-tcs)
[MIB review tools](/group/ops/mib-review-tools)

There is a text template you can use to start a document containing a MIB module that helps you meet many of the requirements listed in RFC4181 "Guidelines for Authors and Reviewers of MIB Documents" and also is designed to meet the preferences of the MIB Doctors for section ordering and naming to simplify automated checking. See RFC 5249 - Templates for Internet-Drafts Containing MIB Modules.

The XML source for generating the text template with the [xml2rfc](http://xml.resource.org/) tool is also available. The XML source includes additional comments that can help an author fill in the various sections appropriately using an XML editor. The XML source is contained in An XML Template for Documents Containing a MIB Module. Viewing the XML source in your XML editor may require having an rfc2629.dtd from xml.resource.org. 

Updated templates (June 2013), by David B. Harrington, can be found [here](https://tools.ietf.org/).
The MIB Doctors have produced three templates specifically aimed at drafts containing MIB modules:
-  The first is an [XML template for editors that use XML2RFC](https://tools.ietf.org/tools/templates/mib-doc-template-xml.txt). Some advice echoing guidelines from RFC4181 is embedded in comments.
-  A second template is a [text template for MIB documents with advice embedded](https://tools.ietf.org/tools/templates/mib-doc-template-advice.txt) in the document.
- A third template is [a plain text template with no advice included](https://tools.ietf.org/tools/templates/mib-doc-template-plain.txt).

### YANG Guidelines

In forthcoming YANG reviews the YANG Doctors will be applying the Guidelines for Authors and Reviewers of YANG Data Model Documents (RFC 6087). 

For your convenience: 

[YANG module security guidelines](/group/ops/yang-security-guidelines) 
(16 June 2010, approved by Security ADs, updated 22 March 2012).

List of [YANG typedefs](http://www.netconfcentral.org/typedeflist).


## Other Wiki Pages

 * [Directorates](/group/ops/Directorates)
 * [OPS Directorate](https://datatracker.ietf.org/group/opsdir/about/)
 * [AAA-Doctors](/group/dime/aaadoctors)
 * [YANG Doctors Page](https://datatracker.ietf.org/group/yangdoctors/about/)
 * [MIB Doctors Page](https://datatracker.ietf.org/group/mibdoctors/about/)
 * [AAA Doctors](https://www.ietf.org/mail-archive/web/aaa-doctors/current/maillist.html)
 * [Performance Metrics Directorate](https://datatracker.ietf.org/group/perfmetrdir/about/)
 

## Advice for WG Chairs 


 * [Advice for WG Chairs](/group/ops/Chairs)


## IETF High Level Working Group Summaries
 
 * [IETF 86 WG High Level Summaries](/group/ops/IETF86summary)
 * [IETF 87 WG High Level Summaries](/group/ops/IETF87summary)
 * [IETF 88 WG High Level Summaries](/group/ops/IETF88summary)
 * [IETF 89 WG High Level Summaries](/group/ops/IETF89summary)
 * [IETF 90 WG High Level Summaries](/group/ops/IETF90summary) 
 * [IETF 91 WG High Level Summaries](/group/ops/IETF91summary)
 * [IETF 92 WG High Level Summaries](/group/ops/IETF92summary) 
 * [IETF 93 WG High Level Summaries](/group/ops/IETF93summary)
 * [IETF 94 WG High Level Summaries](/group/ops/IETF94summary) 
 * [IETF 95 WG High Level Summaries](/group/ops/IETF95summary) 
 * [IETF 96 WG High Level Summaries](/group/ops/IETF96summary) 
 * [IETF 97 WG High Level Summaries](/group/ops/IETF97summary) 
 * [IETF 98 WG High Level Summaries](/group/ops/IETF98summary) 
 * [IETF 99 WG High Level Summaries](/group/ops/IETF99summary) 
 * [IETF 100 WG High Level Summaries](/group/ops/IETF100summary)
 * [IETF 101 WG High Level Summaries](/group/ops/IETF101summary) 
 * [IETF 102 WG High Level Summaries](/group/ops/IETF102summary) 
 * [IETF 103 WG High Level Summaries](/group/ops/IETF103summary) 
 * [IETF 104 WG High Level Summaries](/group/ops/IETF104summary) 
 * [IETF 105 WG High Level Summaries](/group/ops/IETF105summary) 
 * [IETF 106 WG High Level Summaries](/group/ops/IETF106summary)
 * [IETF 109 WG High Level Summaries](/group/ops/IETF109summary)
 * [IETF 110 WG High Level Summaries](/group/ops/IETF110summary)
 * [IETF 111 WG High Level Summaries](/group/ops/IETF111summary)
 * [IETF 113 WG High Level Summaries](/group/ops/IETF113summary)
 
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-03-23. It was migrated from the old Trac wiki on 2022-12-19.*

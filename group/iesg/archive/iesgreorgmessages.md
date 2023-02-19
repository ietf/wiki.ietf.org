---
title: IESG Reorg Messages
description: 
published: true
date: 2023-02-19T20:05:51.455Z
tags: 
editor: markdown
dateCreated: 2023-02-19T20:05:51.454Z
---

# 2015-02-10 Message on the operations of affected areas

All,

&nbsp;&nbsp;&nbsp;    As noted earlier (http://www.ietf.org/mail-archive/web/ietf/current/msg91370.html), the IESG has continued to discuss the re-organization proposal and the comments previously provided. That message identified several parts and the IESG wanted to provide feedback on those parts.

  1.  Seating of a third RTG AD - The NomCom? has recently concluded its nominations process and has selected a third RTG AD (http://mailarchive.ietf.org/arch/msg/ietf-announce/wTY8TD3Cx_feOLMEA_3dukvOgOM). 

 2.   AD to WG assignments - As noted previously, the tools team has completed the changes necessary to allow for flexibility in the assignment of ADs to WGs out of their immediate area. We will monitor the effectiveness of this capability going forward. 

  3.  Re-structured areas - The feedback received on the combination of APP, RAI, and TSV was much appreciated. Going forward, the IESG is proposing a more modest approach of combining the current APP and RAI areas into the Applications and Real-Time (ART) area. The TSV area will remain as a separate area. 

 4.   Reduced AD time commitment - The IESG remains committed to reducing the time commitment needed for most AD positions, in order to allow otherwise-qualified nominees to be considered for position under review. 

One of the concerns voiced about the re-organization involved questions about how the updated areas would operate. The IESG has formulated descriptions for these areas so that the community is aware of how the affected areas will be managed.
## Proposed Applications and Real-Time (ART) Area
### Overview

We propose to merge the existing APPS and RAI areas into a combined new area, known as the Application and Real-Time (ART) Area. The motivation for this is as previously described by Jari (http://www.ietf.org/mail-archive/web/ietf/current/msg91015.html).
### Description

The ART area develops application protocols and architectures in the IETF. The work in the area falls into roughly three categories, with blurry distinctions between them. One category consists of protocols and architectures specifically designed to support delay-sensitive interpersonal communications via voice, video, instant messaging, presence, and other means, otherwise known as "real-time" applications and services. A second category consists of protocols and architectures to support applications that may be more tolerant of delay, including HTTP, email, and FTP. The third category consists of building blocks that are designed for use across a wide variety of applications and may be employed by both real-time and non-real-time applications, such as URI schemes, MIME types, authentication mechanisms, data formats, metrics, and codecs.

If we go forward with this proposal, we would expect to begin taking steps to create the ART area (e.g., tooling, WG shifting) in 2015.
### Desired Expertise

Given the amount of work encompassed by real-time and non-real-time applications, it is expected that the ART area will be initially shepherded by the three area directors from RAI and APP who will be serving on the IESG from March 2015. Going forward, we would expect ART ADs to serve two-year terms as usual.

ART is a broad area that spans many different technology areas, including web technologies, messaging, telephony, internationalization, and interactions with the transport layer. Successful ART ADs may have deep expertise in one or two relevant topics, or broad experience with many of them. In any given nomcom cycle, the IESG may inform the nomcom of its opinions about particular expertise (e.g., web expertise) that may be particularly necessary or lacking on the IESG at the time.

Regardless of their depth or breadth of expertise, ART ADs must be capable of dealing with a large set of application protocols and primitives, including many with which he or she may not have direct experience. An ART AD needs to be good at evaluating new approaches to new problems and assessing the expertise of the people who bring them to the IETF. Cross-area expertise in transport or security is also desirable.

Any given set of ART ADs may choose to divide up their work in the area according to their specific skill sets, which may yield a variety of different management models. For example, it may be most appropriate for one AD to manage lower-layer real-time infrastructure aspects, one to manage real-time applications, and one to manage non-real-time applications and building blocks. Or, if the ART ADs have more generalist experience, they may each shepherd a more diverse cross-section of work and working groups.

ART ADs should be capable of assisting liaison managers, the IAB, and area participants in the facilitation of work of mutual interest with other related organizations, including the W3C, the Unicode Consortium, and 3GPP.
### Area Processes

The existing use and functioning of the SDP Directorate, the RAI Area Directorate (somewhat dormant as of now), and the Applications Area Directorate will remain unchanged.

In the RAI area, the DISPATCH working group is chartered to consider proposals for new RAI work and identify, or help create, an appropriate venue for the work. In the ART area, we propose to maintain the DISPATCH WG with a focus on real-time work and re-charter the APPSAWG to function similarly to DISPATCH, with a focus on non-real-time work. For purposes of the discussion below we will call this second WG APATCH.

The DISPATCH process is described in RFC 5727, which scopes its work to the RAI area. With the merger of RAI into ART, we propose to maintain the functioning of DISPATCH as-is, scoped to focus on any new work related to delay-sensitive interpersonal communications and underlying technologies that support those communication services. We propose to scope APATCH to include all other ART-area new work proposals. Of course, the line between these scopes is imprecise and in some cases it may be unclear whether proposals should be directed to one WG or the other. In those cases the proponents, chairs, and ADs should work together to decide; in practice the work should see sufficient discussion either way assuming the two WGs continue to attract their communities of interest. The ART ADs should make every effort not to schedule DISPATCH and APATCH against each other at in-person meetings.

If the creation of the ART area goes forward, the wording about "the RAI area" in RFC 5727 should be amended.
## Routing Area

The Routing Area will run with three ADs exactly as it has done with two ADs. That is, each AD will be the responsible AD for a number of working groups (approximately one third of the total) and will be the responsible AD for documents coming out of those working groups performing their own review and handling the process up to RFC publication. All three ADs will ballot in IESG evaluation.
## Transport Area

The Transport Area will remain a separate area and continue its operation as today. In order to facilitate work load balancing of the ADs, one option being considered is to move one or more working groups from of the Transport area to other areas, if such working groups fit equally well in another area. Discussions regarding this have only just begun and no decision has been made.

The Transport ADs will continue discussions with the community about the work load of the Transport Area Directors, the organization of the area, and what possible changes in the area will be needed. One of the upcoming Transport Area (TSVAREA) sessions at the IETF-92 will be used for this discussion.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-02-12. It was migrated from the old Trac wiki on 2023-02-17.*

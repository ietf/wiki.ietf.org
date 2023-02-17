---
title: 6MAN WG - IPv6 Maintenance
description: 
published: true
date: 2023-01-12T00:12:37.489Z
tags: 
editor: markdown
dateCreated: 2022-07-23T20:36:36.339Z
---

# 6MAN Working Group Summaries
## IETF 89

The 6man working group held a two and a half hour session on the Tuesday of the IETF in London. The session was well attended with over a hundred participants. It was recorded by Meetecho and the audio/video archives are available.

There has been active discussions on the mailing list since the last IETF, with over 800 messages. The main topics of discussion has been "Why /64", SSAS, the recommendation for default interface-identifiers, address privacy and efficient ND. The working group has had 5 RFCs published, and currently have no document in the IESG queue.

The main topics for the London meeting, was the "Why /64" document, that is a document that explains why the /64 boundary was chosen, and also explores the consequences of changing that boundary, if we ever wanted to do that. There was strong support in the room for adopting this document as a working group document. We also had a 45 minute session to talk about efficient ND. Both with regards to battery efficiency, and how ND behaves on link-layers that do not handle multicast well. The chairs have decided to form a design team to work on this problem, anyone interested in participating should contact the chairs. The design team is expected to report back to the working group at the Toronto IETF meeting.

There was also consensus in the the room to adopt the following drafts:

* draft-gont-6man-lla-opt-validation

This consensus is being verified on the mailing list.

## IETF 87

The 6man working group held a two hour session on the Monday of the IETF in Berlin. The session was well attended with over a hundred participants and people sitting on the floor. The chairs will request a larger room next year. It was recorded by Meetecho and the audio/video archives are available.

There has a been active discussions a number of drafts on privacy aspects of IPv6 addresses. Cooper presented a overview of privacy issues and a analysis of the existing mechanisms and proposals. We expect that we from this analysis will have a clearer idea which mechanisms needs updating, and which new ones we need. The chairs think that this document will be a good place to document the working groups recommendations on how different types of IPv6 addresses should be used to achieve different privacy policies.

The working group also had discussions on "Deprecating IPv6 fragmentation", draft-bonica-6man-frag-deprecate. It is too early to draw any conclusions, but this work might drive work on e.g. segmentation in connection-less transport layers, better path MTU discovery and so on. This draft was also discussed in the transport area.

There was consensus in the the room to adopt the following drafts:

* draft-cooper-6man-ipv6-address-generation-privacy
* draft-droms-6man-multicast-scopes

This consensus is being verified on the mailing list. There was consensus in the room not to work on the problem described in draft-elkins-6man-ipv6-pdm-dest-option.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-07-26. It was migrated from the old Trac wiki in 2022.*

---
title: MibIss019
description: 
published: true
date: 2023-01-26T02:36:05.530Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:36:01.372Z
---

# NAT MIB v2 Issue 019: Review structure of SubscriberIdentifierType and ensure fully standardized
**Source:** DBH review, comment 11.

**Details:**

11) SubscriberIdentifierType? concerns me. We are supposed to be standardizing things here. But this appears to be a standardized "bucket" which implementers can stuff with their own proprietary identifiers, especially the "other" value. How is a vendor-neutral NMS supposed to know how to handle the "other" value?

I feel uncomfortable with this whole identifierType, which implies that an implementation needs to go parse the packet to pull out additional information to identify the subscriber, without standardizing how this information should be extracted from the message in a standardized vendor-neutral manner.

I feel uncomfortable that for the "other" type, each implementation defines the semantics of AND and OR combinations. How should a vendor-neutral NMS handle the implementation-specific variations; where is the AND/OR semantic decision documented by each implementer, to make this vendor- interoperable?

For the interfaces choice, how is the set of interface indexes constructed? I'm confused by this. The classifying information is in the packet (identify the subscriber from an incoming packet); so does the packet contain a set of interface indexes that the receiving implementation is supposed to extract? There is no reference to the type of packet involved, and I haven't had to unpack a set of interface indices from a packet before. What type of packet contains a set of one or more ifIndexes? The RFC2863 textual convention doesn't seem to describe this.

**Discussion:**

**Resolution:**
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-16. It was migrated from the old Trac wiki on 2023-01-25.*
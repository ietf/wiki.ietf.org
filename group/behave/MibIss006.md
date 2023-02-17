---
title: MibIss006
description: 
published: true
date: 2023-01-26T03:17:31.359Z
tags: 
editor: markdown
dateCreated: 2023-01-26T02:13:54.197Z
---

# NAT MIB v2 Issue 006: Separate document for deprecation of NAT MIB v1 
**Source:** Tracker: [#16](ticket16) comment 1, Tracker: [#19](ticket19), DBH review comment 1.

**Details:**

From Tracker: [#16](ticket16) (David Harrington)

1) A while back, I suggested that, if you are deprecating all of the NAT-MIB in [rfc4008](http://tools.ietf.org/html/rfc4008), that it would be better to do this as a separate document from the NEW-NAT-MIB (or whatever the new module gets called). Simon asked me to get consensus from the MIB Doctors.

I checked with the MIB Doctor list, and only got one reply - from Juergen, who apparently recommended a single document. His response: " I have probably been pushing them into this because at the beginning it was not really clear why the existing NAT-MIB is fatally flawed such that it needs a complete replacement. If the behave WG has meanwhile reached consensus that indeed the existing NAT-MIB is fatally flawed and needs a complete replacement, then indeed what you suggest makes sense. I assume the WG has checked with those who have implementations of the existing NAT-MIB (if any) that they agree on a need for a complete new MIB."

From Tracker: [#19](ticket19) (Juergen Schoenwaelder)

As far as I recall, it was initially not clear whether there is consensus that the NAT-MIB is fatally flawed. (And the text that is now in section 3.1 did not exist at that time in the current level of detail as far as I recall.)

I suggest a consensus call is made by the chairs on this fundamental question. If there is consensus that the NAT-MIB is fatally flawed (and note that opinions of implementors in particular matter here), then declaring the MIB module in [RFC 4008](http://tools.ietf.org/html/rfc4008) historic (e.g. marking [RFC 4008](http://tools.ietf.org/html/rfc4008) historic) and creating a new MIB module may indeed be the right thing to do.

From DBH review comment 1:

1) We have discussed whether the new objects really should be a new MIB module, published under a new MIB module name. Reading through this ocument, I feel that deprecating the whole previous NAT-MIB within the same document is a mistake. It makes the document harder to deal with. This really should be two separate documents and two separate MIBs - with different module names.

The current approach might be perfectly viable for an agent implementation, where the NAT-MIB is likely to be an implementation of EITHER the first half of this document, or the second half of this document. But it seems problematic for an NMS implementation that has to support BOTH implementations based on [RFC4008](http://tools.ietf.org/html/rfc4008), and implementations based on this document. I especially think about the fact that NMSs import MIB modules, including the Description clauses for the managed objects, and can display the description clauses so operators can see what the definition of the object is.

With this document, NMS applications MUST parse all the deprecated objects, even if, at some future time, there are no devices that implement the [RFC4008](http://tools.ietf.org/html/rfc4008) NAT-MIB. If the deprecation was handled in a separate RFC from the new MIB module, and an NMS no longer had to support the "old" NAT-MIB, then NMSs in the future would only need to import the new document.

I found it especially irritating to review, because I am used to finding Textual Conventions at the beginning of the MIB module, which is usually at the beginning of the document containing the MIB module, but here, I had to look for the T-Cs in the middle of a long MIB module, because I had to work past the first 54 pages of deprecations to find the T-Cs of the new module. Every user of this MIB document will be similarly inconvenienced, over and over.

**Discussion:**

**Resolution:**

[draft-perrault-behave-deprecate-nat-mib-v1](http://tools.ietf.org/html/draft-perrault-behave-deprecate-nat-mib-v1) submitted. Existing document will be superseded by one describing new MIB module NATV2-MIB.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-28. It was migrated from the old Trac wiki on 2023-01-25.*
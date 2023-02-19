---
title: Process for allocating Special Use Top-Level Domains
description: 
published: true
date: 2023-02-19T20:01:18.655Z
tags: 
editor: markdown
dateCreated: 2023-02-19T20:01:18.655Z
---

# Process for allocating Special Use Top-Level Domains

Recently the IETF published RFC6761, which describes special-use domain names and establishes an IANA registry for such names. This was the result of discussion of the .local special-use TLD, which is a TLD under which domain names exist that are not served by the domain name system, but rather by multicast DNS.

Subsequent to publication of this document, work has begun on several internet-drafts that describe various special-use TLDs according to the requirements of RFC 6761. Suggestions have been made that allocation of these domains should be fast tracked, which the IESG has the authority to do. There was some discussion of this amongst the IESG, on the IETF mailing list, and also on the DNSOP mailing list. Most of the discussion of fast-tracking occurred amongst the IESG.

I believe that a consensus emerged from the IESG discussion, which was that although we should formally inform ICANN of work going on on the two drafts, we do not need to preemptively reserve those domains in the IANA registry.

When discussing this issue, several conclusions were drawn:

  -  We can't stop people from writing software that makes special use of the terminal label in a domain name.
  -  Software that makes special use of the terminal label in a domain name, which becomes widespread, can create interoperability problems as well as inconvenience in the event that such names are also registered as valid TLDs in the DNS.
  -  Special-use TLDs impose some burden on the root authoritative DNS servers, but this load, while not negligible, is manageable, and in any case would not be lessened by ignoring the problem.
  -  It's not the IETF's job to proactively go out and document widespread uses of special-use TLDs in the wild.
  -  However, to the extent that IETF participants want to go out and document such uses, this is an appropriate thing to be done in the IETF, and if such documents gain consensus to be published, the IESG should publish them and allocate the special-use TLDs
  -  Although several heavy hitters in the DNS working groups do apparently feel strongly that special use TLDs are a bad architectural choice, there is no consensus in the IETF for this position.
  -  To the extent that the IETF wants to do anything about the tendency of software developers and systems administrators to preemptively allocate special use domain names without following either the ICANN or IETF process for doing so, we must do so in a way that encourages such users of special-use TLDs to work with us, not ignore us. 

From this I gleaned the following principles:

The criteria for deciding whether to document special-use TLDs within the IETF are

  a.  whether there is some serious effort out there somewhere to use them on the internet
  b.  that someone proposes to document the use in the IETF under RFC 6761, and
  c.  that we think there is sufficient interest in the usage being documented that it's reasonable to think that, were the TLD in question to be assigned in the DNS, significant problems would ensue. 

(c) is a judgment call. (b) is a prerequisite for RFC 6761 to apply, since the IETF does not have change control for the namespace, but is an appropriate venue for documenting uses of it (a) is a requirement because if (a) doesn't apply, it's simply not the IETF's problem.

On the topic of early allocations, we concluded that none of the proposed documents merited early allocation, since the ICANN liaison process would be sufficient to avoid unnecessary havoc. So we don't yet know of a case where the IESG would do an early allocation into the RFC6761 IANA registry.

As a general rule, and as specified in RFC 6761, IETF special-purpose registrations should only be made where the names are truly special and need special handling in implementations. The process should not be used for names that can be allocated in the usual manner.

Some participants in the discussion felt that there was a potential for misuse of process to avoid paying the ICANN registration fee for a TLD. Two rejoinders were raised to this, either of which would be sufficient to refute the point. First, the IESG is not likely to approve such a request. Secondly, you don't actually get a TLD registration out of an RFC6761 IANA allocation anyway.

One architectural point that was raised, toward new (that is, not pre-6761-process) work ought to follow the principle that when the IETF picks a special-purpose TLD, collisions should be avoided where practical. In particular, if no human needs ever see the string, then some ugly string can be selected.

It's certainly reasonable to say that we ought to make architectural recommendations to proponents of these special-use TLDs, but we can't actually stop them from using them. It's somewhat analogous to the situation with TXT records.

So if we punt on this and refuse to document these special use TLDs under 6761, it doesn't actually solve the problem, or make anything better.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-02-12. It was migrated from the old Trac wiki on 2023-02-17.*
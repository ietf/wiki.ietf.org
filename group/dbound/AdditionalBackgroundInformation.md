---
title: IETF dbound WG Additional Background Information
description: 
published: true
date: 2022-12-05T22:03:30.180Z
tags: 
editor: markdown
dateCreated: 2022-12-05T22:03:25.916Z
---

The concept of an administrative boundary is by definition not present
in the DNS.  Relying on the DNS to divine administrative structure thus
renders such solutions unreliable and unnecessarily constrained.  For
example, confirming or dismissing a relationship between two domain
names based on the existence of a zone cut or common ancestry is often
unfounded, and the notion of an upward "tree walk" as a search mechanism
is, therefore, unacceptable.

Currently, the most well known solution in existence is the Public
Suffix List (PSL).  The PSL is maintained by a web browser producer and
is kept current by volunteers on a best-effort basis.  It contains a
list of points in the hierarchical namespace at which registrations take
place, and is used to identify the boundary between so-called "public"
names (below which registrations can occur, such as ".com" or ".org.uk") and
the private names (organizational names) that domain registrars create within
them.  When this list is inaccurate, it exposes a deviation from reality that
degrades service to some and can be exploited by others.  As the PSL is the
de-facto resource, and as there is not a more comprehensive, alternative
solution for relationship identification, the PSL has often been misused
to accomplish things beyond its capabilities.  For example, there is no way
to confirm the relationship between two domain names -- the PSL may only
signal that there is or is not a public boundary between the two.
Additionally, there are questions about the scalability, central management,
and third-party management of the PSL as it currently exists.

In terms of specific use cases, within the realm of email there is a
desire to link an arbitrary fully-qualified domain name (FQDN) to the
organizational domain name (at some point in the namespace above it), in
order to identify a deterministic location where some sort of statement
of policy regarding that FQDN can be found.  With respect to the web,
there is a similar need to identify relationships between different
FQDNs, currently accomplished by comparing ancestries.  However, there
is also desire to reliably identify relationships outside of the realm
and constraints of the namespace tree.

Work such as DMARC (RFC7489), will certainly benefit
from having this capability.
---
title: draft-ietf-idr-route-oscillation-stop implementations
description: 
published: true
date: 2023-03-14T01:44:36.286Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:09:01.015Z
---

## Implementation Reports for draft-ietf-idr-route-oscillation-stop
## Implementations

  -  Cisco reports having an implementation. 

## SHOULD/MAY/MUST

All RFC 2119 language is in Section 5 and its subsections. These are shown below with the relevant keywords highlighted and numbered for reference.

**5. Route Reflection and Confederation**

To allow a route reflector or a confederation ASBR to advertise either the Available Paths or Group Best Paths using the mechanism described in ADD-PATH [RFC7911], the following revisions are proposed for BGP route reflection and BGP Confederation.

**5.1. Route Reflection**

For a particular <AFI, SAFI> a route reflector MUST (1) include the <AFI, SAFI> with the "Send/Receive" field set to 2 (send multiple paths) or 3 (send/receive multiple paths) in the ADD-PATH Capability [RFC7911] advertised to an IBGP peer. When the ADD-PATH Capability is also received from the IBGP peer with the "Send/Receive?" field set to 1 (receive multiple paths) or 3 (send/receive multiple paths) for the same <AFI, SAFI>, then the following procedures apply:

If the peer is a route reflection client, the route reflector MUST (2) advertise to the peer the Group Best Paths (or the Available Paths) received from its non-client IBGP peers. The route reflector MAY (3) also advertise to the peer the Group Best Paths (or the Available Paths) received from its clients.

If the peer is a non-client, the route reflector MUST advertise to the peer the Group Best Paths (or the Available Paths) received from its clients.

**5.2. Confederation**

For a particular <AFI, SAFI> a confederation ASBR MUST (4) include the <AFI, SAFI> with the "Send/Receive" field set to 2 (send multiple paths) or 3 (send/receive multiple paths) in the ADD-PATH Capability [RFC7911] advertised to an IBGP peer, and to a confederation external peer. When the ADD-PATH Capability is also received from the IBGP peer or the confederation external peer with the "Send/Receive?" field set to 1 (receive multiple paths) or 3 (send/receive multiple paths) for the same <AFI, SAFI>, then the following procedures apply:

If the peer is internal, the confederation ASBR MUST (5) advertise to the peer the Group Best Paths (or the Available Paths) received from its confederation external peers.

If the peer is confederation external, the confederation ASBR MUST (6) advertise to the peer the Group Best Paths (or the Available Paths) received from its IBGP peers.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-09-13. It was migrated from the old Trac wiki on 2023-03-12.*
---
title: RFC 5884-bis Issue List
description: 
published: true
date: 2022-12-10T05:47:24.230Z
tags: 
editor: markdown
dateCreated: 2022-11-11T11:30:32.263Z
---

# RFC 5884-bis Issue List
- Use of Return Mode Field
[RFC5884] does not define the value for the Return mode field [RFC8029] when LSP ping is used to bootstrap a BFD session of MPLS LSP.  When an LSP echo request is used to detect defects in the MPLS data plane and verify consistency between the control plane and the data plane, an echo reply is needed to confirm the correct state and provide positive acknowledgment.  But when an LSP echo request is used to bootstrap a BFD session, the positive acknowledgment, according to [RFC5884], is provided by the egress transmitting BFD control message.  Thus LSP echo reply is not required to bootstrap the BFD session, and hence the Return mode field in the echo request message SHOULD be set to 1 (Do not reply) [RFC8029] when LSP echo request is used to bootstrap a BFD session.
- Use of BFD Discriminator TLV in LSP Echo Reply
- Selection of the Destination IPv6 Address
---
title: RFC 5884-bis Issue List
description: 
published: true
date: 2022-12-10T06:18:54.955Z
tags: 
editor: markdown
dateCreated: 2022-11-11T11:30:32.263Z
---

# RFC 5884-bis Issue List
- Use of Return Mode Field
[RFC5884] does not define the value for the Return mode field [RFC8029] when LSP ping is used to bootstrap a BFD session of MPLS LSP.  When an LSP echo request is used to detect defects in the MPLS data plane and verify consistency between the control plane and the data plane, an echo reply is needed to confirm the correct state and provide positive acknowledgment.  But when an LSP echo request is used to bootstrap a BFD session, the positive acknowledgment, according to [RFC5884], is provided by the egress transmitting BFD control message.  Thus LSP echo reply is not required to bootstrap the BFD session, and hence the Return mode field in the echo request message SHOULD be set to 1 (Do not reply) [RFC8029] when LSP echo request is used to bootstrap a BFD session.
- Use of BFD Discriminator TLV in LSP Echo Reply
[RFC5884] in section 6 defines that echo reply by the egress LSR to BFD bootstrapping echo request MAY include BFD Discriminator TLV with locally assigned discriminator value for the BFD session.  But the [RFC5884] does not define how the ingress LSR may use the returned value.  From a practical point, as discussed in Section 3, the returned value is not useful since the egress is required to send the BFD control message right after successfully validating the FEC and before sending an echo reply message.  Secondly, identifying the corresponding BFD session at ingress without returning its discriminator presents an unnecessary challenge for implementation.  Thus the egress LSR SHOULD NOT include BFD Discriminator TLV if sending an echo reply to BFD bootstrapping echo request.
- Selection of the Destination IPv6 Address
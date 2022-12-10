---
title: RFC 5884-bis Issue List
description: 
published: true
date: 2022-12-10T17:19:36.513Z
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
[RFC5884] requires that the IPv6 Destination Address used in IP/UDP encapsulation of an echo request packet is selected from the IPv4 loopback address range mapped to IPv6. Such packets do not have the same behavior as prescribed in [RFC1122] for an IPv4 loopback addressed packet.

[RFC4291] defines ::1/128 as the single IPv6 loopback address. Considering that this specification updates Section 7 of [RFC5884] regarding the selection of an IPv6 destination address for an echo request message:
   *  For IPv6, the IPv6 loopback address ::1/128 SHOULD be used.

   *  The sender of an echo request MAY select the IPv6 destination
      address from the 0:0:0:0:0:FFFF:7F00/104 range.

   *  To exercise all paths in an ECMP environment, the entropy other
      than the IP destination address SHOULD be used.
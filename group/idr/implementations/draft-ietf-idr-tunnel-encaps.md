---
title: draft-ietf-idr-tunnel-encaps implementations
description: 
published: true
date: 2023-03-13T06:31:03.945Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:30:58.968Z
---

# Implementations of draft-ietf-idr-tunnel-encaps
## Partial IOS XR:

(Reported by Acee Lindem)

IOS XR has partially implemented the tunnel encaps draft in order to support "Advertising Segment Routing Policies in BGP", https://www.ietf.org/id/draft-previdi-idr-segment-routing-te-policy-06.txt

Specifically, the following is supported:

  -  Recognition and parsing of the tunnel encap attribute as described in sections 2 and 3. The attribute is supported in the SR Policy SAFI. Tunnel type SR policy as stated below. Other tunnel types are unrecognized and simply propagated in BGP updates.
 -   Support for the SR Policy tunnel type as described in the "Advertising Segment Routing Policies in BGP".
  -  The Remote-Endpoint Sub-TLV as described in section 3.1 and the Color Sub-TLV as described in section 3.4.2 are not supported yet.
 -   Support for the Color Extended Community for associating prefixes with Segment Routing polices. 

The BGP Tunnel Encaps extensions in support of advertising SR policies will be shipped in IOS-XR 6.2.2.

## Partial FRR as per https://www.ietf.org/mail-archive/web/idr/current/msg18155.html:

(Reported by Lou Berger)

Since the question was raised on list: a partial implementation of this draft can be found in FRRouting, notably bgp_encap_tlv.{h,c} in https://github.com/FRRouting/frr/tree/master/bgpd . It supports:

  -  encap attribute sent with other safis. The code uses it with the VPN safi to provide underlay tunnel information for VPN routes for NVO3 type applications.
 -   "Remote Endpoint Address sub-TLV" for v4 and v6
 -   encode/decode of type specific and sub-TLV formats per draft -00 or -01 rev (this means it is a subset implementation. 

This is open source code so anyone is free to review and submit changes.
## Junos:

(Reported by Martin Djernaes and Lili Wang)

Junos has partially implemented the tunnel encaps draft in order to support "Advertising Segment Routing Policies in BGP", https://www.ietf.org/id/draft-previdi-idr-segment-routing-te-policy-06.txt.

Specifically, the following is supported:

Recognition and parsing of the tunnel encap attribute as described in sections 2 and 3. The attribute is supported in the SR Policy SAFI. Tunnel type SR policy as stated below. Other tunnel types are unrecognized and simply propagated in BGP updates. Support for the SR Policy tunnel type as described in the "Advertising Segment Routing Policies in BGP". The Remote-Endpoint Sub-TLV as described in section 3.1 and the Color Sub-TLV as described in section 3.4.2 are supported. Support for the Color Extended Community for associating prefixes with Segment Routing polices. The color attribute is also used for traffic steering and so can be present in BGP INET Unicast and this is supported in JUNOS. When this attribute is present the traffic is steered into the SRTE tunnel if the CLI knob extended-nh-color is configured. The IPIP tunnel attribute can be both sent and received.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-10-11. It was migrated from the old Trac wiki on 2023-03-12.*

---
title: draft-previdi-idr-segment-routing-te-policy implementations
description: 
published: true
date: 2023-03-13T08:13:25.592Z
tags: 
editor: markdown
dateCreated: 2023-03-13T08:13:19.629Z
---

# Implementations of draft-previdi-idr-segment-routing-te-policy

IOS-XR: 

```
IOS XR has implemented the BGP Segment Routing TE Policy draft. 

Specifically, the following is supported: 
   o Support for the tunnel encaps draft as described in the 
     draft-ietf-idr-tunnel-encaps implementations report:
      - Recognition and parsing of the tunnel encap attribute as described
        in sections 2 and 3. The attribute is supported in the SR Policy
        SAFI. Tunnel type SR policy as stated below. Other tunnel types are
        unrecognized and simply propagated in BGP updates. 
      - Support for the SR Policy tunnel type as described in the "Advertising
        Segment Routing Policies in BGP". 
      - The Remote-Endpoint Sub-TLV as described in section 3.1 and the Color 
        Sub-TLV as described in section 3.4.2 are not supported yet. 
      - Support for the Color Extended Community for associating prefixes with
        Segment Routing polices. 
    o Support for the SRTE SAFI address family for the IPv4 and IPv6 AFIs
    o Support for the Color Extended Community on IPv4 and IPv6 unicast routes.
    o Support for selection of advertised SRTE policies based on IPv4 format
      route targets. 
    o Support for parsing, validation, and propagation of the Preference 
      Sub-TLV to the SRTE process.
    o Support for parsing, validation, and propagation of the Binding SID 
      Sub-TLV to the SRTE process. If no Binding SID is specified and the
      SRTE policy is installed, a Binding SID is assigned locally. 
    o Support for parsing, validation, and propagation of the Weight Sub-TLV to 
      the SRTE process. 
    o Support for parsing, validation, and propagation of the Segment Sub-TLV. 
      Segments types 1-3 are parsed and validated. However, in this version, 
      only MPLS label segments are installed in the data plane. 
    o Support for installation of an SRTE policy into the SRTE process for
      consideration for installation. 

BGP SRTE support is included in IOS-XR 6.2.2.
```


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-06-21. It was migrated from the old Trac wiki on 2023-03-12.*
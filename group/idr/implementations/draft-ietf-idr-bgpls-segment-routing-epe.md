---
title: draft-ietf-idr-bgpls-segment-routing-epe
description: 
published: true
date: 2023-03-13T06:15:46.529Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:15:39.577Z
---

<pre>
 Name of implementation: Cisco Segment Routing BGP EPE (Egress Peer Engineering)

Person filling out the report: Stefano Previdi (stefano@…)

Date: 15-Feb-2017

Details of compliance:

    2 implementations exists:

    . Cisco Router platforms running IOS-XR release 6.0.2

    . Cisco Nexus Switch N9000/N3000 platforms running NX-OS 7.0(3)I5(1) or greater

    The implementations are based on different codebases/operating systems and have been written by different teams.

    The two implementations have successfully passed interoperability tests based on the supported features described here below.

    EPE implementation in Cisco Router platforms running IOS-XR release 6.0.2

        Section 3

            o One Peer Node Segment MUST be present. (SUPPORTED)

            o One or more Peer Adjacency Segments MAY be present. (SUPPORTED)

            o Each of the Peer Node and Peer Adjacency Segment MAY use the same Peer-Set. (NOT SUPPORTED)

        Section 4.2

            The following Node Descriptors Sub-TLVs MUST appear in the Link NLRI as Local Node Descriptors:

                o BGP Router ID, which contains the BGP Identifier of the local BGP-EPE capable node. (SUPPORTED)

                o Autonomous System Number, which contains the local ASN or local confederation identifier (ASN) if confederations are used. (SUPPORTED)

                o BGP-LS Identifier. (SUPPORTED)

                o Node Descriptors as defined in [RFC7752]. (NOT SUPPORTED)

            ----------------------------------------

            The following Node Descriptors Sub-TLVs MUST appear in the Link NLRI as Remote Node Descriptors:

            o BGP Router ID, which contains the BGP Identifier of the peer node. (SUPPORTED)

            o Autonomous System Number, which contains the peer ASN or the peer confederation identifier (ASN), if confederations are used. (SUPPORTED)

        Section 4.3

            SID format:

    A 3 octet local label where the 20 rightmost bits are used for encoding the label value. In this case the V and L flags MUST be set. (SUPPORTED)
    A 4 octet index defining the offset in the SID/Label space advertised by this router using the encodings defined in Section 3.1. In this case V and L flags MUST be unset. (SUPPORTED)
    A 16 octet IPv6 address. In this case the V flag MUST be set. The L flag MUST be unset if the IPv6 address is globally unique. (NOT SUPPORTED) 

            Persistence: The values of the Peer-Node-SID, Peer-Adj-SID and Peer-Set-SID Sub-TLVs SHOULD be persistent across router restart. (NOT SUPPORTED)

            Link Attributes: In addition, BGP-LS Nodes and Link Attributes, as defined in [RFC7752] MAY be inserted in order to advertise the characteristics of the link. (NOT SUPPORTED)

        Section 5.1:

            Peer Node SID origination (SUPPORTED) Link attributes from RFC7752 (NOT SUPPORTED)

            Peer Adj SID origination (SUPPORTED) Link attributes from RFC7752 (NOT SUPPORTED)

            Peer Set SID origination (NOT SUPPORTED)

EPE implementation in Cisco Nexus Switch N9000/N3000 platforms running NX-OS 7.0(3)I5(1) or greater

    Everything supported in IOS XR
    Support for Peer-Set-SID where each peer can belong to a single peer set. 
</pre>


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-02-17. It was migrated from the old Trac wiki on 2023-03-12.*
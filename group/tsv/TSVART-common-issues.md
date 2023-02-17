---
title: TSV Common Issues
description: 
published: true
date: 2022-12-22T23:20:41.896Z
tags: 
editor: markdown
dateCreated: 2022-12-22T23:20:38.347Z
---

# Transport Area Review Team Common Issues

The [TSV Area Review Team](/group/tsv/TSVART) reviews selected documents within the transport area and selected documents from other areas. This page describes some common issues that might come up in TSVART reviews.. We should publish guidelines that identify transport-related issues and point to the documents that contain further discussion.

We plan to have TSVART assist in developing such guidelines, and to turn them into a checklist for TSVART reviews. The checklist and guidelines can be advertised to authors so their documents address the issues properly before we do TSVART reviews, and during TSVART reviews, we can check the checklist to make sure they considered the relevant issues.

## Use of UDP
See these guidelines: https://datatracker.ietf.org/doc/rfc8085/

Limiting protocol applicability to Controlled Environments (see Section 3.6 of [RFC 8085](https://www.rfc-editor.org/rfc/rfc8085)) allows relaxing of general Internet requirements (e.g., for congestion control) under suitable (e.g., operator) control, but the limited applicability should be clearly stated. Congestion caused by non-congestion-controlled traffic escaping a Controlled Environment needs to be discussed - for examples of how address this concern, see the Congestion Considerations for MPLS/UDP in Section 5 of https://datatracker.ietf.org/doc/rfc7510/ and for TMCE usage of GRE/UDP in Section 8 of https://datatracker.ietf.org/doc/rfc8086/.

Does the protocol use zero UDP checksums with IPv6? If so, does the document explain how the protocol meets the requirements in http://tools.ietf.org/html/rfc6935 and http://tools.ietf.org/html/rfc6936 ? Explanation is necessary because these RFCs include protocol design requirements - a sentence or two requiring that implementations meet the requirements in these RFCs does not suffice, particularly for the [RFC 6936](https://www.rfc-editor.org/rfc/rfc6936) requirements. Examples of dealing with these concerns can be found in Sections 3.1 and 3.2 of https://datatracker.ietf.org/doc/rfc7510/ and Sections 6.2 and 7.1 of https://datatracker.ietf.org/doc/rfc8086/.

If UDP is used as part of a tunnel encapsulation, see the material on tunneling protocols below.

## Timers
If a protocol contains timers, the reviewer should consider whether there is a default value given, or a formula/algorithm for managing the timer.

Is it static or does it adjust based on the sensed network conditions or protocol activity?

Is there potential for multiple nodes, connections, or other protocol instances have their timers synchronize and cause undesirable effects? E.g. should the timer be randomly dithered.

## Retries
Does the protocol perform retransmissions? If so, how are these triggered, and is there potential for an inrush of them?

If there's a feedback mechanism, is its scalability well-understood and can it be impacted by path asymmetry?

## PDU Sizes
Is there a potential issue with IP fragmentation that the protocol implies? Does it deal with this potential adequately?

Is PLPMTUD (see http://tools.ietf.org/html/rfc4821) included where applicable to avoid black-holing that arises when ICMPs are blocked? Does the document explain how the protocol uses PLPMTUD?

Also see the discussion of MTU for tunneling protocols below.

## Middleboxes
Will the protocol be impacted by NAT? If it deals with NAT, does it utilize typical mechanisms (e.g. STUN, TURN, ICE), or invent new ones?

## Use of Experimental Codepoints
In some cases, protocol values have been set aside for Experimental use. These should not be used by protocols proposed for the Standards Track or whose deployment is expected to be widescale and enabled by default. See also [RFC6994](https://www.rfc-editor.org/rfc/rfc6994) on a way to use these options for shared use; this is defined for TCP, but can be extended to support similar uses for other experimental codepoints if needed.

## Hijacking Codepoints
Many values, like TCP option numbers, port numbers, etc. need to be coordinated with IANA and must not simply be picked by a vendor on their own. This has happened with TCP option numbers in the past, which greatly complicates deployment of new mechanisms since it can lead to collisions. See BCP165, composed of [RFC6335](https://www.rfc-editor.org/rfc/rfc6335) and [RFC7605](https://www.rfc-editor.org/rfc/rfc7605). In specific, example codepoints in documents need to avoid "expected" values until assigned by IANA, and should never indicate use of an experimental codepoint as the default. See IANA considerations below.

## Port Number Use
See BCP165, composed of [RFC6335](https://www.rfc-editor.org/rfc/rfc6335) and [RFC7605](https://www.rfc-editor.org/rfc/rfc7605). In particular, it is expect that protocols avoid multiple ports for a single service, do not deploy new insecure services (i.e., all services really ought to have security or at least optional security when deployed), etc.

If one during protocol design phase thinks one have a need for assigned port, it is recommended to request early feedback on this aspect. It is also recommended that the document authors provides answer to the questions asked for an IANA port request listed at https://www.iana.org/form/ports-services. This helps the IETF community in the review of the port assignment request.

## TSVART guideline regarding use of _tcp and _udp in SRV
The first label of the pair is an underscore character followed by the Application Protocol Name, and the second label is either "_tcp" or "_udp".

For applications using transport protocols other than TCP, such as SCTP, DCCP, Adobe's RTMFP, etc., the second label of < service > portion of its DNS-SD name should be "_udp"."

This method is to discover the service, and we want to keep the barrier low for using new transports ... creating new DNS entries for each would create a problem in introducing new transports - they would rely on new DNS provision, and mDNS support.

DBH advice to TSVART reviewers: Please flag any document that deals with service assignment and discovery. There is debate in the community about which is the right way to do assignments for new services. Currently, only _tcp and _udp should be used, but that guideline could change, so please make the AD aware there is an assignment.

## Modifications to IETF Transport Protocols Done Outside of WGs
Sometimes documents that extend or modify IETF transport protocols (e.g. TCP, SCTP, etc.) may be submitted for publication through the ISE or other streams. This needs to be identified and carefully considered if it is the case, especially for core protocols like TCP.

## Transport protocol parameters
Services that use existing transports need to clearly indicate how they interact with existing transport parameters. For TCP, this includes options that are compatible, expected, or incompatible, settings that are compatible, expected, or incompatible, etc. For example, an interactive service with messages longer than 1 byte SHOULD disable Nagle (RFC896).

Tunneling protocols and Transport Related Issues
It is common that Tunneling protocols overlook specification of important transport related behavior. The two most common issues are around ECN and MTU reduction. ECN handling between inner and outer protocols have some important rules, and have requirements on ingress and egress nodes, see [RFC6040](https://www.rfc-editor.org/rfc/rfc6040) (http://www.rfc-editor.org/info/rfc6040) and (https://datatracker.ietf.org/doc/draft-ietf-tsvwg-ecn-encap-guidelines/).

The other aspect is the impact on MTU that tunnels have, particularly UDP-based tunnels. The tunneling protocol is responsible for the tunnel MTU (would be the link MTU if the tunnel were viewed as a link), e.g., the minimum IPv6 tunnel MTU is 1280 bytes without including headers added by the tunneling protocol. Fragmentation and reassembly may be needed and proper handling of the DF bit in IP headers is important. In particular, if a packet that cannot be fragmented is larger than the tunnel MTU, then the resulting ICMP PTB message should be generated by the tunnel ingress, not some network node within the tunnel. This avoids the possibility of nested tunnel headers displacing end-to-end headers from the small ICMP PTB payload, as that displacement can prevent a sender from matching the ICMP PTB message to the traffic that caused the ICMP PTB message. See https://datatracker.ietf.org/doc/draft-ietf-intarea-tunnels/ for a comprehensive discussion of tunnel-related concerns.

Tunneling protocols using UDP usually have a desire to use zero-checksums to avoid the need for full packet processing to calculate the checksum in ingress and egress nodes. However, when UPD zero-checksum is combined with IPv6 this have certain considerations and do need analysis that should be documented, see [RFC6935](https://www.rfc-editor.org/info/rfc6935)[RFC6936](https://www.rfc-editor.org/info/rfc6936).

When tunneling using protocols that provides either repair or recovery mechanism, or congestion control there is always a question about the interaction between this tunnel layer's mechanisms and what is used in inner protocols.

## IANA Considerations
New codepoints for existing transports (e.g., TCP options, port numbers, service names) should use nonsense placeholders until confirmed by IANA. I.e., "NEW-PORT-TBD" should be used rather than any numerical port number, including those from the Dynamic or Experimental ranges.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-01-14. It was migrated from the old Trac wiki on 2022-12-22.*
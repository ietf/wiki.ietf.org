---
title: Internet Area hot topics
description: 
published: true
date: 2022-10-10T13:22:24.284Z
tags: int area
editor: markdown
dateCreated: 2022-10-10T13:11:56.649Z
---

# Typical INTernet Area Issues

Certain internet area related issues show up time and time again when the Area Directors in the IETF Internet Area (or members of the [Internet Directorate](https://datatracker.ietf.org/group/intdir/about/) or [wiki:IOTDirWiki IoT Directorate]) complete reviews of Internet-Drafts. I-D authors are advised to address these issues ahead of time to smooth the path to RFC publication. 

## IPv6 Support

IPv6 should be the basis of all new protocol developments but there are still some issues overlooked by authors.

### Multiple IPv6 Addresses per Interface

All interfaces have at least one IPv6 address: the link-local address. But, they can also have many more addresses obtained by stateless address autoconfiguration, DHCP, ... possibly in different prefixes. The list of addresses also changes daily or even more frequently.

### Multiple IPv6 Addresses per Host

[RFC 7924](https://www.rfc-editor.org/rfc/rfc7934.html) (a [v6ops working group](https://datatracker.ietf.org/wg/v6ops/about/) document) discusses "Host Address Availability Recommendations".  In short, the document "recommends that networks provide general-purpose end hosts with multiple global IPv6 addresses when they attach, and it describes the benefits of and the options for doing so."  Any restrictions on the number IPv6 addresses a general-purpose host may form should be further examined.

### Canonical Format of IPv6 Addresses

All IPv6 addresses in an I-D should be written according to RFC 5952.

### IPv6 literals with ports

In URI, the format of IPv6 literals uses square brackets to differentiate the ':' of the IPv6 address and the ':' used to separate the layer-3 address and the layer-4 port such as in `https://[2001:db8::cafe]:8080`.

### New Extension Headers and Options

All new IPv6 Extension Headers and Extension Header Options should be reviewed by the [6man working group](https://datatracker.ietf.org/wg/6man/about/).  Extension Header Option Type code points include 3 bits of fine-grained behaviour indicators [RFC 8200 §4.2](https://www.rfc-editor.org/rfc/rfc8200.html#section-4.2) that should be given due consideration.

### New ICMPv6 ND Options

All new ICMPv6 ND Options should be reviewed by the [6man working group](https://datatracker.ietf.org/wg/6man/about/).  ND differs from other protocols, especially in its use of multicast.  New ND Options should consider carefully which ND messages may carry them.

### Flow Labels

Some folks can be tempted to tinker with IPv6 flow labels, often to imbue them with interesting semantics.  No matter the concept under discussion, any document that aims to do anything special with flow labels should be cognisant of the following key RFCs:

  * [RFC 6436](https://www.rfc-editor.org/rfc/rfc6436.html) Rationale for Update to the IPv6 Flow Label Specification
  * [RFC 6437](https://www.rfc-editor.org/rfc/rfc6437.html) IPv6 Flow Label Specification
  * [RFC 6438](https://www.rfc-editor.org/rfc/rfc6438.html) Using the IPv6 Flow Label for Equal Cost Multipath Routing and Link Aggregation in Tunnels
  * [RFC 7098](https://www.rfc-editor.org/rfc/rfc7098.html) Using the IPv6 Flow Label for Load Balancing in Server Farms

## Example Addresses

When I-D includes examples, the addresses should be from one of the reserved ranges as specified in RFC6890 (e.g. 2001:db8::/32 for IPv6, 192.0.2.0/24 and the other documentation ranges for IPv4)

> The blocks 192.0.2.0/24 (TEST-NET-1), 198.51.100.0/24 (TEST-NET-2),
> and 203.0.113.0/24 (TEST-NET-3) are provided for use in
> documentation.

## MTU and Fragmentation

IPv4 and IPv6 have different minimum MTU on the link (68 and 1280 bytes) and protocols should be designed to leverage larger MTU.

Fragmentation is also done differently between IPv4 and IPv6 as fragmentation can occur on the path for IPv4, but only at the originating host for IPv6.

## Tunnels

What happens when an encapsulated packet cannot be forwarded ? Should ICMP error message be generated ? To which destination ? Including which part of the inside packet ?

Should a tunnel type be registered? [https://www.iana.org/assignments/smi-numbers/smi-numbers.xhtml#smi-numbers-6]

## Extension Header Insertion and Deletion

IPv6 Extension headers (except for the Hop-by-Hop Options header) are not processed, inserted, or deleted by any node other than the node in the Destination Address field of the IPv6 header as per RFC8200 `when a Routing Header is present the destination address may be the next waypoint in the segment list, as opposed to the ultimate destination address`. Intermediate nodes that wish to add extension headers need to create a new encapsulated IPv6 packet to do so.

## Address privacy

IPv6 addresses of nodes are expected to be more visible on the Internet as compared with IPv4 due to the reduced need for NATs. RFC7721 explores a bunch of privacy and security issues related to this.
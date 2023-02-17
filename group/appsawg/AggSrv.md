---
title: AggSrv
description: 
published: true
date: 2022-11-29T19:41:18.302Z
tags: 
editor: markdown
dateCreated: 2022-11-05T14:40:55.322Z
---

 A BoF is being held IETF 86 in Orlando, currently scheduled for Tuesday, 12 March 2013, 09:00-10:20 EDT.
```
Proposed Charter: 

Aggregated Service Discovery Working Group

Problem Statement:

Service providers and enterprises commonly offer a variety of 
application services delivered over multiple protocols.  A user will 
often consume these services from several endpoints, requiring service 
discovery or manual configuration for each service at each endpoint.  
Some of these services leverage existing standards-based discovery, 
such as DNS, DHCP, or UDDI, while others may rely on some form of 
proprietary discovery.  Still others may not support any form of 
discovery, requiring the manual entry of service access information.  
As the quantity and variety of these services grow, it becomes 
increasingly onerous for administrators to manage the disparate 
discovery mechanisms, and burdensome on users to provide configuration 
where discovery is not supported.

It is useful to first consider whether the issues described here might 
be addressable through the direct use or extension of existing 
discovery protocols.  DHCP [1], for example, is widely deployed and 
supports extension for the discovery of new types of services.  Many 
DHCP extensions already exist for the discovery of such services as 
DNS, NTP, NIS, LDAP, and others.  The DHCP protocol, however, is 
limited by a dependence on local network broadcast, lack of support 
for structured data, and an extension mechanism not intended for 
unregistered customization.  This, coupled with a relative dearth of 
application-level APIs supporting DHCP service-specific extensions, 
makes DHCP an unlikely solution for the issues we face here.

Another option would be to leverage DNS through DNS-SD [2].  The DNS-SD
extension is expressly designed to support Internet-scale service 
discovery using standard DNS queries and existing record types.  
However, it remains a significant limitation that the discovered data 
is global and cannot be made a function of information provided in the 
request.  For example, an enterprise with several IMAP servers, each 
servicing the same email domain but hosting different subsets of 
employees, could not employ DNS-SD for email service discovery using 
that one domain.  It is also important to consider that we wish to 
establish a solution that is broadly and uniformly usable across a 
wide array of platforms and environments.  It is an unfortunate fact 
that browser-based clients often lack the necessary APIs and trust 
to make explicit DNS queries for particular types of records.

In terms of new ideas, similar discovery standardization efforts 
already under way include WebFinger [3], which is intended to address 
generalized discovery for any type of URI identifiable resource, and 
Simple Web Discovery [4], which is more specifically related to the 
discovery of services.  The former provides an interesting framework 
within which aggregated service discovery could operate, however by 
itself there is insufficient guidance and structure to address the 
specific needs of service discovery use cases.  Simple Web Discovery, 
on the other hand, while expressly intended for the discovery of 
services, tends to focus specifically on service location and is not 
well suited for aggregate discovery of dissimilar service types.

Objectives:

The Aggregated Service Discovery working group will standardize an 
extensible protocol supporting the discovery of multiple services with 
a single operation and with limited initial information (e.g. a 
well-known URL, or email address).  A central objective shall be the 
establishment of a protocol and message format which may be readily 
adopted by a wide variety of endpoints, minimizes client startup time 
by reducing network roundtrips, and takes into consideration the 
various technical challenges faced by clients in the wild, including 
security, firewalls, same-origin policies and limited platform APIs.  
Equally important, the working group will focus on ease of deployment, 
and support for both standard and non-standard services types.  The 
barriers to adoption should be made as low as possible without 
compromising the security and integrity of the discovery process.

In the interest of meeting the above objectives, this working group 
will develop a core message format based on JSON, and protocol based on 
HTTP and REST (using [5] as the starting point).  Initially, the group 
will focus on a draft defining an extensible aggregated discovery 
document structure, and operations for discovery document retrieval.  
The group will not necessarily define new formats and protocols, and 
will consider existing technologies where possible.

Potential follow up work may include an additional draft for defining 
a complimentary protocol for local area network service discovery.  
This draft would define a means by which aggregated discovery 
documents may be obtained by clients in a fully automated manner, 
possibly based on mDNS or DHCP.  However, the group would need to 
recharter in order to add such a draft to its deliverables.

Milestones:

Jun 2013 - Accept protocol and format document as Working Group item
Oct 2013 - Start Working Group Last Call on protocol and format document
Dec 2013 - Submit protocol and format document to IESG

References:

[1] RFC 2131 - DHCP
[2] RFC 6763 - DNS-SD
[3] draft-ietf-appsawg-webfinger
[4] draft-jones-simple-web-discovery
[5] draft-daboo-aggregated-service-discovery
```
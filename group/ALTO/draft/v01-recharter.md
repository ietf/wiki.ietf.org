---
title: Draft re-charter (version 0.1, Feb 21 2014)
description: 
published: true
date: 2022-11-30T13:32:43.037Z
tags: 
editor: markdown
dateCreated: 2022-11-30T13:32:39.264Z
---

Application-Layer Traffic Optimization Working Group Charter

The ALTO working group was established in 2008 to devise a request/
response protocol for allowing a host to benefit from a server that is
more cognizant of the network infrastructure than the host would be.
The working group has developed an HTTP-based protocol (RFC-to-be) to
allow hosts to benefit from the network infrastructure by having
access to a pair of maps: a topology map and a cost map.

The origins of the ALTO protocol lie in peer-to-peer (P2P)
applications, where the host is a peer in a P2P network and desires
a rendezvous with other peers for file sharing, real-time
communications, etc. It is a testament to the flexibility of the ALTO
protocol that it is now being considered as a solution for problems
outside the P2P domain, such as in datacenter networks and in content
distribution networks (CDN) where exposing abstract topologies helps
applications.

To support the emerging new uses of ALTO, certain extensions are being
sought. These extensions can be classified as follows:

> 
> o (Standards Track) Protocol extensions for reducing the volume of
> 
> > 
> > on-the-wire data exchange required to align the ALTO server and
> > clients. Extensions under consideration are mechanisms for
> > delivering server-initiated notifications and partial updates of
> > maps. Efforts developed in other working groups such as Websockets
> > and JSON-patch will be considered, as well as bespoke mechanisms
> > specific to the ALTO protocol.
> > 
> 

> 
> o (Standards Track) Extensions to the base ALTO server discovery
> 
> > 
> > mechanism (RFC-to-be) for deployment in heterogeneous network
> > environments. Mechanisms under consideration are extensions for
> > third-party and anycast-based server discovery.
> > 
> 

> 
> o (Standards Track) Protocol extensions to convey a richer set of
> 
> > 
> > attributes to allow applications to determine not only "where" to
> > connect but also "when" to connect. Such additional information
> > will be related both to endpoints (e.g. conveying server load and
> > cache geo-location information for CDN use cases) and to
> > endpoint-to-endpoint costs (e.g. bandwidth calendaring to represent
> > time-averaged cost values in datacenter networks).
> > 
> 

> 
> > 
> > The working group will specify such extension in coordination with
> > other working groups that are also working on the related use cases
> > (e.g. cdni, i2rs, lmap).
> > 
> 

> 
> o (Informational) A survey of techniques to formalize the structure
> 
> > 
> > of a network graph (that can derived from a set of related ALTO
> > network and cost maps) in a format that would facilitate advanced
> > graph computation. Such survey will cover both models used in
> > popular open-source software (e.g. NetworkX, Blueprints) and models
> > being considered in other working groups (e.g. netmod, i2rs).
> > 
> 

> 
> o (Informational) An document on deployment-related issues and
> 
> > 
> > lessons learned from early implementation experiences.
> > 
> 

When the WG considers standardizing information that the ALTO server
could provide, the following criteria are important to ensure real
feasibility:

* Can the ALTO service realistically discover that information?
* Is the distribution of that information allowed by the operators of
that service?
* Can a client get that information without excessive privacy
concerns? Extensions defining new endpoint properties should focus
on exposing attributes of endpoints that are related to the goals
of ALTO -- optimization of application-layer traffic -- as opposed
to more general properties of endpoints. Privacy aspects of new
endpoint properties will in any case be evaluated to the guidelines
provided in the IANA considerations and Security Considerations of
the ALTO protocol specification (RFC-to-be, sections 14.3 and 15.4
at IESG review time).
* Is it information that a client cannot find easily some other way?

After these criteria are met, the importance of the data will be
considered for prioritizing standardization work, for example the
number of operators and clients that are likely to be able to provide
or use that particular data. In any case, this WG will not propose
standards on how congestion is signaled, remediated, or avoided, and
will not deal with information representing instantaneous network
state.

Issues related to the specific content exchanged in systems that make
use of ALTO are also excluded from the WG's scope, as is the issue
dealing with enforcing the legality of the content.

Milestones

Jul 2014 Working Group Last Call for third-party server discovery

> 
> document
> 

Jul 2014 Working Group Last Call for anycast-based server discovery

> 
> document
> 

Jul 2014 Working Group Last Call for partial updates document

Sep 2014 Submit third-party server discovery document

Sep 2014 Submit anycast-based server discovery document

Sep 2014 Submit partial updates document

Sep 2014 Working Group Last Call for deployment considerations

> 
> document
> 

Sep 2014 Working Group Last Call for network graph format survey

> 
> document
> 

Nov 2014 Submit deployment considerations document

Nov 2014 Submit network graph format survey document

Nov 2014 Working Group Last Call for server-initiated notifications

> 
> document
> 

Jan 2015 Submit server-initiated notifications document

Jan 2015 Working Group Last Call for endpoint property extension

> 
> document
> 

Jan 2015 Working Group Last Call for cost property extension document

Mar 2015 Submit endpoint property extension document

Mar 2015 Submit cost property extension document

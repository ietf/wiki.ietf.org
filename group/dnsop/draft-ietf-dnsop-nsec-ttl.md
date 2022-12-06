---
title: draft-ietf-dnsop-nsec-ttl
description: draft-ietf-dnsop-nsec-ttl implementations
published: true
date: 2022-12-06T23:42:54.409Z
tags: 
editor: markdown
dateCreated: 2022-12-06T23:42:54.409Z
---

# draft-ietf-dnsop-nsec-ttl implementations
https://datatracker.ietf.org/doc/draft-ietf-dnsop-nsec-ttl/

Draft summary: Previous specifications allowed for situations where aggressive use of NSEC(3) records may deny names far beyond the intended lifetime of a denial. This document changes the definition of the NSEC(3) TTL to correct that situation, this wiki page is an implementation report to demonstrate the draft's viability.

## Implementations

The following versions of commonly used DNS implementations have reported to adhere to [draft-ietf-dnsop-nsec-ttl](http://tools.ietf.org/html/draft-ietf-dnsop-nsec-ttl). (Future version numbers are expectations and might change)
|**Implementation** |	**Version** |	**Reported by**|
|---|---|---|
|BIND |	9.16 (unreleased) |	Matthijs Mekking|
|Knot DNS |	3.1 (unreleased) |	Vladimir Cunat|
|PowerDNS |	4.3.0 |	Peter van Dijk|
|ldns |	1.7.2 (under review) |	Willem Toorop|
|Microsoft DNS | ??  | |
|OpenDNSSEC 	| ??  | |
|Yadifa |	??  | |


## Implementation details

The following table represents every occurrence of the [RFC 2119](http://tools.ietf.org/html/rfc2119)/RFC 8174 normative terms in the draft, and per normative term a statement on the behavior of a given implementation. The table serves both as an implementation checklist but also as an overview to the community to help assess interoperability.
|# | Requirement |	BIND MR |	Knot MR |	PowerDNS 4.3.0 |
|---|---|---|---|---|
1 |	TTL value for any NSEC RR SHOULD be .. the minimum of .. |	yes |	yes |	yes
2 |	NSEC3 SHOULD have the same TTL value as the minimum of .. |	yes |	yes |	yes

Requirement 1: https://www.ietf.org/archive/id/draft-ietf-dnsop-nsec-ttl-00.html#name-updates-to-rfc4034 and https://www.ietf.org/archive/id/draft-ietf-dnsop-nsec-ttl-00.html#name-updates-to-rfc4035

Requirement 2: https://www.ietf.org/archive/id/draft-ietf-dnsop-nsec-ttl-00.html#name-updates-to-rfc5155


## References to open source changesets

The below links lead to overviews of the code changes required to support [draft-dnsop-nsec-ttl](http://tools.ietf.org/html/draft-dnsop-nsec-ttl). Readers are encouraged to compare the code bases to each other to facilitate understanding of the changes the draft proposes.

BIND MR (unmerged): https://gitlab.isc.org/isc-projects/bind9/-/merge_requests/4506

Knot MR (merged): https://gitlab.nic.cz/knot/knot-dns/-/merge_requests/1219

PowerDNS changelog https://doc.powerdns.com/authoritative/changelog/4.3.html#change-4.3.0-beta2 and merged PR https://github.com/PowerDNS/pdns/pull/8811

ldns (unmerged): https://github.com/NLnetLabs/ldns/pull/118 
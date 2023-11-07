---
title: Implementation report for draft-ietf-idr-bgp-sr-segtypes-ext
description: BGP implementations of draft-ietf-idr-bgp-sr-segtypes-ext
published: true
date: 2023-11-07T07:14:51.039Z
tags: 
editor: markdown
dateCreated: 2023-11-07T00:56:48.946Z
---

## Implementation report
## draft-ietf-idr-bgp-sr-segtypes-ext-01

### Segment Type Description 

| Sub-TLV |	Segment type Description | Cisco IOS-XR |	Arista EOS |	Huawei VRP | Nokia SR OS | GoBGP |
|---|---|---|---|---|---|---|
| C	 | IPv4 Prefix with optional SR algorithm	 | --- | --- | --- | --- | --- |		
| D	 | IPv6 Global Prefix with optional SR algorithm for SR-MPLS	| --- | --- | --- | --- | --- |		
| E	 | IPv4 Prefix with local interface ID (if ID) | --- | --- | --- | --- | --- |
| F	 | IPv4 addresses for if ID for link endpoints (local, remote)  | --- | --- | --- | --- | --- |		
| G	 | IPv6 Prefix and If ID for link endpoints (local, remote) for SR-MPLS	| --- | --- | --- | --- | --- |
| H	 | IPv6 Addresses for link endpoints (local, remote) for SR-MPLS | --- | --- | --- | --- | --- |	
| I	 | IPv6 Global Prefix with optional SR algorithm for SRv6 | --- | --- | --- | --- | --- |		
| J	 | IPv6 Prefix and If ID for link endpoints (local, remote) for SRv6 | --- | --- | --- | --- | --- |
| K |	IPv6 Addresses for link endpoints (local, remote) for SRv6 | --- | --- | --- | --- | --- |	
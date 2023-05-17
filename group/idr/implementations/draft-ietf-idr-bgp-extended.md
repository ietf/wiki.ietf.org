---
title: draft-ietf-idr-bgp-extended implementations
description: 
published: true
date: 2023-03-13T22:12:40.881Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:20:35.268Z
---

## Implementation reports for draft-ietf-idr-bgp-extended-message implementations
## known implementations

Repported by Oliver Borchart (Oliver.borchert@…)

 -   QuggaSRX - an extension to the Quagga router implementation
 -   BGPSEC-IO - BGP Sec traffic generator that allows generating multihop BGPsec updates
 -   ExaBGP - Reported by Thomas Mangin
 -   OpenDaylight?- supported by the BGP module from Boron release onwards
 -   BIRD - optional, since version 1.6.0 

  -  if you know details of the reported implementations, please add details on the list. These can be 3rd party reports on the implementation. 

## Implementation Reports

| #    |  Protocol Feature                                                                                                                                                     |  QuaggaSRx  |  BGPSEC-IO  |  ExaBGP  |  OpenDayLight?  |  BIRD   |
|------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|-------------|----------|-----------------|---------|
|  1   |  Announce via BGP Capability advertisement (RFC5492) as BGP Extended Message Capability                                                                               |  Yes        |  Yes        |  Yes     |  Yes            |  Yes    |
|  2   |  If Extended Message Capability supported,  Implementation MUST be able to receive an UPDATE message larger than 4096 bytes                                           |  Yes        |  Yes        |  Yes     |  Yes            |  Yes    |
|  3   |  Applications putting data into BGP Extended messages MUST limit size of payload to handle max message size                                                           |  Yes        |  Yes        |  Yes     |  Yes            |  Yes    |
|  4   |  Supports Extended message, but peer has not advertised BGP Extended Message Capability                                                                               |             |             |          |                 |         |
|  4a  |  SHOULD NOT accept Extended message                                                                                                                                   |  Yes        |  Yes        |  Yes     |  Yes            |  Yes    |
|  4b  |  MAY Accept Extended message (config/implementation knob)                                                                                                             |  Yes        |  Yes        |  Yes     |  No             |  No     |
|  4c  |  Does send Extended Message                                                                                                                                           |  Yes        |  Yes        |  Yes     |  Yes            |  Yes    |
|  5   |  Error handing                                                                                                                                                        |  yes        |  yes        |   yes    |                 |         |
|  5a  |  Accepts Extended message without receiving BGP Extended Message Capability [Section 5 paragraph 1 MAY]                                                               |             |             |          |   No            |  No     |
|  5b  |  If receives Extended Message without BGP extended message support, follows RFC4271 handling and sends Bad message length Notification [section 5 paragraph 2 MUST]   |  Yes        |  Yes        |  Yes     |  Yes            |  Yes    |
{.dense}


## Management Information

| #    |  Management Feature                                                                                               |  QuaggaSRx  |  BGPSEC-IO  |  ExaBGP  |  OpenDaylight?   |
|------|-------------------------------------------------------------------------------------------------------------------|-------------|-------------|----------|------------------|
|  1   |  Can display a route with 16375 communities in CLI                                                                |             |             |          |                  |
|  2   |  Can send a route with 16375 communities to Netconf/YANG                                                          |             |             |          |  Yes             |
|  3   |  Can set 16375 communities to a route with route policy                                                           |             |             |          |                  |
|  4   |  Can use all community match statements in route policy with community sets containing 16375 communities          |             |             |          |                  |
|  5   |  Can display a route with 8187 extended communities in CLI                                                        |             |             |          |                  |
|  6   |  Can send a route with 8187 extended communities to Netconf/YANG                                                  |             |             |          |  Yes             |
|  7   |  Can set 8187 extended communities to a route with route policy                                                   |             |             |          |                  |
|  8   |  Can use all community match statements in route policy with community sets containing 8187 extended communities  |             |             |          |                  |
|  9   |  Can display a route with 5458 large communities in CLI                                                           |             |             |          |                  |
|  10  |  Can send a route with 5458 large communities to Netconf/YANG                                                     |             |             |          |  Yes             |
|  11  |  Can set 5458 large communities to a route with route policy                                                      |             |             |          |                  |
|  12  |  Can use all community match statements in route policy with community sets containing 5458 large communities     |             |             |          |                  |
{.dense}

If you have implemented ietf-idr-bgp-extended-messages, please just fill out the form above. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-09-12. It was migrated from the old Trac wiki on 2023-03-12.*
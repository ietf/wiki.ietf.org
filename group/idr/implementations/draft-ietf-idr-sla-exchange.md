---
title: draft-ietf-idr-sla-exchange implementations
description: 
published: true
date: 2023-03-13T07:29:36.103Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:29:30.379Z
---

# Implementation report for Implementations and interoperability


| implementation   |     Cisco IOS   |   Cisco NX-OS  |    ExaBGP   |
|------------------|:---------------:|----------------|-------------|
|    Cisco IOS     |          Y      |         Y      |      Y      |
|  Cisco NX-OS     |          Y      |         Y      |             |


 The ExaBGP implementation report is based on a version that is implemented as a receiver. 
 
 
## 1.1.Survey of Operations 

| 1) Optional transitive attribute Features                                                        |                                                                           |
|--------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
|  Is QoS attribute implemented as an optional transitive attribute:                               |   Yes                                                                     |
|  2) Local QoS SLA policy enablement:                                                             |                                                                           |
|  2a) When QoS SLA policy enablement triggers an explicit BGP update                              |                                                                           |
|  message with QoS attribute and SLA sub-type content, has an                                     |                                                                           |
|  attribute's highest order bit, in the QoS attribute flag,                                       |                                                                           |
|  set to 1? This is to indicate receiver to drop the message on reception.                        |   Yes                                                                     |
|  2b) Is implementation capable of QoS SLA advertisement in the context                           |                                                                           |
|  of advertised NLRI? with source AS = 0 in the QoS SLA attribute                                 |  did not implement                                                        |
|  2c) Is implementation capable of advertising QoS SLA with explicit                              |                                                                           |
|  source and destination AS encoded?                                                              |  Yes,  Current ExaBGP version of implementation ignores encoded AS        |
|  3) First trigger for QoS SLA advertisement:                                                     |                                                                           |
|  3a) At the first trigger for SLA advertisement, a sender advertises                             |                                                                           |
|  SLA parameters with an unique SLA id?                                                           |   Yes                                                                     |
|  3b) Acting as a receiver, is implementation capable                                             |                                                                           |
|  to learn an advertised QoS attribute and SLA parameters                                         |  Yes                                                                      |
|  4) Updating previously advertised QoS SLA:                                                      |                                                                           |
|  4a) On an event detecting update to earlier advertised SLA, sender                              |                                                                           |
|   picks the same SLA id, advertised before, and signals new                                      |                                                                           |
|  SLA parameters in its entirety. No delta updates.                                               |   Yes                                                                     |
|  4b) Acting as a receiver, is implementation capable to replace SLA                              |                                                                           |
|  parameters learned previously?                                                                  | Yes                                                                       |
|                                                                                                  |   ExaBGP implementation validated to interpret received SLA parameters.   |
|                                                                                                  |            It is not implemented with persistent state to map             |
|                                                                                                  |    to next BGP update with the same SLA identifier                        |
|  5) Invalidation of previously advertised SLA:                                                   |                                                                           |
|  5a On an event to invalidate previously advertised SLA parameters,                              |                                                                           |
|                  a BGP update message is sent to the same destination AS with                    |                                                                           |
|                        the same SLA id, advertised before, with SLA message                      |                                                                           |
|    containing 0 Traffic Class count.                                                             |                                    Yes                                    |
|  5b) Acting as a receiver, is implementation capable to remove                                   |                                                                           |
|     previously learned QoS SLA parameters?                                                       |   Yes, This capability not yet implemented in ExaBGP                      |
|  6) QoS SLA advertisement for point to point connection:                                         |                                                                           |
|  6a) Is implementation capable to advertise SLA for the destination that is next hop             |  Yes                                                                      |
|  7) QoS SLA advertisement for destination multiple hops away:                                    |                                                                           |
|  7a Is implementation capable to advertise SLA for the destination that is multiple hops away?   |   Yes                                                                     |
|  None of the forwarding nodes modify the content of the QoS SLA parameters?                      |  Yes                                                                      |
|  8) Inter-operability with nodes not supporting this attribute:                                  |                                                                           |
|  8a Is interoperability tested to make sure this optional                                        |                                                                           |
|  transitive attribute is forwarded without any impact through                                    |                                                                           |
|  the nodes that do not implement support of this attribute                                       |  Yes                                                                      |
{.dense}

## Attributes implemented

| implementation  |  attribute                          |
|-----------------|-------------------------------------|
|  Cisco          |   Direction incoming and outgoing   |
|                 |  Traffic Class Count                |
|                 |  Traffic Class Description          |
|                 |  Traffic Class Elements Count       |
|                 |  Classifier Element values          |
|                 |  ipDiffServCodePoint                |
|                 |  Traffic Class Service Count        |
|                 |  Service Attributes:                |
|                 |  Traffic_CLASS_TSPEC                |
|                 |  MINRATE_IN_PROFILE_MARKING         |
|                 |  MINRATE_OUT_PROFILE_MARKING        |
|                 |  RELATIVE_PRIORITY                  |


## 2. Suggestions for the future


 The proposed draft is to define message to exchange SLA parameters between two nodes. The SLA specification does not make any assumption about provisioning. It is not required though it would be nice if provisioning is aligned with SLA specification [IDR-SLA] and thus providing a consistent way of mapping between provisioning and messaging.

## 3. Acknowledgements

   Thanks to Ruta Vaidya for providing data on Cisco implementation. Thanks To Thomas Mangin for his guidance during ExaBGP implementation.

## Authors of implementation report 

|  Author          |  company        |  email         |
|------------------|-----------------|----------------|
|  Shitanshu Shah  |  Cisco Systems  |  svshah@…      |
|  Keyur Patel     |  Cisco Systems  |   keyupate@…   |


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-02-05. It was migrated from the old Trac wiki on 2023-03-12.*
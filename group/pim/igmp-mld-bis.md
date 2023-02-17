---
title: IGMP MLD bis
description: 
published: true
date: 2022-12-20T21:57:11.557Z
tags: 
editor: markdown
dateCreated: 2022-12-20T21:57:03.922Z
---

# IGMP MLD bis
 The [pim WG](/group/pim) has created a team to work on progressing IGMPv3 and MLDv2 to Internet Standard. This page is here to facilitate the work and share information about the progress.

## Design Team members

Toerless Eckert - Huawei
Mankamana Mishra - Cisco
Hitoshi Asaeda - NICT (and BSD implementation)
Anish Peter
Olufemi Komolafe - Arista
Suneesh Babu - Juniper
Nicolai Leymann - DT
Ramakanth Josyula - Ruckus Networks - Arris
Timothy Winters - UNH

## Mailing list info

There is a mailing list called igmp-mld-bis. See https://www.ietf.org/mailman/listinfo/igmp-mld-bis

## Action Items

1.    Identify areas to be addressed in IGMP/MLD (Section Problem statements)
2.    Prepare questionaire for (1. Operators 2. Vendors (2.1 Host vendors 2.2 NE vendors) -- (Section Questionaire)
3.    Publish and collect responses for polls.
4.    Prepare list of inclusion and exclusions.
5.    ID 

## Problems of interest

1.    Exclude src mode -- probably never used in field.
2.    A device that supports only igmpv2 (/mld v1) only may force the network to switch to lower versions. Causing service interruptions.
3.    Security considerations. 

## Questionaire

Questions:

   1: Have you deployed IGMP-V3 in your network?

   2: How long have you had IGMPv3 deployed in your network ? Do you know if your deployment is based on RFC 3376

   3: Do you know if Lightweight IGMPv3 (RFC 5790) is deployed in your network ?

   4: Have you deployed MLDv2 in your network ?

   5: Have you deployed IGMP Membership Exclude mode with source list defined in RFC 3376 ?

   6: Does any application uses Exclude mode with source list for MLDv2 ?

   7: Which part of IGMPv3 RFC 3376 is used more often ?

   8: Do you have any other comments / concerns on IGMPv3 / MLDv2 (RFC 3376) ?

   9: Does your network still has deployment for IGMPv1 (RFC 1112) ?

   10: IGMP implementation is based on RFC 1112 or RFC 5790 or RFC 3376 or RFC 2236
   

|                                       Question                                       |  Network operator  |  L3 vendor  |  Switch vendor  |  Host implementer  |
|:------------------------------------------------------------------------------------:|--------------------|-------------|-----------------|--------------------|
|  Have you deployed IGMP version x in your network?                                   |  Y                 |  N          |  N              |  N                 |
|  IGMPv1 (RFC 1112)                             Deployed: Y/N  Since:                 |  y                 |  N          |  N              |  N                 |
|  IGMPv2 (RFC 2236)                            Deployed: Y/N  Since:                  |  y                 |  N          |  N              |  N                 |
|  IGMPv3 (RFC 3376)                            Deployed: Y/N  Since:                  |  y                 |  N          |  N              |  N                 |
|  Lightweight IGMPv3 (RFC 5790)       Deployed: Y/N  Since:                           |  y                 |  N          |  N              |  N                 |
|  MLDv1 (RFC 2710)                                    Deployed: Y/N  Since:           |  y                 |  N          |  N              |  N                 |
|  MLDv2 (RFC 3810)                                    Deployed: Y/N  Since:           |  y                 |  N          |  N              |  N                 |
|  Lightweight MLDv2 (RFC 5790)            Deployed: Y/N  Since:                       |  y                 |  N          |  N              |  N                 |
|  Is IGMPv3 Membership Exclude mode with source list supported?                       |  Y                 |  Y          |  Y              |  Y                 |
|  Is MLDv2 Membership Exclude mode with source list supported?                        |  Y                 |  Y          |  Y              |  Y                 |
|  Do you need network support for fallback mechanism between different IGMP versions? |  Y                 |  Y          |  Y              |  Y                 |
|   - Between which IGMP versions?                                                     |  Y                 |  Y          |  Y              |  Y                 |
|   - What is your experience with this fallback mechanism?                            |  Y                 |  Y          |  Y              |  Y                 |
|  Can backward compatibility to igmp v1 be stopped? If not please justify.            |  Y                 |  Y          |  Y              |  Y                 |

***PROPOSAL FOR HOW THESE AND OTHER QUESTIONS MAY BE STRUCTURED....***

## Deployment

Before answering the questions, please complete the following background information.

Name:

Affiliation/Organization:

Contact Email:

Do you wish to keep your name and affiliation confidential:

Brief description of IGMP/MLD deployment:

**1. Deployment Status**
Which of the following are currently deployed in your network? And for how long has it been deployed?
IGMPv1 (RFC 1112) Deployed: Y/N Since:
IGMPv2 (RFC 2236) Deployed: Y/N Since:
IGMPv3 (RFC 3376) Deployed: Y/N Since:
Lightweight IGMPv3 (RFC 5790) Deployed: Y/N Since:
MLDv1 (RFC 2710) Deployed: Y/N Since:
MLDv2 (RFC 3810) Deployed: Y/N Since:
Lightweight MLDv2 (RFC 5790) Deployed: Y/N Since:

**2. Deployment Specifics**

2.1 If IGMPv3 (RFC 3376) is deployed
+ Is IGMP Membership Exclude mode with source list in use?

2.2 If MLDv2 (RFC 3810) is deployed
+ Is Exclude mode with source list for MLDv2?

2.3 Does your network rely on the fallback mechanism between different IGMP versions?
+ Between which IGMP versions?
+ What is your experience with this fallback mechanism?

2.4 Are you using equipment with different (multi-vendor) implementations for your deployment?
+ Have you encountered any inter-operability or backward-compatibility issues amongst differing implementations?
+ What are your concerns about these issues?

[We can add more questions here]

**3. Deployment Perspectives**
3.1 What have you found to be the strengths of the protocol(s) you have deployed?
3.2 What have you found to be the weaknesses of the protocol(s) you have deployed?
3.3 What suggestions would you make to the IETF PIM WG as it seeks to update these documents?

## Implementation

Before answering the questions, please complete the following background information.

Name:

Affiliation/Organization:

Contact Email:

Do you wish to keep your name and affiliation confidential:

Brief description of IGMP/MLD implementation:

**1. Implementation Status**
Which of the following have you implemented? And for how long has it been implemented?
IGMPv1 (RFC 1112) Implemented: Y/N Since:
IGMPv2 (RFC 2236) Implemented: Y/N Since:
IGMPv3 (RFC 3376) Implemented: Y/N Since:
Lightweight IGMPv3 (RFC 5790) Implemented: Y/N Since:
MLDv1 (RFC 2710) Implemented: Y/N Since:
MLDv2 (RFC 3810) Implemented: Y/N Since:
Lightweight MLDv2 (RFC 5790) Implemented: Y/N Since:

**2. Implementation Specifics**

2.1 Which of the following features have you implemented?
[List of interesting key features from different RFCs]

2.2 Have you carried out interoperability tests with other implementations?
+ What issues arose during these tests?
+ How could the standards have help minimize these issues?

**3. Implementation Perspectives**
3.1 What feature(s) has been deliberately omitted from your implementation?
+ because you think it is sub-optimal or potentially has significant disadvantages/issues?
+ because of insufficient demand/use cases?

3.2 Which ambiguities or inconsistencies in the RFC made the implementation challenging?

3.3 What suggestions would you make to the IETF PIM WG as it seeks to update these documents?


## Discussed

- IGMP proxy -- dont care about it right now.
- IGMP v1 popularity
  -  None NL.
  -  Now anymore TE. (Had seen them few years back in few wlan switches) 
- Bother about Querier when both H&R implementaion.
  -  (Direction in draft to bother about Querier behaviour) 
- Should we distigush between vendors based on deployment volume.
  -  vendors may remain anonymous. Hence this input may not be available from each entry 

## Open issue

- MLD sec draft (https://www.ietf.org/archive/id/draft-vyncke-pim-mld-security-01.txt)
  -  unicast messaging support
  -  Downgrade problem to MLD v1 problem stated in draft
  -  Figure out other addressable factors from it 
- Handling Snooping
  -  (Q: how snooping implementations will be affected) 
- Host & router implementation questionaire
  -  Either different Questionaires or
  -  Ask in Q if its a R/H impl 
- Handling multiple response from the same vendor
  -  multiple implementation
  -  multiple deployments
  -  Router and Host impementation (Call -- pickup implementation details) 
- IGMP v3 adoption problem due to legacy switches and routers -- how to frame Q
  -  (hack disable snooping in legacy v2 ) 

## References

Survey Report on Protocol Independent Multicast https://tools.ietf.org/html/rfc7063

MLD Security https://www.ietf.org/archive/id/draft-vyncke-pim-mld-security-01.txt

https://tools.ietf.org/html/draft-pashby-magma-simplify-mld-snooping-01
    MLD Considered Harmful https://www.troopers.de/media/filer_public/7c/35/7c35967a-d0d4-46fb-8a3b-4c16df37ce59/troopers15_ipv6secsummit_atlasis_rey_salazar_mld_considered_harmful_final.pdf

## MoM

## 09/Jan/2019
## 23/Jan/2019

Attendees:

Stig V (SV) Toerless Eckert (TE) Anish Peter (AP) Olufemi Komolafe (FE) Nicolai Leymann (NL) Ramakanth Josyula (RJ) Timothy Winters (TW)

Discussed:

- IGMP proxy -- dont care about it right now.
- OGMP v1 popularity
  -  None NL.
  -  Now anymore TE. (Had seen them few years back in few wlan switches) 
- Bother about Querier when both H&R implementaion.
  -  (Direction in draft to bother about Querier behaviour) 
- Should we distigush between vendors based on deployment volume.
  -  vendors may remain anonymous. Hence this input may not be available from each entry 

Open issue:

- Handling Snooping
  -  (Q: how snooping implementations will be affected) 
    MLD sec draft (https://www.ietf.org/archive/id/draft-vyncke-pim-mld-security-01.txt)
  -  unicast messaging support
  -  Downgrade problem to MLD v1 problem stated in draft
  -  Figure out other addressable factors from it 
- Host & router implementation questionaire
  -  Either different Questionaires or
  -  Ask in Q if its a R/H impl 
- Handling multiple response from the same vendor
  -  multiple implementation
  -  multiple deployments
  -  Router and Host impementation (Call -- pickup implementation details) 
- IGMP v3 adoption problem due to legacy switches and routers -- how to frame Q
  -  (hack disable snooping in legacy v2 ) 

## 6th Feb 2019

Attendees:

Concerns:

Action Items:

Conclusions:

## 20th Feb 2019

Attendees: TE, MM, AP, Femi Agenda:

 1.   MLD Security draft
 2.   Snooping
 3.   Questions:
      1.  Deployments that you have: 
   xGMP router (querier) xGMP host (receiver) xGMP snooping

   ?? support snooping in vpls ?? support snooping in EVPN

 2.   Security challenges faced or concerns you have
 3.   Interop problems faced
 4.   Scaling and performance problems faced by you and concerns
 5.   Identity must be hidden?
 6.   Data shared by you must be treated as confidential
 7.   Can we ask you follow up questions to you 

 4.   Expected reply for question 

    -- one per / one per implementation -- Self maintained stack / 3rd party maintained stack -- one per operator / one per operator network

 5.   Have questionaire as an ID or email WG.
 6.   Erratas -- Guess none are there which needs to be addressed.
 7.   IETF WG preso? 

Concerns:

Action Items:

Slot in PIM and mboned wg for slots to present. Slides preparation. (TE, during ietf week) Initial version of an info draft. (MM to send initial draft by 6th EOD PST) IETF 104 attendees : TE, MM, Stig, (Tim?)

Conclusions: 



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-03-06. It was migrated from the old Trac wiki on 2022-12-20.*
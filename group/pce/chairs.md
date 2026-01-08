---
title: Chairs
description: 
published: true
date: 2026-01-08T13:42:59.072Z
tags: 
editor: markdown
dateCreated: 2023-03-07T11:17:56.126Z
---

# PCE WG Chairs Tracker

## To be Started
|Item|Document|Responsible|Remarks|
|---|---|---|---|
| Discuss | - | TLVs in sub-object and how to make it work. |Ketan: I would really urge the WG to discuss moving away from this flag based extensions and instead move to TLV based extensions that follow whatever object encodings are defined so far. We cannot expect to change what exists, but anything coming up in the future can stop using this flag based mechanism. If this isn't done, the combinations of flags and the ordering of these variable size objects will make parsing complex for implementations - especially if they were to support some flags but not others.<br>Dhruv: Isnt it too late to do this and the complexisty already exist, does adding more flags really increases the complexity more? Any past reason why no subobject in RSVP-TE or PCEP ever had TLVs? <br> Next step talk to Ketan|
|Discuss|-|Marina| Any step need to be taken by chairs?|
| Mind Map | - |  | WG maintain a mind map - Decide if it is worth expanding the [Miro Board](https://miro.com/app/board/uXjVPNe4ByI=/?share_link_id=666555899925) or  do it on the WG Github with Mermaid? Any volunteers?|




## Initiated and ongoing Tasks
|Item|Document|Responsible|Remarks|
|---|---|---|---|
| Shephered Review and Writeup | draft-ietf-pce-state-sync | Dhruv | update done, Dhruv to recheck |
| Shephered Review and Writeup | draft-ietf-pce-flexible-grid | Julien | Review done, waiting for update|
| WGLC assigned reviews | - | Dhruv | Dhruv to work with Andrews to setup wiki to track reviews |
| Enhance GitHub for PCE WG | - | Dhruv/Andrew | - |
| Enhance coordination [wiki](https://wiki.ietf.org/group/pce/coordination) | - | Dhruv | Andrew can help with it |

## AD Tracker
|AD|Task|Document|Remarks|
|---|---|---|---|
|Ketan|AD Evaluation|draft-ietf-pce-sid-algo|AD review done, authors posted update, reverifying WG consenses|

Items to talk to Ketan:
- VLAN forwarding: notify IEEE?

## Completed Tasks by Chairs
|Item|Document|Responsible|Remarks|
|---|---|---|---|
| Shephered Review and Writeup | draft-ietf-pce-sr-bidir-path | Dhruv | Sent to IESG |
 Recheck AD review changes| draft-ietf-pce-sid-algo | Dhruv | Dhruv to check if any update to shepherd writeup is needed based on AD review |
| WG Adoption|draft-dhody-pce-pcep-extension-pce-controller-p2mp|Julien|Open|
| Add to Adoption queue | draft-dong-pce-pcep-nrp | Dhruv | Request from authors to prioritize |
| Add to WGLC queue | draft-ietf-pce-circuit-style-pcep-extensions | Dhruv | Authors requesting WGLC in parallel to spring draft; can be moved to WGLC queue? |
| Add to WGLC queue | draft-ietf-pce-sr-p2mp-policy | Dhruv | Authors requesting WGLC. draft; can be moved to WGLC queue? |
|Agenda for 123| [agenda](https://datatracker.ietf.org/doc/agenda-123-pce/) | All |-|
|IANA Renew| draft-ietf-pce-multipath | Dhruv | Asked authors for commitment |
|Early IANA allocation|draft-ietf-pce-p2mp-policy|Dhruv|-|
|Author Guidance|draft-wang-pce-vlan-based-traffic-forwarding|Sent email to John and Julien|ISE declined to publish; authors made an update|
|Early IANA allocation|draft-ietf-pce-sid-algo|Dhruv|-|
|IANA Inconsistency|RFC8780|Dhruv|IANA updates|
|WG Adoption|draft-ietf-pce-stateful-pce-vendor|Dhruv|-|
|WGLC|draft-ietf-pce-segment-routing-policy-cp|Dhruv|Needs Managability Section|
|WG Adoption|draft-li-pce-controlled-id-space|Dhruv|comments to be handled|
| Shepherd Review | draft-ietf-pce-pcep-yang| Julien | - |
|Adoption|draft-dhodylee-pce-pcep-ls|Julien|-|
|Shepherd Review|draft-ietf-pce-stateful-pce-optional|Dhruv|Waiting for authors to handle comments|
|Shepherd Review|draft-ietf-pce-segment-routing-policy-cp|Dhruv|-|
|IANA Poll|draft-ietf-pce-circuit-style-pcep-extensions|Dhruv|-|
|Adoption|draft-peng-pce-entropy-label-position|Dhruv|-|
|IANA Poll for additional codepoints|draft-ietf-pce-segment-routing-policy-cp|Dhruv|-|
| Sent to AD | draft-ietf-pce-pcep-extension-native-ip | Dhruv | Awaiting AD review |
| Sent to RFC Editor | draft-ietf-pce-pceps-tls13 | Andrew | - |
| Adoption | draft-ietf-pce-bier-te | Dhruv | Make sure authors make the update with name change |
| Early allocation | draft-ietf-pce-pcep-color | Dhruv | - |
| Recharter for PCE WG | - | Dhruv | Completed on 2023-12-19 |
|Early Code Point|draft-ietf-pce-sr-bidir-path|Julien|-|
|Early Code Point|draft-ietf-pce-pcep-color|Dhruv|-|
| Last Push | draft-ietf-pce-segment-routing-ipv6 | -| Hari is Shepherd | 
| Early Allocation for SID ALGO | draft-ietf-pce-sid-algo | Dhruv | - |
| Early Allocation for Native IP | draft-ietf-pce-pcep-extension-native-ip | Dhruv is shepherd | - |
| WG adoption closed | draft-dhody-pce-stateful-pce-vendor | Julien | - |
| WG Secretary Onboarding | - | Dhruv | Done at IETF 117 |
| WG Secretary | - | Dhruv/Julien | Andrew is our new Secretery |
| Finalize next step | draft-ietf-pce-enhanced-errors | Dhruv | Marked as Parked WG I-D |
|Respond to Huaimo | draft-chen-pce-sr-ingress-protection | Julien/Dhruv | Think aboout experimental; Dhruv is responsible |
| WGLC Native IP | draft-ietf-pce-pcep-extension-native-ip | Dhruv | - |
| Close WG Adoption Call | draft-dhody-pce-pceps-tls13 | Julien | - |
|Response to Yue Wang email| draft-wang-pce-vlan-based-traffic-forwarding | Julien | Response Sent on 2023-03-10; Discussion with John ongoing |
|Who should shepherd (and notify SPRING WG) | draft-ietf-pce-segment-routing-ipv6 | Julien/Dhruv | Hari is the shepherd, he will post to the spring list | 
|BIER WG opinion|draft-chen-pce-bier|Dhruv|Mail sent to BIER and added to the adoption queue|
|BFD WG opinion|draft-fizgeer-pce-pcep-bfd-parameters|Dhruv|Mail sent and response from Reshad received|





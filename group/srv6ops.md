---
title: SRv6OPS
description: Welcome to the SRv6OPS WG Wiki
published: true
date: 2024-10-23T08:50:38.122Z
tags: 
editor: markdown
dateCreated: 2024-06-14T04:07:24.017Z
---

# Welcome to the SRv6OPS WG Wiki

This Wiki contains additional information for the IETF [SRv6OPS](https://datatracker.ietf.org/wg/srv6ops/about/) working group. Refer [datatracker](https://datatracker.ietf.org/wg/srv6ops/documents/) for the latest state of any draft. 

## Prep for IETF 121

- Chairs are preparing the agenda
- Chairs are also planning an informal side meeting

## Draft Analysis

[Charter & Milestones](https://datatracker.ietf.org/wg/srv6ops/about/)
[All SRv6OPS I-Ds](https://datatracker.ietf.org/doc/search?name=srv6ops&sort=&rfcs=on&activedrafts=on&olddrafts=on&by=group&group=)

Categorisation for I-Ds can be on 
- Operational Issues
- Deployment Information
- Feature Specific
- Address Planning 
 
| I-D     | Title     | State | Category     | Remarks. |
| ------------- | ------------- | ------------- | ------------- |
| draft-liu-srv6ops-problem-summary | SRv6 Deployment and Operation Problem Summary | Active | Operational Issues | - |
| | | | | |
| draft-hy-srv6ops-sfc-in-cloud-uc | Use Cases and Requirements for Service Function Chaining based on SRv6 in cloud | Active |Deployment Information | - |
| draft-lu-srv6ops-srv6-for-power-grid | SRv6 for Power Grid | Active |Deployment Information	| - |
| draft-mcbride-srv6ops-srv6-deployment | SRv6 Deployment Options | Active |Deployment Information	| - |
| draft-tian-srv6ops-srv6-deployment-consideration | SRv6 Deployment Consideration| Expired |Deployment Information	| - |
| | | | | |
| draft-liu-srv6ops-sr-protection | Best Practices for Protection of SRv6 Networks | Active |Feature Specific | - |
| draft-mishra-srv6ops-inter-domain-routing | SRv6 Inter Domain Routing | Active |Feature Specific | - |
| draft-zhang-srv6ops-abn-mon-data-circulation | IFIT-based anomaly monitoring and tracing in data circulation | Active |Feature Specific | - |
| draft-geng-srv6ops-traffic-steering-to-srv6 | Best practices for traffic steering to SRv6 | Expired | Feature Specific | - |
| draft-zhou-srv6ops-am-deployment-status | Alternate Marking Deployment Status and Considerations | Expired | Feature Specific | - |
| draft-pang-srv6ops-srv6-policy-trap | SNMP Trap for SRv6 Policy | Expired | Feature Specific | - |
| | | | | |
| draft-ek-srv6ops-sidspace-experiment | SID Space (5f00::/16) Experiment | Active | Address Planning | - |
| draft-liu-srv6ops-sid-address-assignment | IPv6 Address Assignment for SRv6 | Expired | Address Planning | - |




## Chairs early thoughts on the Drafts

### SRv6 Deployment and Operation Problem Summary
[draft-liu-srv6ops-problem-summary-03](https://datatracker.ietf.org/doc/draft-liu-srv6ops-problem-summary/)

- Make sure that the drafts align to our charter and suggest to limit this to Operational Problem Summary
- Currently bare bones, need meet to describe issues and not be a wishlist of new features!
- Limit front page authors to 5

### IPv6 Address Assignment for SRv6
[draft-liu-srv6ops-sid-address-assignment-00](https://datatracker.ietf.org/doc/draft-liu-srv6ops-sid-address-assignment/)

- Does it align with draft-ietf-6man-sids?

### Best Practices for Protection of SR Networks
[draft-liu-srv6ops-sr-protection-01](https://datatracker.ietf.org/doc/draft-liu-srv6ops-sr-protection/)

- Please limit to SRv6 only, any text related to SR-MPLS is out of scope! 
- It lacks operational issues or guidance, it feels more like a list of everything! 

### Alternate Marking Deployment Status and Considerations
[draft-zhou-srv6ops-am-deployment-status-00](https://datatracker.ietf.org/doc/draft-zhou-srv6ops-am-deployment-status/)

- More clearer guidance is needed

### Use Cases and Requirements for IPv6 enhancement techniques in cloud 
[draft-he-yi-srv6ops-ipv6-enhancemnet-in-cloud-uc-00](https://datatracker.ietf.org/doc/draft-he-yi-srv6ops-ipv6-enhancemnet-in-cloud-uc/)

- What does it mean to have an SRv6 agent in virtual incloud router?
- Not much meat! 

## Logistics


### IETF Meeting Session Request 
* Number of Sessions: 1
* Length of Session(s): 1.5 Hours
* Number of Attendees: 75
* Chair conflict: pce, IABopen, spring, teas
* Person must be present: none
* Technology overlap: 6man, v6ops, rtgwg, mpls, bess, lsr, idr
* Key participant conflict: nmop, alldispatch, gendispatch, genarea, rtgarea, opsawg 
* Special Requests: Do not schedule against BOFs if possible.
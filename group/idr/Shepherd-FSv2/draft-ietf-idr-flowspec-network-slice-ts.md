---
title: Shepherd report for draft-ietf-idr-flowspec-network-slice-ts based on draft-ietf-idr-fsv2-ip-basic
description: Shepherd FSv2 draft-ietf-idr-flowspec-network-slice-ts
published: true
date: 2026-10-08T15:21:10.338Z
tags: 
editor: markdown
dateCreated: 2026-05-25T21:07:26.927Z
---

# Shepherd 
# draft-ietf-idr-flowspec-network-slice-ts 

### Summary 
**version:** 5
**shepherd:** Sue Hares
**Next steps:** 
1. Change NRP ID filter to to FSv2 IP Basic Filter Family, 
   component assignment 20 (see https://wiki.ietf.org/group/idr/FSv2-Alloc).

2. Action (section 3.1.1) - redirect to BE Path - no SRv6 work needed, only SR-MPLS (if desired) using [draft-ietf-idr-flowspec-redirect-ip ](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-redirect-ip/)

2. New Encapsulate-NPR-ID action (section 3.1.2) 
 For NRP ID action encapsulation (3.1.2)  ("Encapsulate-NRP-ID") 
   the extended community can just be applied for 
   
3. Security setion (section 4) should note that NRP ID is a critical pieces of informatino 
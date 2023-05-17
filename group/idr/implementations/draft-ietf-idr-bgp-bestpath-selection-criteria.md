---
title: draft-ietf-idr-bgp-bestpath-selection-criteria
description: 
published: true
date: 2023-03-13T07:04:58.439Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:04:53.019Z
---

 This is a page for draft-ietf-idr-bgp-bestpath-selection-criteria.

**Implementations reported** 

| implementation   |  Version  |   Reported by   |
|------------------|-----------|-----------------|
|  Cisco IOS-XR    |   6.5     |   Rajiv Asati   |
|  Cisco IOS-XE    |   7.0.1   |   Rajiv Asati   |
|  Cisco NX-OS     |           |   Rajiv Asati   |
|  Juniper         |   16.1R1  |   Jeff Haas     |
|  Juniper         |   16.1R1  |   Jeff Hass     |

**Features**

| feature        |  section-paragraph                |                                                 Description                                                  |
|----------------|-----------------------------------|:------------------------------------------------------------------------------------------------------------:|
|  Criterion 1   |  section 3, paragraph 2, item 1   |  next-hop reachability SHOULD Be resolved in forwarding database of a particular data plane protocol         |
|  Criterion 2   |  section 3, paragraph 4, item 2   |  the 'path availability' check of the BGP next-hop MAY be performed.                                         |
|  Criterion 2a  |  section 3, paragraph 4, item 2a  |  The path availability check may be performed by any of the OAM data plane liveness mechanisms               |
|  Criterion 2b  |  section 3, paragraph 4, item 2b  |  The dataplane protocol for this criterion MUST Be the same as the one selected by the previous critierion   |

**Implementation Report**

| #    |  Protocol Feature                              |  Cisco IOS-XR 6.5                                                              |  Cisco IOS-XR 7.0.1              |  Cisco NX-OS                      |  Juniper 3.1          |  Juniper 3.2      |
|------|------------------------------------------------|--------------------------------------------------------------------------------|----------------------------------|-----------------------------------|-----------------------|-------------------|
|  1   |  Criterion 1: nexthop reachability resolution  |  Yes for IP encap (e.g. GRE/IP and MPLS encap (SR-TE with on-Demand-Nexthop)   |  Yes for IP Encap (e.g. GRE/IP)  |  Yes for IP Encap and MPLS encap  |   Yes for MPLS encap  |  Yes for MPLS En  |
|  2   |  Criterion 2: path availability check          |   No                                                                           |   yes                            |  no                               |  no                   |  yes              |
|  2a  |  Criterion 2a (*1)                             |  n/a                                                                           |   yes                            |  n/a                              |  n/a                  |  yes              |
|  2b  |  Criterion 2b (*)                             |  n/a                                                                           |   yes                            |  n/a                              |  n/a                  |  yes              |


 * 1 only applicable for those indicating yes in 2

**Written Descriptions Cisco**

 -   Cisco IOS-XR : Rel 6.5 supports criterion 1 for IP Encap (e.g. GRE/IP) and MPLS encap (SR-TE with On-Demand-NextHop?);
 -   Rel 7.0.1 has the support for criterion 2 for the latter as well .
 -   Cisco IOS-XE: criterion 1 for IP encap supported . ; ; ; ; ;
 -   Cisco NX-OS: criterion 1 for IP encap supported; MPLS encap support being double-checked; 

**Juniper**

  -  Jeff Haas indicated Juniper has a implementation. 

https://mailarchive.ietf.org/arch/msg/idr/3hBQehXLPrimU-KMTOAVmFNHbhY

  -  Both of the additional conditions in the document are MAYs and thus everyone is compliant. :-)" 

That said, Juniper implements the 3.1 check against whether a nexthop is resolvable in a given data plane protocol; e.g. MPLS. This may be adjusted using configuration. (Our "resolution ribs" feature.)

  -  Juniper implements the 3.2 path availability check in several variations, 

but not all. For example, BFD may be used to protect MPLS generated nexthops for LDP and RSVP. For IP nexthops distributed via an IGP, the IGP may be protected using BFD.

Updated by Rajiv Asati and Jeff Haas Recorded by Susan Hares 



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-06-13. It was migrated from the old Trac wiki on 2023-03-12.*
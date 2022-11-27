---
title: IDR Shepherd Comments on draft-ietf-pce-pcep-extension-native-ip
description: IDR Shepherd (Susan Hares) review of draft-ietf-pce-pcep-extension-native-ip-14
published: true
date: 2022-11-27T12:06:59.147Z
tags: 
editor: markdown
dateCreated: 2022-11-27T12:06:59.147Z
---

# Susan Hares Comments on draft-ietf-pce-pcep-extension-native-ip
 
 ## Comments on draft-ietf-pce-pcep-extension-native-ip-14
 
 ### Overview of errors 
- 1) section 6 description of BGP routers needs clarification (sections 6.1, 6.2, and 6.3) for RR and RR Clients
- 2) BGP Session Establish Procedures – are these restrict to RR and RR Clients?
- 3) Explicit routes [section 6.2] – Is ECMP support as well as 1 prefix/1 next Hop?
- 4) IPv4/IPv6 restrictions [section 6.3] – are you restricting the peer session or the AFI/SAFI supported by the Peer session?
- 5) Sections 7, 9, and 10 – may need to change based on your answers to questions 1-4?

### Detailed comments 

1) Section 6 – sub sections 6.1, 6.2 and 6.3.
Problem: The text that describe the BGP peers and the diagram needs clarification on the BGP peering between BGP peers: R1, R7, and R3. If R1 and R7 are Route Reflector clients (RR clients) are attached to the R3 then it is important to indicate this point. If you are using classic route reflection, then R1, R3 and R7 would need to be in the same Autonomous system. The RR (R3) determines what routes are sent to the RR clients.

This problem impacts the text in section 6.1, 6.2, and 6.3
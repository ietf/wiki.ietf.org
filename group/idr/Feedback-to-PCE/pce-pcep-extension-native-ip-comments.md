---
title: IDR Shepherd Comments on draft-ietf-pce-pcep-extension-native-ip
description: IDR Shepherd (Susan Hares) review of draft-ietf-pce-pcep-extension-native-ip-14
published: true
date: 2022-11-27T12:09:43.248Z
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

**1) Section 6 – sub sections 6.1, 6.2 and 6.3.**
Problem: The text that describe the BGP peers and the diagram needs clarification on the BGP peering between BGP peers: R1, R7, and R3. If R1 and R7 are Route Reflector clients (RR clients) are attached to the R3 then it is important to indicate this point. If you are using classic route reflection, then R1, R3 and R7 would need to be in the same Autonomous system. The RR (R3) determines what routes are sent to the RR clients.

This problem impacts the text in section 6.1, 6.2, and 6.3

**2) Text change for Section 6.1 – if R1 and R7 are RR clients.**
Here’s a change if R1 and R7 are Router Reflector Clients.

Current text: /

The PCInitiate message should be sent to PCC which acts as BGP router and route reflector(RR). In the example in Figure 1, it should be sent to R1(M1), R3(M2 & M3) and R7(M4), when R3 acts as RR./

Improved text: /

The PCInitiate message should be sent to PCC which acts as

BGP router reflector or a route reflector client. In the

example in Figure 1, it should be sent to the route reflector clients R1(M1) and R7 (M4), and

the route reflector R3 (M1 or M4). PCInitiate creates an auto-configuration function for these BGP peers providing the indicated Peer AS and the Local/Peer/IP Address. /

**3) Section 6.1 – BGP Session Establishment Pr**

Question: Does the PCEInitiate (message and report) require the RR and RR client structure?

If so, the PCInitiate should have a parameter indicate what type of BGP peer (RR or RR client) each receiving BGP peer should be.

**4) Section 6.2 – Explicit Route Establishment Procedure**
Problem: It is unclear what the impact to the routing system of the setting of explicit route.

Basic Details: (1 Route with 1 Next Hop) If R1 and R7 are RR clients and the Explicit route operates as static route installed by the PCIntiate, then BGP peer will reflected these static routes R3. (R1 (explicit route (static route)) to R3) (R1 (explicit route (static route) to R3)

Setting or clearing the Explicit route seem to map to a setting/clear a static route on the node. If this is true, then this section needs to be rework to clear describe the process.

Your setting the route on the pathway hop by hop is similar to netconf/restconf setting routes in a pathway.

ECMP Details: (1 Route with multiple Next Hop) If the explicit route is a ECMP route with multiple next hop paths, the next hop for a route installed in could be R5 or R2.

If ECMP is allowed, then you need to decide if: a) adding this route allows the route to be installed if only some of the next hops are valid (for example R5 is valid, but R2 is not) b) delete routing allows the route to be deleted if both next hops were not installed.

**5) Section 6.3 =**
Problem: You do not clear indicate the status of BGP peer routers.

If R1 and R7 are BGP route reflector clients, then R1 and R7 will send the route to R3 which will reflect the route to other RR clients (if policy allows).

**6) Section 6.3**
Problem: It is unclear why there is a restriction for IPv4 prefix to be sent only via a IPv4 BGP section, and the IPv6 prefix only via a IPV6 section.

Details: I think the author is trying to describe the peers support for a particular set of AFI/SAFIS for NLRI sent rather than the peering. However, it is unclear.

**7) Sections 7.2 and 7.3**
All of these issues on the intent of the protocol need to be answered before I can provide additional feedback on the PCEP objects.

The initial shape of the PCE discussion are reasonable, but working through the details requires clarity in sections 6.1 to 6.3. For example, support for ECMP in the explicit routes may cause sections 7.3 and 7.4 to be rewritten.

**8) Section 9**
The error handling must consider the RR to RR client distribution of routes. Also, if one PCE overwrites another multiple route are sent from a RR client to the RR. The policy in the RR must be set-up to handle errors.

This section needs a bit of rethinking.

**9) Section 10 - BGP Considerations**
The content of the BGP consideration sections seems reasonable, but it should be reviewed again after all the remainder of the document has been clarified.
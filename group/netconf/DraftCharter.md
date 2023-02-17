---
title: Draft Charter
description: 
published: true
date: 2022-12-16T20:00:37.042Z
tags: 
editor: markdown
dateCreated: 2022-12-16T19:57:18.471Z
---



Network Configuration (netconf)
Charter

Current Status: Active

   Chairs:

   Mehmet Ersue <mersue@…> Mahesh Jethanandani <mjethanandani@…>

  Operations and Management Area Directors:

   Benoit Claise <bclaise@…> Warren Kumari <wkumari@…>

  Operations and Management Area Advisor:

   Benoit Claise <bclaise@…>

Mailing Lists:

   General Discussion: netconf@… To Subscribe: https://www.ietf.org/mailman/listinfo/netconf Archive: https://mailarchive.ietf.org/arch/browse/netconf/

Description of Working Group:

   Configuration of networks of devices has become a critical requirement for operators in today's highly interconnected networks. Large and small operators alike have developed their own mechanisms or have used vendor specific mechanisms to transfer configuration data to and from a device and to examine device state information which may impact the configuration. Each of these mechanisms may be different in various aspects, such as session establishment, user authentication, configuration data exchange, and error responses. NETCONF WG is in charge of developing protocols for managing the network configuration and exchanging management information written in YANG as well as for specifying the necessary framework where these protocols run. NETCONF WG further specifies YANG modules which formalize protocol behavior and are required from protocol perspective.

   The NETCONF protocol (RFC 6241) provides mechanisms to install, manipulate, and delete the configuration of network devices. NETCONF is based on the secure transport (SSH is mandatory to implement while TLS is an optional transport). The NETCONF protocol is data modeling language independent, but YANG (RFC 7950) is the recommended NETCONF modeling language, which introduces advanced language features for configuration management.

   NETCONF WG recently finalized the development of RESTCONF protocol (RFC 8040) which provides an interface over HTTPs for accessing data defined in YANG. RESTCONF is based on the capabilities and uses the datastore concept defined in the NETCONF protocol specification. In support of RESTCONF the YANG-Patch (RFC 8072) mechanism has been provided for applying patches to configuration datastores. The YANG Module Library (RFC 7895) provides information about all YANG modules used by a network management server.

   Last but not least NETCONF and RESTCONF Call Home (RFC 8071) have been developed, which enable a server to initiate a secure connection to a NETCONF or RESTCONF client respectively.

   In the current phase of NETCONF's incremental development the workgroup will focus on following items:

1.    Finalize the YANG data module for a system-level keystore mechanism, that can be used to hold onto asymmetric private keys and certificates that are trusted by the system advertising support for this module. Based on the known dependencies this draft has the highest priority for the WG. 

2.   Finalize Server and Client Configuration YANG modules for both NETCONF and RESTCONF as well as the Client and Server Models for SSH and TLS. 

3.   Finalize the Zero-touch provisioning for NETCONF or RESTCONF-based Management as a technique to establish a secure network management relationship between a newly delivered network device configured with just its factory default settings, and the Network Management System) 

 4.  Provide a revised version of RFC 6536 (NETCONF Access Control Model) by adding support for RESTCONF and the YANG 1.1. constructs like "action" and the "notification" statements. 

 5.  Provide a set of documents enabling advanced notification/ subscription capabilities, which gracefully co-exist in a deployment of RFC 5277. The new capabilities include e.g. transport independence, multiple dynamic and configured subscriptions in a transport session. RFC 5277 will be obsoleted in parallel to the publication of the new document set. Following specifications will be addressed:

- Protocol-neutral notification framework, i.e., explaining the concepts of subscriptions, filters, subscription state notifications, replay, etc. and defining the associated YANG data model, RPCs, etc.
- Definition of notifications sent over NETCONF and HTTP. Examples for the encoding of YANG notifications in XML and JSON will be given, considerations for parallel support and implementation compatibility with RFC-5277 will be included.
- Definition of notifications sent over RESTCONF and HTTP2 and how YANG notifications are encoded in XML and JSON. Include specifics of call-home and heartbeat for subscriptions.
- The subscription and push mechanism for YANG datastores allowing subscriber applications to request updates from a YANG datastore.
- Define transport agnostic notification headers and provide the capability to bundle YANG notifications into a single transport message. 

   
6. Provide a revision for the NETCONF and RESTCONF protocols and the used datastore framework building on the datastore concept in NETMOD revised datastores work. Bug fixing will be done and potential extensions will be added. Provide guidance on how to adapt and use YANG with NETCONF and RESTCONF protocols. NETCONF XML Encoding Rules from RFC 7950 will be moved to RFC6241bis. Depending on the changes in a YANG language revision NETCONF and RESTCONF specifications might be required to adapt. 

7. Define capabilities for NETCONF and RESTCONF to support I2RS protocol and ephemeral-state datastore requirements. 
	Based on the implementation, deployment experience and inter- operability testing, the WG aims to produce a NETCONF status report in a later stage. The result may be clarifications for RFC6241 and RFC6242 and addressing any reported errata.

Goals and Milestones:

   Done Submit NETCONF/RESTCONF Call Home to AD/IESG for consideration as Proposed Standard
   Done Submit YANG Library to AD/IESG for consideration as Proposed Standard
   Done Submit RESTCONF to AD/IESG for consideration as Proposed Standard
    Done Submit YANG Patch to AD/IESG for consideration as Proposed Standard

   May 2017 WGLC for Zero-touch configuration mechanism
   Jun 2017 Submit Zero-touch configuration to AD/IESG for consideration as Proposed Standard
    May 2017 WGLC for system-level keystore mechanism
    Jun 2017 Submit keystore mechanism to AD/IESG for consideration as Proposed Standard
    May 2017 WGLC for Server and Client models for NETCONF and RESTCONF
    Jun 2017 Submit Server and Client Configuration models to AD/IESG for consideration as Proposed Standard
    May 2017 WGLC for Client and Server Models for SSH and TLS
    Jun 2017 Submit Client and Server Models for SSH and TLS to AD/IESG for consideration as Proposed Standard
    Jun 2017 WGLC for RFC 6536bis (NETCONF Access Control Model)
    Jul 2017 Submit RFC 6536bis to AD/IESG for consideration as Proposed Standard
    Jun 2017 WGLC for advanced Notification/Subscription? specifications
    Jul 2017 Submit Notification/Subscription? specifications to AD/IESG for consideration as Proposed Standard
    
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-03-26. It was migrated from the old Trac wiki on 2022-12-16.*
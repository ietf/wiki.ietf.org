---
title: YANG module security considerations
description: 
published: true
date: 2026-01-16T03:09:14.426Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:44:50.512Z
---

# YANG module security considerations
  

Each specification that defines one or more YANG modules MUST contain a section that discusses security considerations relevant to those modules. This section MUST be patterned after the latest approved template (available [below](#x-security-considerations)).

In particular, writable data nodes that could be especially disruptive if abused MUST be explicitly listed by name and the associated security risks MUST be spelled out.

Similarly, readable data nodes that contain especially sensitive information or that raise significant privacy concerns MUST be explicitly listed by name and the reasons for the sensitivity/privacy concerns MUST be explained.

Further, if new RPC operations have been defined, then the security considerations of each new RPC operation MUST be explained.

## X.  Security Considerations

This section is modeled after the template described in Section 3.7.1 of [RFC-to-be draft-ietf-netmod-rfc8407bis].

The "[module-name]" YANG module defines a data model that is designed to be accessed via YANG-based management protocols, such as NETCONF [RFC6241] and RESTCONF [RFC8040]. These YANG-based management protocols (1) have to use a secure transport layer (e.g., SSH [RFC4252], TLS [RFC8446], and QUIC [RFC9000]) and (2) have to use mutual authentication.

The Network Configuration Access Control Model (NACM) [RFC8341] provides the means to restrict access for particular NETCONF or RESTCONF users to a preconfigured subset of all available NETCONF or RESTCONF protocol operations and content.

> Note: [RFC8341] (or a future RFC that replaces it) MUST be listed as a normative reference.
> By default, [RFC4252], [RFC6241], [RFC8040], [RFC8446], [RFC9000], and [RFCAAAA] (or future RFCs that replace any of them) are listed as informative references unless normatively cited in other sections of the document that specifies the YANG module.

### Writable nodes section:

> If the data model contains any writable data nodes (those are all the "config true" nodes), then include the following text:
{.is-info}

There are a number of data nodes defined in this YANG module that are writable/creatable/deletable (i.e., "config true", which is the default).  All writable data nodes are likely to be sensitive or vulnerable in some network environments.  Write operations (e.g., edit-config) and delete operations to these data nodes without proper protection or authentication can have a negative effect on network operations.  The following subtrees and data nodes have particular sensitivities/vulnerabilities:

> If the data model contains any particularly sensitive data nodes, e.g., ones that might be protected by a "nacm:default-deny-write" or a "nacm:default-deny-all" extensions statement, then those subtrees and data nodes must be listed, with an explanation of the associated security risks with a focus on how they can be disruptive if abused. Otherwise, state:
> "There are no particularly sensitive writable data nodes."
<!-- {blockquote:.is-info} -->

### Readable nodes section:
> If the data model contains any readable data nodes (i.e., those that are "config false" nodes, but also all other nodes, because they can also be read via operations like get or get-config), then include the following text:
{.is-info}

Some of the readable data nodes in this YANG module may be considered sensitive or vulnerable in some network environments.  It is thus important to control read access (e.g., via get, get-config, or notification) to these data nodes. Specifically, the following subtrees and data nodes have particular sensitivities/vulnerabilities:

> You must evaluate whether the data model contains any readable data nodes (those are all the "config false" nodes, but also all other nodes, because they can also be read via operations like get or get-config) are particularly sensitive or vulnerable (e.g., if they might reveal customer information or violate personal privacy laws). Typically, particularly sensitive readable data nodes are ones that might be protected by a "nacm:default-deny-read" or a "nacm:default-deny-all" extensions statement. Otherwise, state: 
> "There are no particularly sensitive readable data nodes."
<!-- {blockquote:.is-info} -->


### RPC/action operations section:
> If the data model contains any RPC or action operations, then include the following text:
{.is-info}

Some of the RPC or action operations in this YANG module may be considered sensitive or vulnerable in some network environments. It is thus important to control access to these operations. Specifically, the following operations have particular sensitivities/ vulnerabilities:

> If the data model contains any particularly sensitive RPC or action operations, then those operations must be listed here, along with an explanation of the associated specific sensitivity or vulnerability concerns. Otherwise, state: 
>"There are no particularly sensitive RPC or action operations."
<!-- {blockquote:.is-info} -->


### Reusable groupings from other modules section:
> If the data model reuses groupings from other modules and the document that specifies these groupings also includes those as data nodes, then add this text to remind the specific sensitivity or vulnerability of reused nodes.
{.is-info}

This YANG module uses groupings from other YANG modules that define nodes that may be considered sensitive or vulnerable in network environments. Refer to the Security Considerations of [RFC-insert-numbers] for information as to which nodes may be considered sensitive or vulnerable in network environments.

### No data nodes section:
> If the data model does not define any data nodes (i.e., none of the above sections or readable/writable data nodes or RPCs have been included), then add the following text:
{.is-info}

The YANG module defines a set of identities, types, and groupings. These nodes are intended to be reused by other YANG modules. The module by itself does not expose any data nodes that are writable, data nodes that contain read-only state, or RPCs. As such, there are no additional security issues related to the YANG module that need to be considered.

Modules that use the groupings that are defined in this document should identify the corresponding security considerations. For example, reusing some of these groupings will expose privacy-related information (e.g., 'node-example').



### Change log:
  * Approved by security ADs on 2010-06-16 and on 2013-05-08.
  * Minor editorial changes on 2016-06-03 and RESTCONF addition on 2017-03-16.
  * Minor editorial change on 2017-12-21.
  * Update from RFC6536 to RFC8341 on 2018-07-02.
  * Update from RFC5246 to RFC8446 - [WK - 2018-10-08 ]
  * Nit: 'writeable data nodes' -> 'writable data nodes' - [WK: 2018-10-18 ] 
  * Updated the page based on rfc8407bis updates [MJ:2025-04-01]
  * Nit: Fixed blockquote formatting [JM:2025-05-14]
  * Added note about normative and informative references [JM:2025-07-23]
  * Nit: clarified cross references [JM:2025-07-23]
  
  

&nbsp;
&nbsp;
&nbsp;

---

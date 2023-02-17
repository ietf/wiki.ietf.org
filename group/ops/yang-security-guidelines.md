---
title: YANG module security considerations
description: 
published: true
date: 2022-12-20T00:44:54.065Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:44:50.512Z
---

# YANG module security considerations
  

   Each specification that defines one or more YANG modules MUST contain a section that discusses security considerations relevant to those modules. This section MUST be patterned after the latest approved template (available at http://trac.tools.ietf.org/area/ops/trac/wiki/yang-security-guidelines).

In particular, writable data nodes that could be especially disruptive if abused MUST be explicitly listed by name and the associated security risks MUST be spelled out.

Similarly, readable data nodes that contain especially sensitive information or that raise significant privacy concerns MUST be explicitly listed by name and the reasons for the sensitivity/privacy concerns MUST be explained.

Further, if new RPC operations have been defined, then the security considerations of each new RPC operation MUST be explained.

X.  Security Considerations

The YANG module specified in this document defines a schema for data that is designed to be accessed via network management protocols such as NETCONF [RFC6241] or RESTCONF [RFC8040]. The lowest NETCONF layer is the secure transport layer, and the mandatory-to-implement secure transport is Secure Shell (SSH) [RFC6242]. The lowest RESTCONF layer is HTTPS, and the mandatory-to-implement secure transport is TLS [RFC 8446].

The Network Configuration Access Control Model (NACM) [RFC8341] provides the means to restrict access for particular NETCONF or RESTCONF users to a  preconfigured subset of all available NETCONF or RESTCONF protocol operations and content. 


   -- if you have any writable data nodes (those are all the -- "config true" nodes, and remember, that is the default) -- describe their specific sensitivity or vulnerability.

There are a number of data nodes defined in this YANG module that are writable/creatable/deletable (i.e., config true, which is the default).  These data nodes may be considered sensitive or vulnerable in some network environments.  Write operations (e.g., edit-config) to these data nodes without proper protection can have a negative effect on network operations.  These are the subtrees and data nodes and their sensitivity/vulnerability:

   <list subtrees and data nodes and state why they are sensitive>

   -- for all YANG modules you must evaluate whether any readable data -- nodes (those are all the "config false" nodes, but also all other -- nodes, because they can also be read via operations like get or -- get-config) are sensitive or vulnerable (for instance, if they -- might reveal customer information or violate personal privacy -- laws such as those of the European Union if exposed to -- unauthorized parties)

   Some of the readable data nodes in this YANG module may be considered sensitive or vulnerable in some network environments. It is thus important to control read access (e.g., via get, get-config, or notification) to these data nodes.  These are the subtrees and data nodes and their sensitivity/vulnerability:

   `<list subtrees and data nodes and state why they are sensitive>`

   -- if your YANG module has defined any rpc operations -- describe their specific sensitivity or vulnerability.

Some of the RPC operations in this YANG module may be considered sensitive or vulnerable in some network environments.  It is thus important to control access to these operations.  These are the operations and their sensitivity/vulnerability:

   `<list RPC operations and state why they are sensitive>`

Note: [RFC 8446], [RFC6241], [RFC6242], [RFC8341], and [RFC8040] must be "normative references".


### Change log:
  * Approved by security ADs on 2010-06-16 and on 2013-05-08.
  * Minor editorial changes on 2016-06-03 and RESTCONF addition on 2017-03-16.
  * Minor editorial change on 2017-12-21.
  * Update from RFC6536 to RFC8341 on 2018-07-02.
  * Update from RFC5246 to RFC8446 - [WK - 2018-10-08 ]
  * Nit: 'writeable data nodes' -> 'writable data nodes' - [WK: 2018-10-18 ] 
  
  

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-10-18. It was migrated from the old Trac wiki on 2022-12-19.*
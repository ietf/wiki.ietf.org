---
title: Draft IETF OSPF OSPFV3
description: 
published: true
date: 2023-01-10T23:19:57.626Z
tags: 
editor: markdown
dateCreated: 2023-01-10T23:19:54.059Z
---

# Implementations of draft-ietf-ospf-ospfv3-lsa-extend 
This web page has the results of a survey of the implementations of OSPFv3 LSA Extensions [draft-ietf-ospf-ospfv3-lsa-extend](https://datatracker.ietf.org/doc/html/rfc8362) which is an OSPFv3 [RFC5340] that extends the LSA format by encoding the existing OSPFv3 LSA information in Type-Length-Value (TLV) tuples and allowing advertisement of additional information with additional TLVs. There are currently 2 implementations of the draft.

### Nokia Implementation - Dirk Goethals
1. Does your implementation support for all 9 OSPFv3 Extended LSAs? **Yes**
2. Does your implementation support for N-Bit Prefix Option? **Yes**
3. Does your implementation support OSPFv3 Extended LSAs across the entire routing domain? **Yes**
4. Does your implementation support per-area deployment of OSPF Extended LSAs (AS-External LSAs are legacy)? **OSPFv3 in legacy mode can enable extended LSA per area, but OSPFv3 in extended mode cannot support legacy LSAs per area.**
5. Does your implementation support full deployment of OSPFv3 Extended LSAs? **Yes**
6. Does your implementation support sparse mode deployment of OSPFv3 Extended LSAs? **Yes, by default**
7. Does your implementation support any applications that make use of OSPFv3 Extended LSAs (e.g., Segment Routing)? **Segment Routing is supported but not generally available yet**
8. Have you done any interoperability testing with other implementations? **No - other LSA encodings with Spirent and Ixia**

**Summary**: Nokia supports of a complete implementation of OSPFv3 Extended LSAs supporting both extended and legacy mode. Segment Routing is supported.

### Huawei Implementation - Veerendranatha Reddy Vallem
1. Does your implementation support for all 9 OSPFv3 Extended LSAs? **No - E-Router-LSA, E-Intra-Area-LSA, and E-Inter-Area-LSA are supported**
2. Does your implementation support for N-Bit Prefix Option? **Yes**
3. Does your implementation support OSPFv3 Extended LSAs across the entire routing domain? **No**
4. Does your implementation support per-area deployment of OSPF Extended LSAs (AS-External LSAs are legacy)? **No**
5. Does your implementation support full deployment of OSPFv3 Extended LSAs? **Yes**
6. Does your implementation support sparse mode deployment of OSPFv3 Extended LSAs? **No**
7. Does your implementation support any applications that make use of OSPFv3 Extended LSAs (e.g., Segment Routing)? **Yes - Segment Routing**
8. Have you done any interoperability testing with other implementations? **No**

**Summary**: Huawei supports of a sparse mode implementation of OSPFv3 Extended LSAs supporting extended LSAs for applications beyond basic OSPF route computation. E-Router-LSAs, E-Intra-Area-LSAs, and E-Inter-Area-LSAs are used to support segment routing [draft-ietf-ospf-ospfv3-segment-routing-extensions](http://tools.ietf.org/html/draft-ietf-ospf-ospfv3-segment-routing-extensions).

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-10-30. It was migrated from the old Trac wiki on 2023-01-10.*
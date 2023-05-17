---
title: IX-RS Section 2.2
description: 
published: true
date: 2023-03-13T05:17:22.207Z
tags: 
editor: markdown
dateCreated: 2023-03-13T05:16:37.989Z
---

# IXP RS Section 2.2

  Functionality:

  -  Therefore, contrary to what is specified in section 5. of [RFC4271], route servers SHOULD NOT by default (unless explicitly configured) update well-known BGP attributes received from route server clients before redistributing them to their other route server clients. 

 -   Optional recognized and unrecognized BGP attributes, whether transitive or non-transitive, SHOULD NOT be updated by the route server (unless enforced by local IX operator configuration) and SHOULD be passed on to other route server clients. 
 
 | Implementation  |  SHOULD NOT Update Well-known BGP Attributes  |  SHOULD not update optional Recognized transitive or non-transitive  |  Should not update unrecognized optional transitive or non-transitive   |
|-----------------|-----------------------------------------------|----------------------------------------------------------------------|-------------------------------------------------------------------------|
|  Cisco          |  yes                                          |  yes                                                                 |  yes                                                                    |
|  BIRD           |  Yes                                          |  yes                                                                 |  yes                                                                    |
|  Quagga         |  yes                                          |  yes                                                                 |  yes                                                                    |

## Section 2.2.1 NEXT_HOP Attribute

Functionality: As the route server does not participate in the

   actual routing of traffic, the NEXT_HOP attribute MUST be passed unmodified to the route server clients, similar to the "third party" next hop feature described in section 5.1.3. of [RFC4271].


| Implementation  |  Support   |
|-----------------|------------|
|  Cisco          |  yes       |
|  BIRD           |  Yes       |
|  Quagga         |  yes       |

## Section 2.2.2 AS_PATH Attribute

Functionality: the route server SHOULD NOT prepend its own AS number to the AS_PATH segment nor modify the AS_PATH segment in any other way. 

| Implementation  |  Support   |
|-----------------|------------|
|  Cisco          |  yes       |
|  BIRD           |  Yes       |
|  Quagga         |  yes       |

## Section 2.2.3 MULTI_EXIT_DISC Attribute

Functionality: Contrary to section 5.1.4 of [RFC4271], if applied to an NLRI UPDATE sent to a route server, this attribute SHOULD be propagated to other route server clients and the route server SHOULD NOT modify its value.

| Implementation  |  Support SHOULD Propagate  |  Support SHOULD NOT modify   |
|-----------------|----------------------------|------------------------------|
|  Cisco          |  yes                       |  yes                         |
|  BIRD           |  Yes                       |  yes                         |
|  Quagga         |  yes                       |  yes                         |

## Section 2.2.4 Communities Attributes

Functionality: Transitive as well as non-transitive

   Communities attributes applied to an NLRI UPDATE sent to a route server SHOULD NOT be modified, processed or removed. However, if such an attribute is intended for processing by the route server itself, it MAY be modified or removed.
   
   | Implementation  |  Support SHOULD NOT   |  Support May   |
|-----------------|-----------------------|----------------|
|  Cisco          |  yes                  |  ?             |
|  BIRD           |  Yes                  |  ?             |
|  Quagga         |  yes                  |  ?             |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-19. It was migrated from the old Trac wiki on 2023-03-12.*

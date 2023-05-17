---
title: Section 2: How to Identify a Path
description: 
published: true
date: 2023-03-13T07:52:25.910Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:51:08.420Z
---

# Add Paths Implementation Report Details
## Section 2: How to Identify a Path

 -   2.1: Base Behavior
 -   2.2: Path Identifier Assignment
 -   2.3: Path Identifier Assignment - (prefix, path identifier) pair
 -   2.4: Route Re-advertisement
 -   2.5: Received Path Identifier 

### 2.1: Base Behavior

Functionality: Is your implementation compatible with the use of the Path Identifier as described in this section?

   RFC2119: Not applicable

| Implementation | Support | Comments  |
|----------------|---------|-----------|
| Cumulus        |     Yes |           |
|  Cisco         |     Yes |           |
|  Exa           |     Yes |           |
|  Juniper       |     Yes |           |
|  ALU           |     Yes |           |
|  CZ.NIC        |     Yes |           |
|  freeRouter    |     Yes |           |

### 2.2: Path Identifier Assignment

Functionality: Explain how Path Identifiers are assigned in your implementation.

   [RFC2119]: Not applicable



|  Implementation  |  Comments                                                                                                                                     |
|------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
|  Cumulus         |  quagga is RX only for now so this is not an issue                                                                                            |
|  Cisco           |  Each net has unique path-id per paths under it. The path ids that are withdrawn can get assigned to the newer paths.                         |
|  Exa             |  By the user                                                                                                                                  |
|  Juniper         |  Incrementally assign an id based on the N+1 of the max(N) of the path ids already assigned.                                                  |
|  ALU             |  Path IDs are per address  family. Every new advertised path uses the next available path ID (in  sequential order) for the address family.   |
|  CZ.NIC          |  Each route source (like add_path-unaware BGP peer) has allocated fixed path id.                                                              |
|  freeRouter      |  Incrementally assigned for each path                                                                                                         |

### 2.3: Path Identifier Assignment Question 2

Functionality: "...the Path Identifier MUST be assigned in such a way that the BGP speaker is able to use the (prefix, path identifier) to uniquely identify a path advertised to a neighbor."

Question: Can your implementation uniquely identify an advertised path based on the (prefix, path identifier) pair?

   [RFC2119]: MUST

| Implementation   |  Support |  Comment                                              |
|------------------|---------:|-------------------------------------------------------|
|  Cumulus         |  Yes     |                                                       |
|  Cisco           |  Yes     |                                                       |
|  Exa             |  Other   |  This is left to the user of the application to do.   |
|  Juniper         |  Yes     |                                                       |
|  ALU             |  Yes     |                                                       |
|  CZ.NIC          |  Yes     |                                                       |
|  freeRouter      |  Yes     |                                                       |

### 2.4: Route Re-advertisement

Functionality: "A BGP speaker that re-advertises a route MUST generate its own Path Identifier to be associated with the re-advertised route."

Question: Does your implementation generate a new Path Identifier when re-advertising a route?

   [RFC2119]: MUST

| Implementation   |  Support |  Comment                                                                                        |
|------------------|---------:|-------------------------------------------------------------------------------------------------|
|  Cumulus         |  Other   |  quagga does not support TX yet                                                                 |
|  Cisco           |  Yes     |                                                                                                 |
|  Exa             |  Other   |   ExaBGP does not re-advertise routes                                                           |
|  Juniper         |  Yes     |                                                                                                 |
|  ALU             |  Yes     |                                                                                                 |
|  CZ.NIC          |  Other   |  New path_id is allocated for each unique path_id received through add_path-aware BGP session.  |
|  freeRouter      |  Yes     |                                                                                                 |

### 2.5: Received Path Identifier

Functionality: "A BGP speaker that receives a route SHOULD NOT assume that the identifier carries any particular semantics; it SHOULD be treated as an opaque value."

Question: Does your implementation treat a received Path Identifier as an opaque value?

   [RFC2119]: SHOULD NOT
   
   |  Implementation  |  Support |  Comment   |
|------------------|---------:|------------|
|  Cumulus         |  Yes     |            |
|  Cisco           |  Yes     |            |
|  Exa             |  Yes     |            |
|  Juniper         |  Yes     |            |
|  ALU             |  Yes     |            |
|  CZ.NIC          |  Yes     |            |
|  freeRouter      |  Yes     |            |


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-03-12.*

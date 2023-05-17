---
title: Add Path Section 5.2: ADD Path Implicit Replacement
description: 
published: true
date: 2023-02-21T06:03:20.387Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:03:15.841Z
---

 Functionality: "...a new advertisement for a given address prefix and a given path identifier replaces a previous advertisement for the same address prefix and path identifier."

Does your implementation replace previous advertisements with the same (prefix, path identifier) pair?

   RFC2119: not applicable

| Implementation  |  Yes or No  |  Comment                           |
|-----------------|-------------|------------------------------------|
|      Cumulus    |  Yes        |                                    |
|  Cisco          |  Yes        |                                    |
|  Exa            |  Other      |  ExaBGP does not implement a FIB   |
|  Juniper        |  Yes        |                                    |
|  ALU            |  Yes        |                                    |
|  CZ.NOC         |  Yes        |                                    |
|  freeRouter     |  Yes        |                                    |


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*
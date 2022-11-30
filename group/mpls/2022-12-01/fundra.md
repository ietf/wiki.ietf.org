---
title: A page there I take a look at "back to MPLS approach"
description: Describing label stack and functions
published: true
date: 2022-11-30T14:06:48.460Z
tags: 
editor: markdown
dateCreated: 2022-11-30T14:06:48.460Z
---

# Back to MPLS
Recent discussion have brought the argument the MNA should be be done "the MPLS way", one way that be tested is model it the same way as we did with multi-cast, i.e. dual labels, one for forwarding and one "modifier" that tells which action(s) that should be performed.

# MNA Labels
Tentatively the SPL allocation for MNA are abandoned, instead we use labels from the labels we normally allocate for LSPs, by signaling or configuration.
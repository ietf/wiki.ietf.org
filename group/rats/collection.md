---
title: RATS WG - Collection
description:
published: true
date: 2026-07-19T19:00:00.607Z
tags:
editor: markdown
dateCreated: 2026-07-19T19:00:00.607Z
---

This is part of the [RATS Atomic Composite](atomic-composites) visual language.

A Collection connector describes the collection of Conceptual Messages.

~~~ aasvg
  .------------.
  |   Binder   |
  '-+--------+-'
    |        |
    v        v
    |        |
   -+-      -+-
    |        |
  .-+-.    .-+-.
  | A |    | B |
  '---'    '---'
~~~
![Atom - Collection](atom-collection.svg "Atom: Collection")

A lead Attester is responsible for the binding function.

A binder is one of:

* Signature of the lead Attester
* Projection

The signature of the lead Attester can bind over a broadcast nonce.

A Projection is described as a topo-sorted set of `(src, dst)` tuples.


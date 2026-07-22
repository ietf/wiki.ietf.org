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

The Depends-on connector describes a chain of trust between two adjacent Attesters within a layered attester arrangement.
Examples of such an arrangement include DICE {{TCG-DICE}} and Arm CCA {{-arm-cca}} in delegated mode.

It is represented by an arrow connector pointing from the dependent node to the dependent node, i.e. from the "higher" to the "lower" component in the chain of trust.

~~~ aasvg
     .---.
     | B |
     '-+-'
       | depends-on
       v
     .-+-.
     | A |
     '---'
~~~
![Atom - Depends-On](atom-dependson.svg "Atom: Depends On")

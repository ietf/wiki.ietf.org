---
title: RATS WG - Example CCA Delegation
description:
published: true
date: 2026-07-19T19:00:00.607Z
tags:
editor: markdown
dateCreated: 2026-07-19T19:00:00.607Z
---

This is part of the [RATS Atomic Composite](atomic-composites) visual language.

~~~ aasvg
    -+- RSI ABI (nonce[64])
     |
 .---+------.
 | TE: wkl  |
 +----------+ Realm
 | AK: RAK  |
 '---+------'
     | depends-on
     v
 .---+------.
 | TE: RMM  |
 +----------+ Platform
 | AK: CPAK |
 '----------'
~~~

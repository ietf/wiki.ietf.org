---
title: RATS WG - Example Class 1 Attester
description:
published: true
date: 2026-07-19T19:00:00.607Z
tags:
editor: markdown
dateCreated: 2026-07-19T19:00:00.607Z
---

This is part of the [RATS Atomic Composite](atomic-composites) visual language.

~~~ aasvg
    -+- API
     |
 .---+-----.
 | TE: A   |      .---------------.
 +---------+----->| Binding=?     |
 | AK: LAK |      '-+-----------+-'
 '---------'        |           |
                 .--+------. .--+-------.
                 | TE: B   | | TE: C    |
                 +---------+ +----------+
                 | AK: BK  | | AK: CK   |
                 '---------' '----------'
~~~

Notes:

1. A seems to have both lead and "normal" attester functionality
2. Binding between collection entries is unspecified
3. is CMW signed or not?

Questions:

1. scope of LAK: the signing key over the collection CMW, or signing key over Target A, or both?

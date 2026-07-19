---
title: RATS WG - Example Class 2 Attester
description:
published: true
date: 2026-07-19T19:00:00.607Z
tags:
editor: markdown
dateCreated: 2026-07-19T19:00:00.607Z
---

This is part of the [RATS Atomic Composite](atomic-composites) visual language.

~~~ aasvg

.-----------.
| Verifier  |
'-+---------'
  |       ^             |   .-.
  v       |       .---->+--+ B |
.---------+-.     |     |   '-'
|    RP     +-----+
+-----------+     |     |   .-.
| Conveyer  |     '---->+--+ C |
'-----+-----'           |   '-'
      |          .-.
      |         | A |
      |          '+'
      |           |
     -+-         -+-
      |           |
      ^           ^
      |           |
    .-+-----------+-.
    | Binding=?     |
    '------+--------'
           |
        .--+-------.
        | TE: <>   |
        +----------+
        | AK: LAK  |
        '--+-------'
           |
          -+-
~~~

Questions and notes are the same as Class 1.

Besides, there are further questions:

1. a question whether a lead attester is in front of B and C
2. a question about unnecessary conflation of RP/Verifier and Lead attester -- they probably need to be modelled as separate entities

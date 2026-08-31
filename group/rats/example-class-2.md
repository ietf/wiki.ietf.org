---
title: RATS WG - Example Class 2 Attester
description: 
published: true
date: 2026-08-31T15:36:19.524Z
tags: 
editor: markdown
dateCreated: 2026-07-22T06:28:01.509Z
---

This is part of the [RATS Atomic Composite](atomic-composites) visual language.

~~~ aasvg
.-----------.
| Verifier  |
'---------+-'
  ^       |             |   .-.
  |       V       .---->+--+ B |
.-+-------+-.     |     |   '-'
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
![Example Class 2 - Attester](class-2-example.svg "Class 2 Example")

Questions and notes are the same as Class 1.

Besides, there are further questions:

1. a question whether a lead attester is in front of B and C
2. a question about unnecessary conflation of RP/Verifier and Lead attester -- they probably need to be modelled as separate entities

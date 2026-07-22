---
title: RATS WG - Example Class 0 Attester
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
 | TE: TE  |
 +---------+
 | AK: LAK |
 '---------'
~~~
![Example Class 0A - Attester](class-0-exampleA.svg "Class 0A Example")

Or

~~~ aasvg
    -+- API
     |
 .---+-----.
 | TE: <>  |      .---------------.
 +---------+----->| <>            |
 | AK: LAK |      '-+-----------+-'
 '---------'        |           |
                 .--+------. .--+-------.
                 | TE: VGA | | TE: SCSI |
                 +---------+ +----------+
                 | AK: <>  | | AK: <>   |
                 '---------' '----------'
~~~
![Example Class 0B - Attester](class-0-exampleB.svg "Class 0B Example")

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

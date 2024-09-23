---
title: sandbox
description: sandbox
published: true
date: 2024-09-23T14:34:13.589Z
tags: w3c
editor: markdown
dateCreated: 2022-07-23T19:47:08.101Z
---

> is-info test
{.is-info}

> is-warning test
{.is-warning}


```
                 +----------+
                 | List of  |+
                 | valid    ||
                 | PSAP ids ||
                 +----------+|
                  +----------+
                      *
                      * whitelist
                      *
                      V
   Incoming      +----------+    Normal
   SIP Msg       | SIP      |+   Treatment
  -------------->| Entity   ||=============>
   + Identity    |          ||(if not in whitelist)
                 +----------+|
                 +----------+
                      ||
                      ||
                      || Preferential
                      || Treatment
                      ++=============>
                        (in whitelist)

```
---




https://datatracker.ietf.org/meeting/interim-2024-eodir-03/materials/agenda-interim-2024-eodir-03-eodir-01-00
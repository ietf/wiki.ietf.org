---
title: sandbox
description: sandbox
published: true
date: 2025-03-04T12:50:54.085Z
tags: w3c
editor: markdown
dateCreated: 2022-07-23T19:47:08.101Z
---

https://datatracker.ietf.org/meeting/interim-2024-eodir-03/materials/agenda-interim-2024-eodir-03-eodir-01-00

---


| **Time** | **Meeting Name** | **Area** | **Contact** | **Meeting Description** | **Conferencing Link** | **.ics** |
|----------|------------------|----------|-------------|-------------------------|----------------------|-----------------------|----------|
|  -07:30  |   NOT AVAILABLE  |   NOT AVAILABLE  |   NOT AVAILABLE  |   https://datatracker.ietf.org/meeting/interim-2024-eodir-03/materials/agenda-interim-2024-eodir-03-eodir-01-00 |  NOT AVAILABLE |   NOT AVAILABLE  |
|  08:00   |   NOT AVAILABLE  |   NOT AVAILABLE  |  NOT AVAILABLE  |  NOT AVAILABLE         |     NOT AVAILABLE   |   NOT AVAILABLE   |   
|  08:30   |   NOT AVAILABLE  |  NOT AVAILABLE  |   NOT AVAILABLE  |  NOT AVAILABLE           |  NOT AVAILABLE    |  NOT AVAILABLE     | 
|  09:00   |  NOT AVAILABLE  | NOT AVAILABLE |  NOT AVAILABLE  |  NOT AVAILABLE          |   NOT AVAILABLE  |   NOT AVAILABLE    |  
|  09:30   |  NOT AVAILABLE  |  NOT AVAILABLE | NOT AVAILABLE  |  NOT AVAILABLE        |    NOT AVAILABLE   |  NOT AVAILABLE     | 


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


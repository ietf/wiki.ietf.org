---
title: RTG Conflict
description: 
published: true
date: 2023-01-30T04:27:36.636Z
tags: 
editor: markdown
dateCreated: 2023-01-30T04:27:30.015Z
---

# Avoiding Conflicts in Scheduling at IETF Meetings
This page is to try to track which meetings must not and which meetings can be scheduled together at an IETF meeting. We'll just worry about other Routing Area working groups for now.

Please enter details for your working group in **the row identified by the name of your WG** understanding that the opinion about conflicts might not be viewed symmetrically.

Use the following notation:

- 1 This is a first level conflict (such as WG chairs or a substantial number of participants) and must be avoided
- 2 This is a second level conflict (such as document authors, and core contributors) and should be avoided
- 3 This is a third level conflict (such as a small number of interested/active parties) and would be nice to avoid
- "+" This conflict is completely harmless
In case you wondered what you asked for at IETF-92 you can find it [here](https://datatracker.ietf.org/meeting/92/requests), but you might do better to start with a clean sheet.

| BESS    | BFD  | BIER | CCAMP | I2RS  | IDR  | ISIS | L2TPEXT | LISP    | MANET | MPLS  | NVO3 | OSPF | PALS | PCE  | PIM | ROLL | RTGWG | SFC   | SIDR | SPRING | TEAS   | TRILL | SDNRG | NFVRG |       |
|---------|------|------|------:|-------|------|------|---------|---------|-------|-------|------|------|------|------|-----|------|-------|-------|------|--------|--------|-------|-------|-------|-------|
| BESS    |   X  |   +  |       |   +   |   3  |   1  |    +    | 3       |   +   |   +   |   2  |   2  |   +  |   1  |  +  |   2  |   +   |   2   |   1  |    1   |    2   |   +   | 3     | 3     | +     |
| BFD     |   2  |   X  |   1   |   3   |   1  |   1  |    2    |    2    |   +   |   +   |   1  |   2  |   2  |   2  |  +  |   +  |   +   |   2   |   1  |    +   |    1   |   2   |   2   |   3   |   3   |
| BIER    |      |      |   X   |       |      |      |         |         |       |       |      |      |      |      |     |      |       |       |      |        |        |       |       |       |       |
| CCAMP   |   3  |   +  |       |   X   |   3  |   1  |    3    |         |       |   +   |   1  |   +  |   2  |   2  |  1  |   +  |   +   |   1   |   3  |    +   |    1   |   1   |       |       |       |
| I2RS    |   1  |   1  |       |   +   |   X  |   1  |    +    |         |       |   +   |   +  |   3  |   3  |   +  |  +  |   +  |   +   |   2   |   3  |    2   |    +   |   3   |       |       |       |
| IDR     |   1  |   1  |       |   +   |   1  |   X  |    +    |         |       |   +   |   +  |   2  |   +  |   +  |  +  |   +  |   +   |   3   |   +  |    1   |    1   |   1   |       |       |       |
| ISIS    |   +  |   3  |   2   |   +   |   +  |   3  | X       |    +    |   +   |   +   |   +  |   +  |   1  |   +  |  +  |   +  |   +   |   2   |   +  |    +   |    1   |   +   |   3   |   +   |   +   |
| L2TPEXT |   +  | 2    |       | +     | +    | +    | +       |    X    | 3     | +     | 2    | 3    | +    | 1    | +   | +    | +     | 1     | 1    | +      | +      | +     | +     |       |       |
| LISP    |   3  |   +  |       |   +   |   1  |   2  |    +    |    3    |   X   |   +   |   +  |   1  |   2  |   +  |  +  |   1  |   +   |   1   |   1  |    1   |    2   |   1   |   +   |   1   |   1   |
| MANET   |   +  |   +  |       |   +   |   +  |   +  | +       |         |       |   X   |   +  |   +  |   2  |   +  |  +  |   3  |   2   |   2   |   +  |    +   |    3   |   +   |       |       |       |
| MPLS    |   1  |   1  | 1     |   1   |   3  |   1  | 3       | 3       |   3   |   +   |   X  |   2  |   3  |   1  |  1  |   +  |   +   |   2   |   2  |    3   |    2   |   1   | +     | +     | +     |
| NVO3    |   1  |   3  |       |   +   |   2  |   3  | 3       |         |       |   +   |   3  |   X  |   3  |   1  |  3  |   3  |   +   |   1   |   1  |    +   |    2   |   2   |       |       |       |
| OSPF    |   2  |   +  | 1     |   2   |   2  |   1  | 1       |         |       |   +   |   +  |   +  |   X  |   +  |  +  |   1  |   +   |   1   |   +  |    +   |    1   |   2   | +     | 3     | +     |
| PALS    |   1  |   2  |   +   |   1   |   2  |   +  |    +    |    1    |   +   |   +   |   1  |   1  |   +  |   X  |  2  |   +  |   +   |   1   |   1  |    +   |    1   |   1   |   +   |   1   |   1   |
| PCE     |   3  |   3  |   3   |   1   |   1  |   2  | 2       |    +    |   +   |   3   |   1  |   +  |   2  |   2  |  X  |   +  |   3   |   2   |   2  |    +   |    1   |   1   |   +   |   3   |   2   |
| PIM     |   1  |   +  |       |   +   |   3  |   +  |    +    |         |       |   3   |   1  |   +  |   +  |   +  |  +  |   X  |   +   |   2   |   +  |    3   |    +   |   +   |       |       |       |
| ROLL    |   +  |   +  | 3     |   +   |   +  |   +  | +       |         |       |   3   |   +  |   +  |   +  |   +  |  2  |   +  |   X   |   3   |   +  |    +   |    +   |   +   |       |       |       |
| RTGWG   |   3  |   +  |       |   3   |   +  |   3  | 2       |         |       |   +   |   +  |   +  |   2  |   2  |  +  |   3  |   +   |   X   |   +  |    +   |    1   |   +   |       |       |       |
| SFC     |   1  |   +  |       |   +   |   1  |   +  | +       |         |       |   +   |   +  |   1  |   +  |   +  |  2  |   +  |   +   |   2   |   X  |    +   |    1   |   +   |       |       |       |
| SIDR    |   +  |   2  |       |   +   |   2  |   1  | 3       |         |       |   +   |   +  |   +  |   3  |   +  |  +  |   +  |   +   |   +   |   +  |    X   |    2   |   +   | 3     |       |       |
| SPRING  |   2  |   +  |   +   |   +   |   3  |   1  |    2    |    +    |   +   |   +   |   2  |   +  |   2  |   2  |  3  |   +  |   +   |   2   |   3  |    +   |    X   |   3   |   +   |   +   |   +   |
| TEAS    |   3  |   3  |       |   1   |   2  |   2  | 3       |         |       |   +   |   1  |   2  |   1  |   3  |  1  |   +  |   +   |   2   |   3  |        |    3   |   X   |       |       |       |
| TRILL   |      |      |       |       |      |      |         |         |       |       |      |      |      |      |     |      |       |       |      |        |        |       | X     |       |       |
|         | BESS | BFD  | BIER  | CCAMP | I2RS | IDR  | ISIS    | L2TPEXT | LISP  | MANET | MPLS | NVO3 | OSPF | PALS | PCE | PIM  | ROLL  | RTGWG | SFC  | SIDR   | SPRING | TEAS  | TRILL | SDNRG | NFVRG |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-04-20. It was migrated from the old Trac wiki on 2023-01-29.*
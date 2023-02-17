---
title: RTP Media Congestion Avoidance Techniques (RMCAT)
description: 
published: true
date: 2022-12-21T04:23:36.022Z
tags: 
editor: markdown
dateCreated: 2022-12-21T04:23:31.970Z
---

# RTP Media Congestion Avoidance Techniques (RMCAT)

This is **not** the actual WG charter. That can be found [here](https://datatracker.ietf.org/group/rmcat/about/). This page rearranges the charter text **by deliverable**, so we have all the information about each deliverable in one place.

Each section below is named with a tag for each deliverable. These tags will also be used as "components" for the various trac tickets that track their progress.

In the sections below, text in italics are comments or additions to the charter text by the chairs.

## cc-requirements

|                       |                                                                                   |
|-----------------------|-----------------------------------------------------------------------------------|
| **Charter title**    |  Requirements for congestion control algorithms for interactive real time media   |
| **Intended status** |  Informational RFC                                                                |
| **Goals**           |  Adopt Dec 2012, Submit Mar 2014                                                  |

Develop a clear understanding of the congestion control requirements for RTP flows, and document deficiencies of existing mechanisms such as TFRC with regards to these requirements. This must be completed prior to finishing any Experimental algorithm specifications (#cc-cand).

The set of requirements for such an algorithm includes, but is not limited to:

 -   Low delay and low jitter for the case where there is no competing traffic using other algorithms
 -   Reasonable share of bandwidth when competing with RMCAT traffic, other real-time media protocols, and ideally also TCP and other protocols. A 'reasonable share' means that no flow has a significantly negative impact [RFC5033] on other flows and at minimum that no flow starves.
 -   Effective use of signals like packet loss and ECN markings to adapt to congestion 

The work will be guided by the advice laid out in RFC 5405 (UDP Usage Guidelines), RFC 2914 (congestion control principles), and RFC5033 (Specifying New Congestion Control Algorithms).

## eval-criteria
|                   |                                                                                          |
|-------------------|------------------------------------------------------------------------------------------|
| **Charter title**     |  Evaluation criteria for congestion control algorithms for interactive real time media   |
|  **Intended status**  |  Informational RFC                                                                       |
|  **Goals**            |  Adopt Aug 2013, Submit May 2014                                                         |

Define evaluation criteria for proposed congestion control mechanisms, and publish these as an Informational RFC. This must be completed prior to finishing any Proposed Standard algorithm specifications (*#cc-rec*).

## rtcp-requirements

|                   |                                                                                 |
|-------------------|---------------------------------------------------------------------------------|
| **Charter title**     |  Requirements for RTCP extensions for use with congestion control algorithms    |
|  **Intended status**  |  ?                                                                              |
|  **Goals**            |  **If needed:** Adopt Dec 2013, Submit May 2014                                     |

Determine if extensions to RTP/RTCP are needed for carrying congestion control feedback, using DCCP as a model. If so, provide the requirements for such extensions to the AVTCORE working group for standardization there.

*Only a work item if the WG in consultation with AVTCORE decides on the need.*

## app-interactions

|                   |                                                    |
|-------------------|----------------------------------------------------|
| **Charter title**     |  Interactions between applications and RTP flows   |
|  **Intended status**  |  Informational RFC                                 |
|  **Goals**            |  **If needed:** Adopt ?, Submit May 2014               |

Identify interactions between applications and RTP flows to enable conveying helpful cross-layer information such as per-packet priorities, flow elasticity, etc. This information might be used to populate an API, but the WG will not define a specific API itself.

## group-cc

|                   |                                                |
|-------------------|------------------------------------------------|
| **Charter title**     |  Identifying and controlling groups of flows   |
|  **Intended status**  |  Proposed Standard                             |
|  **Goals**            |  Adopt  Jan 2014, Submit Jul 2014              |

Develop a mechanism for identifying shared bottlenecks between groups of flows, and means to flexibly allocate their rates within the aggregate hitting the shared bottleneck. *(Probably needs to wait until #cc-cand are described in sufficient detail.)*

The work will be guided by the advice laid out in RFC 5405 (UDP Usage Guidelines), RFC 2914 (congestion control principles), and RFC5033 (Specifying New Congestion Control Algorithms).

## detect-sched-failures

|                   |                                                                              |
|-------------------|------------------------------------------------------------------------------|
| **Charter title**     |  Techniques to detect, instrument or diagnose failing to meet RT schedules   |
|  **Intended status**  |  Informational RFC or Standards Track                                        |
|  **Goals**            |  Adopt  Sep 2014, Submit Mar 2015                                            |

Develop techniques to detect, instrument or diagnose failing to meet RT schedules due to failures of components outside of the charter scope, possibly in collaboration with IPPM.

If needed for interoperability or other aspects that would justify it.

## cc-cand-X

|                   |                                                                           |
|-------------------|---------------------------------------------------------------------------|
| **Charter title**     |  Candidate congestion control algorithm for interactive real time media   |
|  **Intended status**  |  Experimental RFC                                                         |
|  **Goals**            |  Adopt Jan 2014, Submit Jun 2014 (first candidate)                        |

Find or develop candidate congestion control algorithms, verify that these can be tested on the Internet without significant risk, and publish one or more of these as Experimental RFCs.

Likely more than one.

*#cc-requirements must be submitted to the IESG first!*

The work will be guided by the advice laid out in RFC 5405 (UDP Usage Guidelines), RFC 2914 (congestion control principles), and RFC5033 (Specifying New Congestion Control Algorithms).

## eval-results

|                   |                                                                                       |
|-------------------|---------------------------------------------------------------------------------------|
| **Charter title**     |  Experimentation and evaluation results for candidate congestion control algorithms   |
|  **Intended status**  |  Informational RFC                                                                    |
|  **Goals**            |  Adopt  Sep 2014, Submit ?                                                            |

Publish evaluation criteria and the result of experimentation with these Experimental algorithms on the Internet. This must be completed prior to finishing any Proposed Standard algorithm specifications (#cc-rec).

*#eval-criteria must be finished first!*

## cc-rec-X

|                   |                                                                              |
|-------------------|------------------------------------------------------------------------------|
| **Charter title**     |  Recommended congestion control algorithms for interactive real time media   |
|  **Intended status**  |  Proposed Standard                                                           |
|  **Goals**            |  Adopt  Sep 2014, Submit May 2015                                            |

Once an algorithm has been found or developed that meets the evaluation criteria, and has a satisfactory amount of documented experience on the Internet, publish this algorithm as a Standards Track RFC. There may be more than one algorithm; in this case it will be one of the objects of the experimentation to determine the applicabilities and relative merits of the algorithms.

One or more.

*#eval-results must be finished first!*

## cc-cand-X-historic
|                   |                      |
|-------------------|----------------------|
| **Charter title**     |  -                   |
|  **Intended status**  |  Informational RFC   |
|  **Goals**            |  Adopt ?, Submit ?   |


For each of the Experimental algorithms that have not been selected for the Standards Track, the working group will review the algorithm and determine whether there are significant flaws, such as ones that turn out to be harmful to flows using or competing with them. If so, the WG will write a document describing the issues encountered and recommending to the IESG to move the specification to Historic status.

*Not clear at this stage whether we will have these work items.* 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-05-29. It was migrated from the old Trac wiki on 2022-12-20.*
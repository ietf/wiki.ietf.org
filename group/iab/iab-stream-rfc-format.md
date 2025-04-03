---
title: Format for RFCs in the IAB Stream 
description: 
published: true
date: 2025-04-03T03:57:02.125Z
tags: 
editor: markdown
dateCreated: 2025-04-02T08:34:11.655Z
---

# Format for RFCs in the IAB Stream 

Below is general guidance about the format for IAB stream documents. 
This is intended to supplement RFC 7841 and the information at 
<https://www.rfc-editor.org/styleguide/headers-and-boilerplate/>. 
If instructions conflict, those documents have precedence. 

- Regarding use of "Ed.", the header of the I-D determines 
  the header of the RFC.  The IAB is determining author listings on a 
  case-by-case basis.  For example, the following are both possible: 

````
Internet Architecture Board (IAB)                         D. Thaler, Ed. 
Request for Comments: 5902                                 L. Zhang, Ed. 
Category: Informational                                 G. Lebovitz, Ed. 
ISSN: 2070-1721                                                July 2010 

Internet Architecture Board (IAB)                              D. Thaler 
Request for Comments: 5902                                      L. Zhang 
Category: Informational                                      G. Lebovitz 
ISSN: 2070-1721                                                July 2010 
````
  
- Each author's name SHOULD be listed without an organization. 

- The IAB is not to be listed in the Authors' Addresses Section. 
  The document is identified as an IAB stream document via the header 
  as indicated above. 

- IAB consensus documents include a list of IAB members that were
  part of the IAB when the document was approved, in a section entitled
  "IAB Members at the Time of Approval".

- Workshop reports 
  The following boilerplate paragraph is to appear at the end of the 
  abstract: 
````
      Note that this document is a report on the proceedings of the 
      workshop.  The views and positions documented in this report are 
      those of the workshop participants and do not necessarily reflect IAB 
      views and positions. 
````
  The following boilerplate paragraph SHOULD appear in the introduction: 
````
      The Internet Architecture Board (IAB) holds occasional workshops 
      designed to consider long-term issues and strategies for the 
      Internet, and to suggest future directions for the Internet 
      architecture.  This long-term planning function of the IAB is 
      complementary to the ongoing engineering efforts performed by working 
      groups of the Internet Engineering Task Force (IETF). 
````
  Additional workshop specific information may be added to that paragraph as
  long as the existing sentences are retained. For example, the recent IOTSI
  workshop report contained this variant:
````
      The Internet Architecture Board (IAB) holds occasional workshops
      designed to consider long-term issues and strategies for the
      Internet, and to suggest future directions for the Internet
      architecture.  The investigated topics often require coordinated
      efforts of many organizations and industry bodies to improve an
      identified problem.  One of the targets of the workshops is to
      establish communication between relevant organizations, especially
      when the topics are out of the scope for the Internet Engineering
      Task Force (IETF).  This long-term planning function of the IAB is
      complementary to the ongoing engineering efforts performed by working
      groups of the IETF.
````
  Workshop reports are to contain an appendix listing the workshop 
  participants. 

---------------------------------- 
*Contents originally from the RFC Editor website [https://www.rfc-editor.org/materials/iab-format.txt].
Last substantive edits made 2 Oct 2018.*
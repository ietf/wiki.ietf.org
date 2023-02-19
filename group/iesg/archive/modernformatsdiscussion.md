---
title: IESG Discussion on RFC Format Changes
description: 
published: true
date: 2023-02-19T20:09:04.194Z
tags: 
editor: markdown
dateCreated: 2023-02-19T20:09:04.194Z
---

# IESG Discussion on RFC Format Changes

Given that the canonical RFC format is changing from ASCII to XML and that additional features (Unicode for internationalization, non-color SVG for figures, etc.) will be supported in RFCs, the IESG supports having the same set of features available for Internet Drafts. The IESG plans the following:

 -   When a feature in XML will render differently in text versus HTML versus PDF, the tools should support highlighting or indicating in some fashion the affected portion of the document. By preference, this should be done on the HTML rendering, either by default or as an option. 

 -   The IESG will not specifically review each rendering and the canonical XML format. Individual ADs will decide and review whatever rendering they prefer. Unexpected differences between renderings will be treated as tooling issues. 

 -   The process of supporting the additional features in Internet Drafts is dependent upon the implementation of the appropriate tool-chain and associated processes at the RFC Editor. Incremental implementation in the tool-chain is expected and so use of the additional features in Internet Drafts will also be incremental. 

 -   While XML will be the canonical format, authors are not required to use any particular tool-chain for authoring. In addition to xml2rfc, there are other methods such as markdown languages; these should be well documented for community use. It will still be possible to submit drafts in ASCII. 

 -   The tools team will determine the ordering and timing of deploying the new features. 

 -   Internet Drafts rendered in formats that show, for example, figures may be easier to understand than the text renderings. It is not expected that ASCII art figures or extensive text will be added to Internet Drafts to provide the same ease for the text renderings. 

 -   An update to the DISCUSS criteria [1](http://www.ietf.org/iesg/statement/discuss-criteria.html) will be needed to add a new DISCUSS non-criterion ([1](http://www.ietf.org/iesg/statement/discuss-criteria.html), section 3.1) to clarify that differences between rendered document formats (txt, pdf, html, etc) are not in themselves sufficient reason to hold a DISCUSS unless one of the formats is likely to mislead implementers. If one format says to go look at another, then that is sufficient clarity. 

## Open Questions

  -  Expected timing for the tools?
  -  Clarity of announcements for tool functionality
  -  How and where are tools for authoring to be supported? (xml2rfc but also markdown, etc)
  -  Are there going to be tools to support automatic conversions? 
  
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-01-28. It was migrated from the old Trac wiki on 2023-02-17.*
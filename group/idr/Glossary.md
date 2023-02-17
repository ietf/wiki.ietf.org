---
title: Glossary
description: 
published: true
date: 2023-02-14T23:23:14.303Z
tags: 
editor: markdown
dateCreated: 2023-01-28T23:52:37.947Z
---

There are a number of terms that are commonly used in BGP specifications. Some have formal definitions provided in those or other specifications, but others are defined by custom and usage. Here we collect some of those. Where a formal definition exists, it should be referenced, otherwise "custom and usage" is assumed.

- BGP speaker: A device running a BGP implementation. Not quite synonymous with "router" because not all BGP speakers are routers, and not all routers are BGP speakers.
- Supported: Many BGP specifications talk about "a BGP speaker that supports this extension" or similar. This means that the BGP speaker both has code that implements the extension, and that the extension is enabled (or not disabled) in configuration. So, a speaker that has the code for draft-foo but has draft-foo disabled in configuration would not be expected to behave as a "speaker that supports" draft-foo. Sometimes BGP the "that supports this extension" is left implicit since after all, a specification can't very well be mandating behavior in speakers that don't support it.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-12-02. It was migrated from the old Trac wiki on 2023-01-28.*
---
title: General Guidelines for Authors and Reviewers of YANG Model Documents
description: 
published: true
date: 2022-12-16T20:36:59.864Z
tags: 
editor: markdown
dateCreated: 2022-12-16T20:36:05.326Z
---

# General Guidelines for Authors and Reviewers of YANG Data Model Documents

This page contains the latest updates to [General Guidelines for Authors and Reviewers of YANG Data Model Documents](https://tools.ietf.org/html/rfc8407). It is intended to capture the latest Best Current Practice of the community and will be included in future updates to this document.

## Guidelines for YANG modules in RFCs

YANG modules that are published in RFCs need to follow the guidelines in RFC8407, and they also need to be consistently formatted and fit into the RFC line length restrictions. It is recommended that authors use a tool like pyang to check their modules:
```
$ pyang --ietf --max-line-length 69 my-module.yang
```
pyang can also be used to consistently format a module:
```
$ pyang -f yang --keep-comments my-module.yang
```
Note that the output of the last command may need manual tweaking wrt long lines. The tool currently cannot currently break long paths into multiple lines.

## Updated Guidelines

<none, yet. Please follow RFC8407>
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-10-22. It was migrated from the old Trac wiki on 2022-12-16.*
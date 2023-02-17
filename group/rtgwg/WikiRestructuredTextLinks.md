---
title: WikiRestructuredTextLinks
description: 
published: true
date: 2023-01-03T21:19:13.354Z
tags: 
editor: markdown
dateCreated: 2022-12-22T21:21:43.962Z
---

# TracLinks in reStructuredText
This document illustrates how to use the `:trac:` role in [reStructuredText](https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html). The page is written like:
```
{{{#!rst
Examples:

 * Tickets: :trac:`#1` or :trac:`ticket:1`
 * Ticket comments: :trac:`comment:ticket:1:2`
 * Reports: :trac:`{1}` or :trac:`report:1`
 * Changesets: :trac:`r1`, :trac:`[1]` or :trac:`changeset:1`
 * Revision log: :trac:`r1:3`, :trac:`[1:3]` or :trac:`log:@1:3`, :trac:`log:trunk@1:3`
 * Diffs: :trac:`diff:@20:30`, :trac:`diff:tags/trac-0.9.2/wiki-default//tags/trac-0.9.3/wiki-default` or :trac:`diff:trunk/trac@3538//sandbox/vc-refactoring/trac@3539`
 * Wiki pages: :trac:`CamelCase` or :trac:`wiki:CamelCase`
 * Milestones: :trac:`milestone:1.0`
 * Attachment: :trac:`attachment:ticket:944:attachment.1073.diff`
 * Files: :trac:`source:trunk/COPYING`
 * A specific file revision: :trac:`source:/trunk/COPYING@200`
 * A particular line of a specific file revision: :trac:`source:/trunk/COPYING@200#L25

An explicit label can be specified, separated from the link by a space:

 * See :trac:`#1 ticket 1` and the :trac:`source:trunk/COPYING license`.
}}}
```

Provided you have [​docutils](https://docutils.sourceforge.io/) installed, the above block will render as:

---
```
Examples:

 * Tickets: :trac:`#1` or :trac:`ticket:1`
 * Ticket comments: :trac:`comment:ticket:1:2`
 * Reports: :trac:`{1}` or :trac:`report:1`
 * Changesets: :trac:`r1`, :trac:`[1]` or :trac:`changeset:1`
 * Revision log: :trac:`r1:3`, :trac:`[1:3]` or :trac:`log:@1:3`, :trac:`log:trunk@1:3`
 * Diffs: :trac:`diff:@20:30`, :trac:`diff:tags/trac-0.9.2/wiki-default//tags/trac-0.9.3/wiki-default` or :trac:`diff:trunk/trac@3538//sandbox/vc-refactoring/trac@3539`
 * Wiki pages: :trac:`CamelCase` or :trac:`wiki:CamelCase`
 * Milestones: :trac:`milestone:1.0`
 * Attachment: :trac:`attachment:ticket:944:attachment.1073.diff`
 * Files: :trac:`source:trunk/COPYING`
 * A specific file revision: :trac:`source:/trunk/COPYING@200`
 * A particular line of a specific file revision: :trac:`source:/trunk/COPYING@200#L25`

An explicit label can be specified, separated from the link by a space:

 * See :trac:`#1 ticket 1` and the :trac:`source:trunk/COPYING license`.
```
---

Note that the above could have been written using substitution references and the `trac:`: directive:
```
{{{#!rst
See |ticket123|.

 .. |ticket123| trac:: ticket:123 this ticket
}}}
```
This renders as:
```
See |ticket123|.

 .. |ticket123| trac:: ticket:123 this ticket
 ```
 ---

 See also: [WikiRestructuredText](/group/rtgwg/WikiRestructuredText), [TracLinks](/group/rtgwg/TracLinks)
 
 &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-22.*
 
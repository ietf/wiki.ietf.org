---
title: Wiki Page Names
description: 
published: true
date: 2023-01-03T21:19:13.354Z
tags: 
editor: markdown
dateCreated: 2022-12-22T17:20:42.523Z
---

**Wiki Page Names**
Wiki page names commonly use the [CamelCase](/group/rtgwg/CamelCase) convention. Within wiki text, any word in CamelCase automatically becomes a hyperlink to the wiki page with that name.

[CamelCase](/group/rtgwg/CamelCase) page names follow these rules:

1. The name must consist of alphabetic characters only; no digits, spaces, punctuation or underscores are allowed.
2. A name must have at least two capital letters.
3. The first character must be capitalized.
4. Every capital letter must be followed by one or more lower-case letters.
5. The use of slash ( / ) is permitted in page names, where it typically represents a hierarchy.

If you want to create a wiki page that does not follow [CamelCase](/group/rtgwg/CamelCase) rules. you can use the following syntax:

  `[wiki:Wiki_page], [wiki:ISO9000],
    and with a label: [wiki:ISO9000 ISO 9000 standard]
  [wiki:"Space Matters"]
    and with a label: [wiki:"Space Matters" all about white space]
   or simply: ["WikiPageName"]s
   even better, the new [[WikiCreole link style]]
    and with a label: [[WikiCreole link style|WikiCreole style links]]`

This will be rendered as:

- Wiki_page?, ISO9000?, and with a label: ISO 9000 standard?
- Space Matters? (that page name embeds space characters) and with a label: all about white space?
- or simply: WikiPageName?s
- even better, the new WikiCreole link style? and with a label: WikiCreole style links?

It is possible to link to a specific version of a Wiki page as you would do for a specific version of a file, for example: WikiStart@1.

You can also prevent a CamelCase name from being interpreted as a link by quoting it with an exclamation mark: !CamelCase. See [TracLinks](/group/rtgwg/TracLinks)#EscapingLinks.

As in the example above, you can also append an anchor to a Wiki page name to link to a specific section within that page. The anchor can be seen by hovering the mouse over a section heading, then clicking on the ¶ sign that appears at its end. The anchor is usually generated automatically, but it is also possible to specify it explicitly: see [WikiFormatting](/group/rtgwg/WikiFormatting)#using-explicit-id-in-heading.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-22.*
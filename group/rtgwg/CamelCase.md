---
title: delete 
description: 
published: true
date: 2023-02-27T05:41:14.672Z
tags: 
editor: markdown
dateCreated: 2022-12-22T01:00:44.087Z
---

# CamelCase 
New wiki links are automatically created when concatenating capitalized words, such that for example the word 'Camel' and the word 'Case' concatenated form a link to this CamelCase page.

CamelCase is the original wiki convention for creating hyperlinks, with the additional requirement that the capitals are followed by a lower-case letter; hence "AlabamA" and "ABc" will not be links.

## Customizing the Wiki behavior
While Trac remains faithful to the original Wiki style, it provides a number of ways to accommodate users with different preferences:

- To prevent the creation of a new link of a camel-cased word, prefix with an exclamation mark (!): !CamelCase.
- To ignore links to missing pages when the link is written using the CamelCase style, that word can instead be replaced by a gray link followed by a question mark. This is useful in cases when CamelCase style is used to name code artefacts like class names and there is no corresponding page for them. This option can be set in ignore_missing_pages in the [wiki] section of [TracIni](/group/rtgwg/TracIni).
- To automatically insert space characters between the words of a CamelCase link when rendering the link, use split_page_names in the [wiki] section of [TracIni](/group/rtgwg/TracIni).
- Creation of explicit Wiki links is also easy, see [WikiPageNames](/group/rtgwg/WikiPageNames) for details.
- Wiki formatting can be disabled completely in some places, for example when rendering commit log messages. See wiki_format_messages in the [changeset] section of [TracIni](/group/rtgwg/TracIni).

See [TracIni](/group/rtgwg/TracIni) for more information on the available options.

## More information on CamelCase
- http://c2.com/cgi/wiki?WikiCase
- http://en.wikipedia.org/wiki/CamelCase


---
See also: [WikiPageNames](/group/rtgwg/WikiPageNames), [WikiNewPage](/group/rtgwg/WikiNewPage), [WikiFormatting](/group/rtgwg/WikiFormatting), [TracWiki](/group/rtgwg/TracWiki)
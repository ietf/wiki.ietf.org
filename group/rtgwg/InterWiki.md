---
title: delete
description: 
published: true
date: 2023-02-27T05:44:32.838Z
tags: 
editor: markdown
dateCreated: 2022-12-22T20:11:30.253Z
---

# Support for InterWiki links 
## Definition
An InterWiki link can be used for referring to a Wiki page located in another Wiki system, and by extension, to any object located in any other Web application, provided a simple URL mapping can be done.

InterWiki prefixes can even be used to simply introduce links to new protocols, such as tsvn: used by [TortoiseSvn](https://trac.edgewall.org/wiki/TortoiseSvn).

## Link Syntax
<target_wiki>(: < identifier >)+
  
The link is composed by the targeted Wiki (or system) name, followed by a colon, eg MeatBall:, followed by a page specification in the target. Note that, as for [InterTrac](/group/rtgwg/InterTrac) prefixes, InterWiki prefixes are case insensitive.

The target Wiki URL is looked up in the [interwiki] section of [TracIni](/group/rtgwg/TracIni) or in the [InterMapTxt](/group/rtgwg/InterMapTxt) wiki page, modeled after [MeatBall:InterMapTxt](http://meatballwiki.org/wiki/InterMapTxt). If a prefix is defined in both the [interwiki] section and [InterMapTxt](/group/rtgwg/InterMapTxt), the [interwiki] section takes precedence.

In addition to traditional InterWiki links, where the target is simply appended to the URL, Trac supports parametric InterWiki URLs: identifiers $1, $2, ... in the URL will be replaced by corresponding arguments. The argument list is formed by splitting the page identifier using the ":" separator.

## [interwiki]
Every option in the [interwiki] section in [TracIni](/group/rtgwg/TracIni) defines one InterWiki prefix. The option name defines the prefix. The option value defines the URL, optionally followed by a description separated from the URL by whitespace. Parametric URLs are supported as well.

**Example:**

[interwiki]
MeatBall = http://www.usemod.com/cgi-bin/mb.pl?
PEP = http://www.python.org/peps/pep-$1.html Python Enhancement Proposal $1
tsvn = tsvn: Interact with TortoiseSvn
## Examples
If the following is an excerpt of the [InterMapTxt](/group/rtgwg/InterMapTxt) page:

= InterMapTxt =
== This is the place for defining InterWiki prefixes ==

Currently active prefixes: [[InterWiki]]

This page is modelled after the [MeatBall:InterMapTxt](http://meatballwiki.org/wiki/InterMapTxt) page.
In addition, an optional commentis allowed after mapping.

{{{
PEP      http://www.python.org/peps/pep-$1.html           # Python Enhancement Proposal $1 
Trac-ML  http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/$1  # Message $1 in Trac Mailing List

tsvn     tsvn:                                            # Interact with TortoiseSvn
...
MeatBall http://www.usemod.com/cgi-bin/mb.pl?
MetaWiki http://sunir.org/apps/meta.pl?
MetaWikiPedia http://meta.wikipedia.org/wiki/
MoinMoin http://moinmoin.wikiwikiweb.de/
...
}}}

Then,

- MoinMoin:InterWikiMap should be rendered as [MoinMoin:InterWikiMap](http://moinmo.in/InterWikiMap) and the title for that link would be "InterWikiMap in MoinMoin".
- Trac-ML:4346 should be rendered as [Trac-ML:4346](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/4346) and the title for that link would be "Message 4346 in Trac Mailing List".

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-22.*
---
title: InterMapTxt
description: 
published: true
date: 2022-12-22T20:21:21.980Z
tags: 
editor: markdown
dateCreated: 2022-12-22T20:21:16.163Z
---

# InterMapTxt
This is the place for defining InterWiki prefixes
This page was modelled after the [MeatBall:InterMapTxt](http://meatballwiki.org/wiki/InterMapTxt) page. In addition, an optional comment is allowed after the mapping.

This page is interpreted in a special way by Trac, in order to support [InterWiki](/group/rtgwg/InterWiki) links in a flexible and dynamic way.

The code block after the first line separator in this page will be interpreted as a list of InterWiki specifications:

`prefix <space> URL [<space> # comment]`
  
By using $1, $2, etc. within the URL, it is possible to create InterWiki links which support multiple arguments, e.g. Trac: ticket :40. The URL itself can be optionally followed by a comment, which will subsequently be used for decorating the links using that prefix.

New InterWiki ( links can be created by adding to that list, in real time. Note however that deletions are also taken into account immediately, so it may be better to use comments for disabling prefixes.

Also note that InterWiki prefixes are case insensitive.

## List of Active Prefixes 
  |     Prefix    |                                 Site                                 |
|:-------------:|:--------------------------------------------------------------------:|
| Acronym       | http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=      |
| C2find        | http://c2.com/cgi/wiki?FindPage&value=                               |
| c2Wiki        | http://c2.com/cgi/wiki?                                              |
| Cache         | http://www.google.com/search?q=cache:                                |
| CPAN          | http://search.cpan.org/perldoc?                                      |
| DataTracker   | https://datatracker.ietf.org/doc/                                    |
| DebianBug     | http://bugs.debian.org/                                              |
| DebianPackage | http://packages.debian.org/                                          |
| Dictionary    | http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query= |
| dt            | https://datatracker.ietf.org/doc/                                    |
| Google        | http://www.google.com/search?q=                                      |
| GoogleGroups  | Message $2 in $1 Google Group                                        |
| JargonFile    | http://downlode.org/perl/jargon-redirect.cgi?term=                   |
| MeatBall      | http://www.usemod.com/cgi-bin/mb.pl?                                 |
| Mercurial     | [the wiki for the Mercurial distributed SCM](http://www.selenic.com/mercurial/wiki/index.cgi/)                           |
| MetaWiki      | http://sunir.org/apps/meta.pl?                                       |
| MetaWikiPedia | http://meta.wikipedia.org/wiki/                                      |
| MoinMoin      | http://moinmoin.wikiwikiweb.de/                                      |
| PEP           | Python Enhancement Proposal                                          |
| RFC           | IETF's RFC $1                                                        |
| trac-dev      | [Message $1 in Trac Development Mailing List](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.devel/)                          |
| Trac-ML       | [Message $1 in Trac Mailing List](http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/)                                      |
| WhoIs         | http://www.whois.sc/                                                 |
| Why           | http://clublet.com/c/c/why?                                          |
| WikiPedia     | http://en.wikipedia.org/wiki/                                        |
## Prefix Definitions
PEP     http://www.python.org/peps/pep-$1.html                                       # Python Enhancement Proposal 
Trac-ML  http://thread.gmane.org/gmane.comp.version-control.subversion.trac.general/ # Message $1 in Trac Mailing List
trac-dev http://thread.gmane.org/gmane.comp.version-control.subversion.trac.devel/   # Message $1 in Trac Development Mailing List

Mercurial http://www.selenic.com/mercurial/wiki/index.cgi/ # the wiki for the Mercurial distributed SCM

RFC		http://tools.ietf.org/html/rfc$1.html # IETF's RFC $1
DataTracker	https://datatracker.ietf.org/doc/
dt		https://datatracker.ietf.org/doc/

#A arbitrary pick of InterWiki prefixes...

Acronym          http://www.acronymfinder.com/af-query.asp?String=exact&Acronym=
C2find           http://c2.com/cgi/wiki?FindPage&value=
Cache            http://www.google.com/search?q=cache:
CPAN             http://search.cpan.org/perldoc?
DebianBug        http://bugs.debian.org/
DebianPackage    http://packages.debian.org/
Dictionary       http://www.dict.org/bin/Dict?Database=*&Form=Dict1&Strategy=*&Query=
Google           http://www.google.com/search?q=
GoogleGroups     http://groups.google.com/group/$1/msg/$2        # Message $2 in $1 Google Group
JargonFile       http://downlode.org/perl/jargon-redirect.cgi?term=
MeatBall         http://www.usemod.com/cgi-bin/mb.pl?
MetaWiki         http://sunir.org/apps/meta.pl?
MetaWikiPedia    http://meta.wikipedia.org/wiki/
MoinMoin         http://moinmoin.wikiwikiweb.de/
WhoIs            http://www.whois.sc/
Why              http://clublet.com/c/c/why?
c2Wiki             http://c2.com/cgi/wiki?
WikiPedia        http://en.wikipedia.org/wiki/ 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-10-14. It was migrated from the old Trac wiki on 2022-12-22.*
  
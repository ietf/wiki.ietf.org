---
title: Header Field Types
description: Header Field Types
published: true
date: 2022-12-13T23:13:02.485Z
tags: 
editor: markdown
dateCreated: 2022-12-13T23:12:58.179Z
---

# Header Field Types

(for brainstorming around issue [ticket #266](http://trac.tools.ietf.org/wg/httpbis/trac/ticket/266))

## Base ABNF rules
```
   BWS           = <HTTPbis P1 BWS>
   OWS           = <HTTPbis P1 OWS>

   token         = <HTTPbis P1 token>
   quoted-string = <HTTPbis P1 quoted-string>

   word          = token / quoted-string

   param         = token BWS "=" BWS word
```
A parameter that can be value-less:
```
   paramvl       = token [ BWS "=" BWS word ]
```
the following values should be treated as equivalent (empty string)
```
   foo
   foo=""
```
## Categories

### Parametrized String (PS)
```
   thing         = <TO BE DONE based on our use cases>

   PS            = thing *( OWS ";" [ OWS param ])
   PSvl          = thing *( OWS ";" [ OWS paramvl ])
```
(making the param optional makes trailing semicolons valid; there's no point to forbid them)
Examples for "thing"

Accept, Content-Type: subset of token plus "/"
```
   text/html
```
Accept-Charset:
```
   iso-8859-1
```
Content-Disposition: token
```
   attachment
   inline
```
Expect: allows both token and token=value
```
   100-continue
   foo=bar
```
Link: URI characters (superset of token including ";" but not DQUOTE)
```
   <http://example.org/uri;bar>
```
### List of Parametrized Strings (LoPS)
```
   LoPS           = #PS
   LoPSvl         = #PSvl
```
## Categorization of existing fields

**Accept**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  LoPS (where accept extensions are allowed to use a single token form) 

**Accept-Charset**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  LoPS (do charset names need characters outside token?) 

**Accept-Encoding**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  LoPS (do language tags need characters outside token?) 

**Accept-Language**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  LoPS 

**Content-Type**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  PS (but note the special case in [RFC2397, Section 3 ("data" URI)](http://greenbytes.de/tech/webdav/rfc2397.html#rfc.section.3) 

**Content-Disposition**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  PS 

**Expect**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  LoPSvl 

**Link**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  LoPS 

# Other things to document

* parameter ordering (not significant)
* case sensitivity of parameter names
* duplicate parameters (tokens compared case-insensitively) are invalid
* make it legal to have a trailing ";" separator?
* warn against trailing "*" in name unless [RFC5987](http://tools.ietf.org/html/rfc5987) decoding is desired 

&nbsp;
&nbsp;
&nbsp;

---
*The content of this page was last updated on 2012-03-26. It was migrated from the old Trac wiki on 2022-12-13.*


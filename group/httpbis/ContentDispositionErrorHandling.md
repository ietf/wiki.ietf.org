---
title: A proposal for optional error handling in processing the Content-Disposition header field
description: A proposal for optional error handling in processing the Content-Disposition header field
published: true
date: 2022-12-13T22:07:58.061Z
tags: 
editor: markdown
dateCreated: 2022-12-13T22:07:58.061Z
---

# A proposal for optional error handling in processing the Content-Disposition header field

This document does not require any specific handling of invalid header field values. With this in mind, the text below describes a simple strategy for parsing the header field and detecting problems in general, or in specific parameters.
## Parsing for Disposition Type and Parameters

Parse the field value using the state machine below (starting in the INITIAL state):
<pre>
INITIAL:
  <">   => Buffer the current character and switch to the QUOTED state.
  ";"   => Emit the buffered characters.
  EOF   => Emit the buffered characters.
  OTHER => Buffer the current character.

QUOTED:
  <">   => Buffer the current character and switch to the INITIAL state.
  EOF   => Emit the buffered characters.
  OTHER => Buffer the current character.
</pre>
TODO(abarth): Do we need to do something with "," here to make folding work properly? *jre: folding isn't supported by C-D's ABNF, so it's not clear what 'properly' would mean. Do you data about whether this is used, or tests that indicate that UAs do the same ting here?*

Consider each emitted string of characters in turn:

1. If the string matches the grammar below, the string is a name-value-pair. Otherwise, the string is a disposition-type.
```
     name-value-pair = name "=" value
     name            = <OCTET, except "=">
     value           = OCTET
  ```  
    
2. If the string is the first disposition-type considered:
   i. &nbsp;&nbsp; The nominal disposition type of the header field is the string with any ACII upper-case characters replaced with their lower-case equivalents and with all leading and trailing LWS removed. 
3. If the string is a name-value-pair:
   i. &nbsp;&nbsp; Let the canonicalized-name be the name with any ASCII upper-case characters replaced with their lower-case equivalents and with all leading and trailing LWS removed.
   ii. &nbsp;&nbsp; This is the first name-value-pair with this canonicalized-name, then the canonicalized-name parameter of the header field is value. 

## Determining the Disposition Type

If the header field has a nominal disposition type of "inline" or if the header field does not have a nominal disposition type, then the header field's disposition type is "inline".

Otherwise, the header field's disposition type is "attachment".
## Determining the File Name

If the header field has a "filename*" parameter and the value of the "filename*" parameter is an [RFC5987](http://tools.ietf.org/html/rfc5987)-value, then the header field's file name is the the [RFC5987](http://tools.ietf.org/html/rfc5987)-decoding of the value of the "filename*" parameter.

Otherwise, if the header field has a "filename" parameter, then the header field's file name is the filename-decoding (defined below) of the value of the "filename" parameter.
## Decoding Filename Parameter Values

To filename-decode an encoded-string, use the following algorithm:

1. If the encoded-string contains non-ASCII characters, process the encoded-string as follows:
   i. &nbsp;&nbsp; If the encoded-string decodes as UTF-8, emit the encoded-string (decoded as UTF-8) and abort these steps. *jre: this doesn't match the observed behavior of MSIE8, Chrome, Konqueror; if we need to pick a behavior why not the conforming one?*
ii. &nbsp;&nbsp; Emit the encoded-string (decoded as ISO-8859-1) and abort these steps. 
2. Let the url-unescaped-string be the encoded-string %-unescaped. jre: this is only done by Chrome and IE. Why standardize this?
3. If the url-unescaped-string decodes as UTF-8, emit the url-unescaped-string (decoded as UTF-8) and abort these steps.
4. Emit the url-unescaped-string (decoded as ISO-8859-1). 

Note that this algorithm starts with a sequence of octets obtained from the HTTP message, and results in a sequence of Unicode characters.

---
*The content on this page was last updated on 2010-12-13. It was migrated from the old Trac wiki on 2022-12-13.*
---
title: Grammar Checking ID
description: 
published: true
date: 2022-09-20T18:24:52.641Z
tags: iesg
editor: markdown
dateCreated: 2022-09-20T16:54:23.339Z
---

# Tools to Check Grammar in IETF Draft

This page lists a couple of tools and techniques to check the English grammar and spelling in XML or MarkDown IETF drafts. 

The use of such a tool is highly recommended to ease the reading and the understanding of documents. Authors should use one of these tools before submitting a draft.

Note: this list was compiled in 2020 by the IETF community and includes generic tools on the Internet and specific tools (often make by IETF authors).


## Generic Tools

Those tools do not always understand the structure of IETF draft and often require a TXT files without page headings (use `xml2rfc --raw` to get such a TXT file).

### GNU spell (no grammar check)

http://aspell.net/ is a well-known spell checker. It has a filter for HTML/SGML that basically works with XML with the option `-H` or `--mode=html`.

### Codespell (no grammar check)

https://github.com/codespell-project/codespell works on MD, XML and TXT (and more) but it does not check grammar.

### Grammarly

https://www.grammarly.com/grammar-check of course not working directly on XML

## Specific Tools Provided by the Community 

This list includes all tools developed by IETF participants for their specific needs; they are tailored for the IETF but are offered 'as it is'. 

### idreview

This tool https://eggert.org/software/idreview is provided by [https://mailarchive.ietf.org/arch/msg/ietf/BsB197OC7vRwBCvaPGRrlotckPI/ Lars Eggert]:

https://eggert.org/software/idreview has some scripting around languagetool that boils down to something like this:

> rfcstrip "$id" | \
> sed -e 's/^[ ]\{1,\}//g; s/[ ]\{2,\}/ /g; s/^o /\* /' | \
> languagetool -l en-US -d ARROWS,COMMA_PARENTHESIS_WHITESPACE,COPYRIGHT,\
> DASH_RULE,DOUBLE_PUNCTUATION,EN_QUOTES,\
> MULTIPLICATION_SIGN,PLUS_MINUS,PUNCTUATION_PARAGRAPH_END,\
> THREE_NN,UPPERCASE_SENTENCE_START,WHITESPACE_RULE,\
> WORD_CONTAINS_UNDERSCORES
> 
> There are still a bunch of false positives, often due to ASCII diagrams, etc.
> 
> And if you want to work on the XML, you can use --xmlfilter and pass it an XML file instead of the rfcstripped/sedded text version.
> 

### xml2docx

This tool https://github.com/evyncke/xml2docx converts an IETF draft XML into a Office Open XML .DOCX that is then suitable for grammar checking by commercial package such as Microsoft Word. An online version is available at https://www.vyncke.org/xml2docx/ .
### idspell (no grammar check)

https://tools.ietf.org/tools/idspell/idspell.pyht written by Hendrik Lekowetz in 2006 and relying on GNU [http://aspell.net/ aspell] hence does not check for grammar errors.

### rfclint (no grammar check)

https://github.com/ietf-tools/RfcEditor/tree/master/rfclint also uses [http://aspell.net/ aspell] hence does not check for grammar errors.
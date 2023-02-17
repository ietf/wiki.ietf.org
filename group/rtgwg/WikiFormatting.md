---
title: WikiFormatting
description: 
published: true
date: 2023-01-09T21:50:30.835Z
tags: 
editor: markdown
dateCreated: 2022-12-22T19:53:04.134Z
---

# WikiFormatting
Wiki markup is a core feature in Trac, tightly integrating all the other parts of Trac into a flexible and powerful whole.

Trac has a built-in small and powerful wiki rendering engine. This wiki engine implements a growing subset of the commands from other popular Wikis, especially [MoinMoin](http://moinmo.in/) and [WikiCreole](https://trac.edgewall.org/wiki/WikiCreole).

This page will give you an in-depth explanation of the wiki markup available anywhere WikiFormatting is allowed.

The sections below provide an overview for the most common syntax, each link in the Category column will lead you to the more detailed explanation later in this page.

A few other wiki pages present the advanced features of the Trac wiki markup in more depth:

- [TracLinks](/group/rtgwg/TracLinks) covers all the possible ways to refer precisely to any Trac resource or parts thereof.
- WikiPageNames(/group/rtgwg/WikiPageNames) covers the various names a wiki page can take, whether in [CamelCase](/group/rtgwg/CamelCase) or not.
- [WikiMacros](/group/rtgwg/WikiMacros) lists the macros available for generating dynamic content.
- [WikiProcessors](/group/rtgwg/WikiProcessors) and [WikiHtml](/group/rtgwg/WikiHTML) details how parts of the wiki text can be processed in special ways.
- [AdvancedWikiOperations](https://trac.edgewall.org/wiki/TracDev/Proposals/AdvancedWikiOperations) provides some operations in uncommon or administrative scenarios.

## Common Wiki Markup
|       Category       |                                               Wiki Markup                                              |                                Display                               |
|:--------------------:|:------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
|      Font Styles     |` '''bold''`', `''italic''`, `'''''Wikipedia style'''''`                                                      | **bold**, *italic*, Wikipedia style                                        |
|                      | `monospaced (''other markup ignored'')`                                                                | `monospaced (''other markup` ignored'')                                |
|                      | `**bold**`, `//italic//`, `**//!WikiCreole style//**`                                                        | **bold**, *italic*, WikiCreole style                                       |
|       Headings       |` == Level 2 === Level 3 ^([#hn note])^`                                                                  | Level 2 Level 3 (note)                                               |
|      Paragraphs      | `First paragraph on multiple lines.  Second paragraph.`                                                  | First paragraph on multiple lines. Second paragraph.                 |
|         Lists        |` * bullet list   on multiple lines   1. nested list     a. different numbering         styles `          | bullet list on multiple lines nested list different numbering styles |
|   Definition Lists   |  `term:: definition on         multiple lines`                                                          | **term** definition on multiple lines                                    |
|   Preformatted Text  |` {{{ multiple lines, ''no wiki''       white space respected }}}`                                        |` multiple lines, ''no wiki''       white space respected`              |
|      Blockquotes     |   `if there's some leading   space the text is quoted`                                                   | if there's some leading space the text is quoted                     |
| Discussion Citations |` >> ... (I said) > (he replied)`                                                                         | ... (I said) (he replied)                                            |
|        Tables        | `\|\|= Table Header =\|\| Cell \|\| \|\|\|\|  (details below)  \|\|`                                     |   Table Header Cell (details below)                                  |
|     Table Header     |                    Table Header Cell (details below)                                                   |                                                                      |
|         Links        | `http://trac.edgewall.org`                                                                               | http://trac.edgewall.org                                             |
|                      | `WikiFormatting (CamelCase)`                                                                             | [WikiFormatting (CamelCase)](/group/rtgwg/WikiFormatting)                                           |
|       TracLinks      | `wiki:WikiFormatting`, `wiki:"WikiFormatting"`                                                             | wiki:WikiFormatting, wiki:"WikiFormatting"                           |
|                      | `#1 (ticket)`, [1] (changeset), {1} (report)                                                             | #1 (ticket), [1] (changeset), {1} (report)                           |
|                      | `ticket:1`, `ticket:1#comment:1`                                                                           | ticket:1, ticket:1#comment:1                                         |
|                      | `Ticket [ticket:1]`, `[ticket:1 ticket one]`                                                               | Ticket 1, ticket one                                                 |
|                      | `Ticket [[ticket:1]]`, `[[ticket:1\|ticket one]]`                                                          | Ticket 1, ticket one                                                 |
|    Setting Anchors   | `[=#point1 (1)]` First...                                                                                | (1) First...                                                         |
|                      | `see [#point1 (1)]`                                                                                      | see (1)                                                              |
|    Escaping Markup   | `!'' doubled quotes`                                                                                     | '' doubled quotes                                                    |
|                      | `!wiki:WikiFormatting`, `!WikiFormatting`                                                                  | wiki:WikiFormatting, WikiFormatting                                  |
|                      | `{{{-}}}` triple curly brackets                                                                        | {{{-}}} triple curly brackets                                        |
|        Images        | `[[Image(link)]]`                                                                                        | #                                                                    |
|        Macros        | `[[MacroList(*)]]`                                                                                       |                 (short list of all available macros)                 |
|                      | `[[Image?]]`                                                                                             |                      (help for the Image macro)                      |
|      Processors      | `{{{ #!div style="font-size: 80%" Code highlighting:   {{{#!python   hello = lambda: "world"   }}} }}}`  | Code highlighting: hello = lambda: "world"                           |
|       Comments       | `{{{#!comment Note to Editors: ... }}}`                                                                  |                                                                      |
|     Miscellaneous    |` Line [[br]] break  Line \\ break` ----                                                                  | Line break Line break                                                |
### Font Styles
The Trac wiki supports the following font styles:
|                                                                                                                                                                                                                                            Wiki Markup                                                                                                                                                                                                                                           |                                                                                                                                                          Display                                                                                                                                                         |
|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|``` * '''bold''',     ''' triple quotes !'''     can be bold too if prefixed by ! ''',  <br>* ''italic''  <br>* '''''bold italic''''' or ''italic and    ''' italic bold ''' ''  <br>* __underline__  <br>* {{{monospace}}} or monospace    (hence {{{ or {{{}}} quoting)  <br>* ~~strike-through~~  <br>* ^superscript^   <br>* ,,subscript,,  <br>* **also bold**, //italic as well//,     and <br>**'' bold italic **'' //(since 0.12)//  <br>* [[span(style=color: #FF0000, a red text )]]```  | - bold, triple quotes ''' can be bold too if prefixed by ! ,<br>- italic<br>- bold italic or italic and italic bold<br>- underline<br>- `monospace` or `monospace` (hence `{{{` or  quoting)<br>- strike-through<br>- superscript<br>- subscript<br>- also bold, italic as well, and bold italic (since 0.12)<br>- a red text |
Notes:

- `{{{...}}}` and `...` commands not only select a monospace font, but also treat their content as verbatim text, meaning that no further wiki processing is done on this text.
- ! tells wiki parser to not take the following characters as wiki format, so pay attention to put a space after !, e.g. when ending bold.
- all the font styles marks have to be used in opening/closing pairs, and they must nest properly; in particular, an `''` italic can't be paired with a `//` one, and `'''` can't be paired with `**`.
## Headings
You can create heading by starting a line with one up to six equal characters ("=") followed by a single space and the headline text.

 The headline text can be followed by the same number of "=" characters, but this is not mandatory. That is, `=== Section3 ===` is identical to `=== Section3`.

Finally, the heading might optionally be followed by an explicit id. If not, an implicit but nevertheless readable id will be generated.
|                                                               Wiki Markup                                                               |                              Display                             |
|:---------------------------------------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------:|
| `= Heading = <br>== Subheading <br>=== About ''this'' === <br>=== Explicit id === #using-explicit-id-in-heading <br>== Subheading #sub2`  | Heading<br>Subheading<br>About this<br>Explicit id<br>Subheading |
## Paragraphs

A new text paragraph is created whenever two blocks of text are separated by one or more empty lines.

A forced line break can also be inserted, using:
|                      Wiki Markup                      |                       Display                      |
|:-----------------------------------------------------:|:--------------------------------------------------:|
| `Line 1[[BR]]Line 2` <br>`Paragraph one  Paragraph  two`  | Line 1<br>Line 2<br>Paragraph one<br>Paragraph two |

## Lists
The wiki supports both ordered/numbered and unordered lists.

Example:
|                                                                                                                                                                                                                                                                                                  Wiki Markup                                                                                                                                                                                                                                                                                                  |                                                                                                                                                                                                                        Display                                                                                                                                                                                                                        |
|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| ```* Item 1    <br>   * Item 1.1       <br>      * Item 1.1.1          <br>      * Item 1.1.2       <br>      * Item 1.1.3    <br>   * Item 1.2  <br>* Item 2 <br>- items can start at the beginning of a line   and they can span multiple lines   - be careful though to continue the line    with the appropriate indentation, otherwise that will start a new paragraph...  <br><br> 1. Item 1    <br>   a. Item 1.a    <br>   a. Item 1.b       <br>      i. Item 1.b.i       <br>      i. Item 1.b.ii  <br>1. Item 2 <br>And numbered lists can also be restarted with an explicit number:  <br>3. Item 3```  | Item 1<br>Item 1.1<br>Item 1.1.1<br>Item 1.1.2<br>Item 1.1.3<br>Item 1.2<br>Item 2<br>items can start at the beginning of a line and they can span multiple lines<br>be careful though to continue the line with the appropriate indentation, otherwise<br>that will start a new paragraph...<br>Item 1<br>Item 1.a<br>Item 1.b<br>Item 1.b.i<br>Item 1.b.ii<br>Item 2<br>And numbered lists can also be restarted with an explicit number:<br>Item 3 |
## Definition Lists
The wiki also supports definition lists.
|                                                        Wiki Markup                                                       |                                                      Display                                                      |
|:------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------:|
|  ```llama::    <br>some kind of mammal, with hair  <br>ppython::    <br>some kind of reptile, without hair    (can you spot the typo?)```  | **llama**<br>some kind of mammal, with hair<br>**ppython**<br>some kind of reptile, without hair (can you spot the typo?) |
Note that you need a space in front of the defined term.

## Preformatted Text
Block containing preformatted text are suitable for source code snippets, notes and examples. Use three curly braces wrapped around the text to define a block quote. The curly braces need to be on a separate line.

|                       Wiki Markup                      |                    Display                    |
|:------------------------------------------------------:|:---------------------------------------------:|
| ```{{{ def HelloWorld():     print '''Hello World''' }}}```  | `def HelloWorld():     print '''Hello World'''` |
Note that this kind of block is also used for selecting lines that should be processed through [WikiProcessors](/group/rtgwg/WikiProcessors).

## Blockquotes
In order to mark a paragraph as blockquote, indent that paragraph with two spaces.
|                      Wiki Markup                     |                        Display                       |
|:----------------------------------------------------:|:----------------------------------------------------:|
| `Paragraph This text is a quote from someone else.`  | Paragraph<br>This text is a quote from someone else. |

## Discussion Citations
To delineate a citation in an ongoing discussion thread, such as the ticket comment area, email-like citation marks (">", ">>", etc.) may be used.
|                                                   Wiki Markup                                                   |                                                    Display                                                    |
|:---------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------:|
|``` >> Someone's original text > Someone else's reply text >  - which can be any kind of Wiki markup My reply text ``` | Someone's original text<br>Someone else's reply text<br>which can be any kind of Wiki markup<br>My reply text |

## Tables
### Complex Tables
If the possibilities offered by the simple pipe-based markup ('
') for tables described above are not enough for your needs, you can create more elaborate tables by using [WikiProcessor based tables](/group/rtgwg/WikiProcessors).

## Links
Hyperlinks are automatically created for [WikiPageNames](/group/rtgwg/WikiPageNames) and URLs. WikiPageLinks can be disabled by prepending an exclamation mark ('!'), such as `!WikiPageLink`.

|                    Wiki Markup                   |                     Display                    |
|:------------------------------------------------:|:----------------------------------------------:|
|` TitleIndex, http://www.edgewall.com/, !NotAlink`  | TitleIndex, http://www.edgewall.com/, NotAlink |

Links can be given a more descriptive title by writing the link followed by a space and a title and all this inside square brackets. If the descriptive title is omitted, then the explicit prefix is discarded, unless the link is an external link. This can be useful for wiki pages not adhering to the [WikiPageNames](/group/rtgwg/WikiPageNames) convention.

|                                                        Wiki Markup                                                        |                           Display                          |
|:-------------------------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------:|
|  ```* [http://www.edgewall.com Edgewall Software]  <br>* [wiki:TitleIndex Title Index]   <br>* [wiki:TitleIndex]   <br>* [wiki:ISO9000]```  | [Edgewall Software](http://www.edgewall.com/))<br>Title Index<br>TitleIndex<br>ISO9000? | |


Following the [WikiCreole](https://trac.edgewall.org/wiki/WikiCreole) trend, the descriptive title can also be specified by writing the link followed by a pipe ('|') and a title and all this inside *double* square brackets.

|  ```* [[http://www.edgewall.com\|Edgewall Software]]  <br>* [[wiki:TitleIndex\|Title Index]]    or even [[TitleIndex\|Title Index]]  <br>* [[wiki:TitleIndex]]    ''' but not ![[TitleIndex]]! '''  <br>* [[ISO9000]]```  | [Edgewall Software](http://www.edgewall.com/)<br>Title Index or even Title Index<br>TitleIndex but not [[TitleIndex]]!<br>ISO9000? |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|

**Note:** the [WikiCreole](https://trac.edgewall.org/wiki/WikiCreole) style for links is quick to type and certainly looks familiar as it is the one used on Wikipedia and in many other wikis. Unfortunately it conflicts with the syntax for macros. So in the rare case when you need to refer to a page which is named after a macro (typical examples being TitleIndex, [InterTrac](/group/rtgwg/InterTrac) and [InterWiki](/group/rtgwg/InterWiki)), by writing [[TitleIndex]] you will actually call the macro instead of linking to the page.

## TracLinks
Wiki pages can link directly to other parts of the Trac system. Pages can refer to tickets, reports, changesets, milestones, source files and other Wiki pages using the following notations:
|                                                                                                                                       Wiki Markup                                                                                                                                       |                                                                                                                    Display                                                                                                                    |
|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  ```* Tickets: #1 or ticket:1  <br>* Reports: {1} or report:1  <br>* Changesets: r1, [1] or changeset:1  <br>* ...  <br>* targeting other Trac instances,     so called InterTrac links:    <br>   - Tickets: #Trac1 or Trac: ticket:1    <br>   - Changesets: [Trac1] or Trac:changeset:1```  | Tickets: #1 or ticket:1<br>Reports: {1} or report:1<br>Changesets: r1, [1] or changeset:1<br>...<br>targeting other Trac instances, so called [InterTrac](/group/rtgwg/InterTrac) links:<br>Tickets: #Trac1 or Trac: ticket:1<br>Changesets: [Trac1] or Trac:changeset:1 |


There are many more flavors of Trac links, see [TracLinks](/group/rtgwg/TracLinks) for more in-depth information and a reference for all the default link resolvers.

## Setting Anchors
An anchor, or more correctly speaking, an [anchor name](https://www.w3.org/TR/REC-html40/struct/links.html#h-12.2.1) can be added explicitly at any place in the Wiki page, in order to uniquely identify a position in the document:

`[=#point1]`

This syntax was chosen to match the format for explicitly naming the header id documented above. For example:

`== Long title == #title`

It is also very close to the syntax for the corresponding link to that anchor:

`[#point1]`

Optionally, a label can be given to the anchor:

`[[=#point1 '''Point 1''']]`

|                                 Wiki Markup                                 |                        Display                        |
|:---------------------------------------------------------------------------:|:-----------------------------------------------------:|
| ```[#point2 jump to the second point] <br> ...  <br>Point2:  [=#point2] Jump here```  | jump to the second point<br>...<br>Point2:  Jump here |


For more complex anchors (eg when a custom title is wanted), you can use the Span macro: `[[span(id=point2, class=wikianchor, title=Point 2, ^(2)^)]]`.

## Escaping Links, WikiPageNames and other Markup
You may avoid making hyperlinks out of [TracLinks](/group/rtgwg/TracLinks) by preceding an expression with a single exclamation mark ('!').
|                                                                            Wiki Markup                                                                           |                                                                       Display                                                                       |
|:----------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------:|
|  ```!NoHyperLink  <br>!#42 is not a link``` <br> <br>```Various forms of escaping for list markup:  <br>^^- escaped minus sign \\  <br>^^1. escaped number  \\  <br>^^* escaped asterisk sign```  | NoHyperLink #42 is not a link<br><br><br>Various forms of escaping for list markup:<br>- escaped minus sign<br>1. escaped number<br>* escaped asterisk sign |

## Images
Urls ending with `.png`, `.gif` or `.jpg` are no longer automatically interpreted as image links, and converted to `<img>` tags.

You now have to use the [[Image]] macro. The simplest way to include an image is to upload it as attachment to the current page, and put the filename in a macro call like `[[Image(picture.gif)]]`.

In addition to the current page, it is possible to refer to other resources:

- `[[Image(wiki:WikiFormatting:picture.gif)]]` (referring to attachment on another page)
- `[[Image(ticket:1:picture.gif)]]` (file attached to a ticket)
- `[[Image(htdocs:picture.gif)]]` (referring to a file inside the [environment](/group/rtgwg/TracEnvironment) `htdocs` directory)
- `[[Image(source:/trunk/trac/htdocs/trac_logo_mini.png)]]` (a file in repository)

|                   Wiki Markup                  | Display |
|:----------------------------------------------:|:-------:|
| `[[Image(htdocs:../common/trac_logo_mini.png)]]` |   ![trac_logo_mini.png](/trac_logo_mini.png)      |

See [WikiMacros](/group/rtgwg/WikiMacros) for further documentation on the `[[Image()]]` macro, which has several useful options (`title=`, `link=`, etc.)
## Macros
Macros are custom functions to insert dynamic content in a page.

|         Wiki Markup        |                                     Display                                     |
|:--------------------------:|:-------------------------------------------------------------------------------:|
| `[[RecentChanges(Trac,3)]]`  | <br>**05/11/16**<br>[TracRepositoryAdmin](/group/rtgwg/TracRepositoryAdmin) (diff)<br>[TracIni](/group/rtgwg/TracIni) (diff)<br>[TracWiki](/group/rtgwg/TracWiki) (diff) |

See [WikiMacros](/group/rtgwg/WikiMacros) for more information, and a list of installed macros.

The detailed help for a specific macro can also be obtained more directly by appending a "?" to the macro name.

|   Wiki Markup   |                                                                                                                                                                                              Display                                                                                                                                                                                              |
|:---------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| `[[MacroList?]]`  | <br>**[[MacroList]]**<br>Display a list of all installed Wiki macros, including documentation if available.<br>Optionally, the name of a specific macro can be provided as an argument. In that case, only the documentation for that macro will be rendered.<br>Note that this macro will not be able to display the documentation of macros if the `PythonOptimize` option is enabled for mod_python! |

## Processors
Trac supports alternative markup formats using [WikiProcessors](/group/rtgwg/WikiProcessors). For example, processors are used to write pages in [reStructuredText](/group/rtgwg/WikiResrtucturedText) or [HTML](/group/rtgwg/WikiHTML).

|                                          Wiki Markup                                         |  Display  |
|:--------------------------------------------------------------------------------------------:|:---------:|
| Example 1: HTML {{{ #!html <h1 style = " (text-align : right ; color : blue) " >  HTML Test </h1> }}}  | <h1 style=" (text-align: right; color: blue) ">  HTML Test </h1>  |


| Wiki Markup                                                                                                             | Display                                                                                              |
|-------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| ```{{{ #!python class Test:      def __init__(self):         print "Hello World" if __name__ == '__main__':    Test() }}}```  | ```class Test:     def __init__(self):         print "Hello World" if __name__ == '__main__':    Test()``` |

See [WikiProcessors](/group/rtgwg/WikiProcessors) for more information.

## Comments
Comments can be added to the plain text. These will not be rendered and will not display in any other format than plain text.
|                            Wiki Markup                           |       Display      |
|:----------------------------------------------------------------:|:------------------:|
| ```Nothing to {{{ #!comment Your comment for editors here }}} see```.  | Nothing to<br>see. |

## Miscellaneous 
|                                                  Wiki Markup                                                 |                                    Display                                   |
|:------------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------:|
| Horizontal line:<br>```Four or more dashes will be replaced  by a horizontal line ( - - -) ---- See?```              | Four or more dashes will be replaced by a horizontal line (<HR>)<br><br>See? |
| Two examples of line breaks:<br>`"macro" style [[BR]] line break` <br>or:<br>`!WikiCreole style \\ line\\break`  | "macro" style<br>line break<br>WikiCreole style<br>line<br>break             |
  
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-22.*
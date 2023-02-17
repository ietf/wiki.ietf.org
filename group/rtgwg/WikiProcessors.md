---
title: WikiProcessors
description: 
published: true
date: 2023-01-09T22:20:18.001Z
tags: 
editor: markdown
dateCreated: 2022-12-22T20:00:47.713Z
---

# Wiki Processors
Processors are [WikiMacros](/group/rtgwg/WikiMacros) designed to provide alternative markup formats for the [Wiki engine](/group/rtgwg/TracWiki). Processors can be thought of as macro functions to process user-edited text.

Wiki processors can be used in any Wiki text throughout Trac, such as:

- syntax highlighting or for rendering text verbatim
- rendering Wiki markup inside a context, like inside < div > blocks or < span > or within < td > or < th > table cells
- using an alternative markup syntax, like raw [HTML](/group/rtgwg/WikiHTML) and [Restructured Text](/group/rtgwg/WikiRestructuredText) or [textile](https://www.booked.net/textism.html)

## Using Processors
To use a processor on a block of text, first delimit the lines using a Wiki *code block:*
```
{{{ 
The lines
that should be processed...
}}}
```

Immediately after the {{{ or on the line just below, add #! followed by the processor name:
```
{{{
#!processorname
The lines
that should be processed...
}}}
```
This is the "shebang" notation, familiar to most UNIX users.

Besides their content, some Wiki processors can also accept parameters, which are then given as key=value pairs after the processor name and on the same line. If value has to contain space, as it's often the case for the style parameter, a quoted string can be used (key="value with space").

As some processors are meant to process Wiki markup, it's quite possible to nest processor blocks. You may want to indent the content of nested blocks for increased clarity, this extra indentation will be ignored when processing the content.
## Examples

|                          Wiki Markup                          |      Display     |
|:-------------------------------------------------------------:|:----------------:|
| Example 1: Inserting raw HTML                                 |                  |
| `{{{ #!html <h1 style="color: grey">This is raw HTML</h1> }}}`  | <h1 style="color: grey">This is raw HTML</h1>  |


| Example 2: Highlighted Python code in a <div> block with custom style                                                                                                |                                                                                 |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| `{{{#!div style="background: #ffd; border: 3px ridge"  This is an example of embedded "code" block:    {{{   #!python   def hello():       return "world"   }}}  }}}`  | This is an example of embedded "code" block:<br>def hello():     return "world" |

  |
  
  Example 3: Searching tickets from a wiki page, by keywords.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |   |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---|
| `{{{ #!html <form action="/query" method="get"><div> <input type="text" name="keywords" value="~" size="30"/> <input type="submit" value="Search by Keywords"/> <!-- To control what fields show up use hidden fields <input type="hidden" name="col" value="id"/> <input type="hidden" name="col" value="summary"/> <input type="hidden" name="col" value="status"/> <input type="hidden" name="col" value="milestone"/> <input type="hidden" name="col" value="version"/> <input type="hidden" name="col" value="owner"/> <input type="hidden" name="col" value="priority"/> <input type="hidden" name="col" value="component"/> --> </div></form> }}}`  |   |
  
  ## Available Processors
  The following processors are included in the Trac distribution:
  | `#!default`     | Present the text verbatim in a preformatted text block. This is the same as specifying no processor name (and no `#!`)                                                                                    |
|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `#!comment`     | Do not process the text in this section, i.e. contents exist only in the plain text - not in the rendered page.                                                                                         |
| `#!rtl`         | Introduce a Right-To-Left block with appropriate CSS direction and styling (since 0.12.2)                                                                                                               |
|               |                                                                                                                                                                                                         |
|  **HTML related** |                                                                                                                                                                                                         |
| `#!html`        | Insert custom HTML in a wiki page.                                                                                                                                                                      |
| `#!htmlcomment` | Insert an HTML comment in a wiki page (since 0.12).                                                                                                                                                     |
|               | Note that `#!html` blocks have to be self-contained, i.e. you can't start an HTML element in one block and close it later in a second block. Use the following processors for achieving a similar effect. |
| `#!div`         | Wrap an arbitrary Wiki content inside a <div> element (since 0.11).                                                                                                                                     |
| `#!span`        | Wrap an arbitrary Wiki content inside a <span> element (since 0.11).                                                                                                                                    |
| `#!td`          | Wrap an arbitrary Wiki content inside a <td> element (since 0.12)                                                                                                                                       |
| `#!th`          | Wrap an arbitrary Wiki content inside a <th> element (since 0.12)                                                                                                                                       |
| `#!tr`          | Can optionally be used for wrapping `#!td` and `#!th` blocks, either for specifying row attributes or better visual grouping (since 0.12)                                                                   |
| `#!table`       | Can optionally be used for wrapping `#!tr`, `#!td` and `#!th` blocks, for specifying table attributes. One current limitation however is that tables cannot be nested. (since 0.12)                           |
|               | See [WikiHtml](/group/rtgwg/WikiHTML) for example usage and more details about these processors.                                                                                                                                 |
|               |                                                                                                                                                                                                         |
| **Other Markups** |                                                                                                                                                                                                         |
| `#!rst`         | Trac support for Restructured Text. See [WikiRestructuredText](/group/rtgwg/WikiRestructuredText).                                                                                                                                           |
| `#!textile`     | Supported if [Textile](http://cheeseshop.python.org/pypi/textile) is installed. See a [Textile](http://cheeseshop.python.org/pypi/textile) reference.                                                                                                                                             |
  
  |                                                                         
  **Code Highlighting Support **                                                                       |                                                                                                                                                                                                                                                                                                                           |
|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| `#!c`<br>`#!cp`p (C++)<br>`#!python`<br>`#!perl`<br>`#!ruby`<br>`#!php`<br>`#!asp`<br>`#!java`<br>`#!js` (Javascript)<br>`#!sql`<br>`#!xml` (XML or HTML)<br>`#!sh` (Bourne/Bash shell)<br>etc. | Trac includes processors to provide inline syntax highlighting for source code in various languages.<br><br>Trac relies on external software packages for syntax coloring, like [Pygments](http://pygments.org/).<br><br>See [TracSyntaxColoring](/group/rtgwg/TracSyntaxColoring) for information about which languages are supported and how to enable support for more languages. |
  
  Using the MIME type as processor, it is possible to syntax-highlight the same languages that are supported when browsing source code.
  
  |                                                                                                                                                                                    MIME Type Processors                                                                                                                                                                                    |                                                                                                                             |
|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------------------------------------------:|
| Some examples:<br>```{{{ #!text/html <h1>text</h1> }}}```                                                                                                                                                                                                                                                                                                                                        | The result will be syntax highlighted HTML code:<br><h1>text</h1> <br>The same is valid for all other mime types supported. |
| `{{{ #!diff --- Version 55 +++ Version 56 @@ -115,8 +115,9 @@      name='TracHelloWorld', version='1.0',      packages=find_packages(exclude=['*.tests*']), -    entry_points = """ -        [trac.plugins] -        helloworld = myplugs.helloworld -    """, +    entry_points = { +        'trac.plugins': [ +            'helloworld = myplugs.helloworld', +        ], +    },  ) }}}`  | `#!diff` has a particularly nice renderer:                                                          |
  
  For more processor macros developed and/or contributed by users, visit the [Trac Hacks](http://trac-hacks.org/wiki/WikiStart) community site.

Developing processors is no different from Wiki macros. In fact, they work the same way, only the usage syntax differs. See WikiMacros#DevelopingCustomMacros for more information.

  ---
  
See also: [WikiMacros](/group/rtgwg/WikiMacros), [WikiHtml](/group/rtgwg/WikiHTML), [WikiRestructuredText](/group/rtgwg/WikiRestructuredText), [TracSyntaxColoring](/group/rtgwg/TracSyntaxColoring), [WikiFormatting](/group/rtgwg/WikiFormatting), [TracGuide](/group/rtgwg/TracGuide)
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2023-01-09.*
---
title: Wiki Restructured Text
description: 
published: true
date: 2023-01-03T21:19:13.354Z
tags: 
editor: markdown
dateCreated: 2022-12-22T21:08:10.151Z
---

# reStructuredText Support in Trac
## Introduction
Trac supports [reStructuredText (RST)](https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html) as an alternative to wiki markup where [WikiFormatting](/group/rtgwg/WikiFormatting) is used.

From the reStucturedText webpage:

"reStructuredText is an easy-to-read, what-you-see-is-what-you-get plaintext markup syntax and parser system. It is useful for in-line program documentation (such as Python docstrings), for quickly creating simple web pages, and for standalone documents. reStructuredText is designed for extensibility for specific application domains."

If you want a file from your Subversion repository to be displayed as reStructuredText in the Trac source browser, set `text/x-rst` as the value for the Subversion property `svn:mime-type`. See [this example](https://trac.edgewall.org/intertrac/source%3A/trunk/INSTALL).
### Requirements
To activate RST support in Trac, install the python docutils package:` easy_install docutils`. If not already available on your operating system, you can download it at the [RST Website](https://docutils.sourceforge.io/rst.html).

Do not use the package manager of your OS, eg `apt-get install python-docutils`, because Trac will not find docutils then.

### More information on RST
- reStructuredText Website -- http://docutils.sourceforge.net/rst.html
- RST Quick Reference -- http://docutils.sourceforge.net/docs/rst/quickref.html
## Using RST in Trac
To specify that a block of text should be parsed using RST, use the *rst* processor.

### TracLinks in reStructuredText
- Trac provides a custom RST directive trac:: to allow [TracLinks](/group/rtgwg/TracLinks) from within RST text.
|                                   Wiki Markup                                  |                             Display                             |
|:------------------------------------------------------------------------------:|:---------------------------------------------------------------:|
| {{{ #!rst This is a reference to \|a ticket\|  .. \|a ticket\| trac:: #42 }}}  | This is a reference to \|a ticket\|  .. \|a ticket\| trac:: #42 |

- Trac allows an even easier way of creating [TracLinks](/group/rtgwg/TracLinks) in RST, using the custom :trac: role.

|                                                Wiki Markup                                                |                                           Display                                          |
|:---------------------------------------------------------------------------------------------------------:|:------------------------------------------------------------------------------------------:|
| {{{ #!rst This is a reference to ticket `#12`:trac:  To learn how to use Trac, see `TracGuide`:trac: }}}  | This is a reference to ticket `#12`:trac:  To learn how to use Trac, see `TracGuide`:trac: |

For a complete example of all uses of the :trac: role, please see [WikiRestructuredTextLinks](/group/rtgwg/WikiRestructuredTextLinks).

### Syntax highlighting in reStructuredText
There is a directive for doing [TracSyntaxColoring](/group/rtgwg/TracSyntazColoring) in RST as well. The directive is called code-block:

|                                               Wiki Markup                                               |                                         Display                                         |
|:-------------------------------------------------------------------------------------------------------:|:---------------------------------------------------------------------------------------:|
| {{{ #!rst  .. code-block:: python     class Test:         def TestFunction(self):            pass  }}}  | .. code-block:: python     class Test:         def TestFunction(self):            pass  |
Note the need to indent the code at least one character after the .. `code-block `directive.

### Wiki Macros in reStructuredText
To enable [Wiki Macros](/group/rtgwg/WikiMacros) in RST, you use the same directive as for syntax highlighting, ie code-block:

|                        Wiki Markup                        |                  Display                  |
|:---------------------------------------------------------:|:-----------------------------------------:|
| {{{ #!rst  .. code-block:: RecentChanges     Trac,3  }}}  | .. code-block:: RecentChanges     Trac,3  |

Or a more concise Wiki Macro-like syntax is also available, using the `:code-block:` role:

|                     Wiki Markup                    |               Display              |
|:--------------------------------------------------:|:----------------------------------:|
| {{{ #!rst  :code-block:`RecentChanges:Trac,3` }}}  | :code-block:`RecentChanges:Trac,3` |

### Bigger RST Example
The example below should be self-explanatory:
|                                                                                                                                                                                                                                            Wiki Markup                                                                                                                                                                                                                                           |                                                                                                                                                                                                                                       Display                                                                                                                                                                                                                                      |
|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| {{{ #!rst FooBar Header <br>============= <br> reStructuredText is **nice**. It has its own webpage_.  <br>A table:  <br>=====  =====  ======    <br>Inputs     Output <br>------------  ------   <br>A      B     A or B <br>=====  =====  ====== <br>False  False  False <br>True   False  True <br>False  True   True <br>True   True   True <br>=====  =====  ======  <br>RST TracLinks <br>-------------  <br>See also ticket `#42`:trac:.  <br>.. _webpage: http://docutils.sourceforge.net/rst.html }}} | FooBar Header <br> ============= <br> reStructuredText is **nice**. It has its own webpage_.  <br>A table: <br> =====  =====  ======    <br>Inputs     Output <br>------------  ------   <br>A      B    A or B <br>=====  =====  ====== <br>False  False  False <br>True   False  True <br>False  True   True <br>True   True   True <br>=====  =====  ======  <br>RST TracLinks <br>-------------  <br> See also ticket `#42`:trac:.  <br>.. _webpage: http://docutils.sourceforge.net/rst.html |

---
See also: [WikiRestructuredTextLinks](/group/rtgwg/WikiRestructuredTextLinks), [WikiProcessors](/group/rtgwg/WikiProcessors), [WikiFormatting](/group/rtgwg/WikiFormatting)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-22.*
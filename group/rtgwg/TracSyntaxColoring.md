---
title: TracSyntaxColoring
description: 
published: true
date: 2023-01-09T22:20:15.554Z
tags: 
editor: markdown
dateCreated: 2023-01-09T22:20:11.123Z
---

# Syntax Coloring of Source Code
Trac supports language-specific syntax highlighting of source code within wiki formatted text in [wiki processors](/group/rtgwg/WikiProcessors) blocks and in the [repository browser](/group/rtgwg/TracBrowser).

To do this, Trac uses external libraries with support for a great number of programming languages.

Currently Trac supports syntax coloring using one or more of the following packages:

- [Pygments](http://pygments.org/), the preferred system, as it covers a wide range of programming languages and other structured texts and is actively supported.
- [GNU Enscript](http://www.codento.com/people/mtr/genscript/), commonly available on Unix, and has an [unsupported version](http://gnuwin32.sourceforge.net/packages/enscript.htm) on Windows; use is deprecated.
- [SilverCity](http://silvercity.sourceforge.net/), legacy system, some versions can be problematic; use is deprecated.

To activate syntax coloring, simply install either one (or more) of these packages. If none of these packages is available, Trac will display the data as plain text.
## About Pygments
Pygments is a highlighting library implemented in pure Python, very fast, easy to extend and [well documented.](http://pygments.org/docs/)

The Pygments default style can specified in the mime-viewer section of your [TracIni](/group/rtgwg/TracIni) file. The default style can be overridden by setting a Style preference on the preferences page.

The list below contains only the most commonly used processors and the [list of supported Pygments lexers](http://pygments.org/docs/lexers/) is growing weekly.

## Syntax Coloring Support
### Known MIME Types 
|        MIME Types       |                         [WikiProcessors](/group/rtgwg/WikiProcessors)                        |
|:-----------------------:|:-------------------------------------------------------------:|
| `application/javascript`  | js                                                            |
| `application/msword`      | doc dot                                                       |
| `application/pdf`         | pdf                                                           |
| `application/postscript`  | ps                                                            |
| `application/rss+xml`     | rss                                                           |
| `application/rtf`         | rtf                                                           |
| `application/x-csh`       | csh                                                           |
| `application/x-dos-batch` | bat batch cmd dos                                             |
| `application/x-genshi`    | genshi                                                        |
| `application/x-sh`        | sh                                                            |
| `application/x-troff`     | nroff roff troff                                              |
| `application/x-yaml`      | yaml yml                                                      |
| `application/xsl+xml`     | xsl                                                           |
| `application/xslt+xml`    | xslt                                                          |
| `image/svg+xml`           | svg                                                           |
| `image/x-icon`            | ico                                                           |
|` model/vrml`              | vrml wrl                                                      |
| `text/css`                | css                                                           |
| `text/html`               | htm html                                                      |
| `text/plain`              | AUTHORS COPYING ChangeLog INSTALL README RELEASE TXT text txt |
| `text/x-ada`              | ada adb ads                                                   |
| `text/x-apacheconf`       | apache apacheconf                                             |
| `text/x-asm`              | asm                                                           |
| `text/x-asp`              | asp                                                           |
| `text/x-awk`              | awk                                                           |
| `text/x-c++hdr`           | H HH c++hdr hh hpp                                            |
| `text/x-c++src`           | C C++ CC c++ c++src cc cpp                                    |
| `text/x-chdr`             | chdr h                                                        |
| `text/x-csharp`           | C# c# cs csharp                                               |
| `text/x-csrc`             | c csrc xs                                                     |
| `text/x-diff`             | diff patch                                                    |
| `text/x-dylan`            | dylan                                                         |
| `text/x-eiffel`           | e eiffel                                                      |
| `text/x-elisp`            | el elisp                                                      |
| `text/x-fortran`          | f fortran                                                     |
| `text/x-haskell`          | haskell hs                                                    |
| `text/x-idl`              | ice idl                                                       |
| `text/x-inf`              | inf                                                           |
| `text/x-ini`              | cfg ini                                                       |
| `text/x-java`             | java                                                          |
| `text/x-ksh`              | ksh                                                           |
| `text/x-lua`              | lua                                                           |
| `text/x-m4`               | m4                                                            |
| `text/x-mail`             | mail                                                          |
| `text/x-makefile`         | GNUMakefile Makefile make makefile mk                         |
| `text/x-nginx-conf`       | nginx nginx-conf                                              |
| `text/x-objc`             | m mm objc                                                     |
| `text/x-ocaml`            | ml mli ocaml                                                  |
| `text/x-pascal`           | pas pascal                                                    |
| `text/x-perl`             | PL perl pl pm                                                 |
| `text/x-php`              | php php3 php4                                                 |
| `text/x-psp`              | psp                                                           |
| `text/x-pyrex`            | pyrex pyx                                                     |
| `text/x-python`           | py python                                                     |
| `text/x-python-doctest`   | pycon python-doctest                                          |
| `text/x-rfc`              | rfc                                                           |
| `text/x-rst`              | rst                                                           |
| `text/x-ruby`             | rb ruby                                                       |
| `text/x-scheme`           | scheme scm                                                    |
| `text/x-sql`              | sql                                                           |
| `text/x-tcl`              | tcl                                                           |
| `text/x-tex`              | tex                                                           |
| `text/x-textile`          | textile txtl                                                  |
| `text/x-vba`              | bas vb vba                                                    |
| `text/x-verilog`          | v verilog                                                     |
| `text/x-vhdl`             | vhd vhdl                                                      |
| `text/x-zsh`              | zsh                                                           |
| `text/xml`                | xml                                                           |

Note that the rich content may be directly rendered instead of syntax highlighted. This usually depends on which auxiliary packages are installed and on which components are activated in your setup. For example a `text/x-rst` document will be rendered via `docutils` if it is installed and the `trac.mimeview.rst.ReStructuredTextRenderer` is not disabled, and will be syntax highlighted otherwise.

Similarly, a document with the mimetype `text/x-trac-wiki` is rendered using the Trac wiki formatter, unless the `trac.mimeview.api.WikiTextRenderer` component is disabled.

HTML documents are directly rendered only if the `render_unsafe_html` settings are enabled in your [TracIni](/group/rtgwg/TracIni) file. Those settings are present in multiple sections, as there are different security concerns depending where the document comes from. If you want to ensure that an HTML document gets syntax highlighted and not rendered, use the `text/xml` mimetype.

If a mimetype property such as `svn:mime-type` is set to `text/plain`, there is no coloring even if the file is of a known type, like java.
### List of Languages Supported, by Highlighter
This list is only indicative.

|                 | SilverCity | Enscript | Pygments |
|:---------------:|:----------:|:--------:|:--------:|
| Ada             |            |     ✓    |          |
| Asm             |            |     ✓    |          |
| Apache Conf     |            |          |     ✓    |
| ASP             |      ✓     |     ✓    |          |
| C               |      ✓     |     ✓    |     ✓    |
| C#              |            |   ✓ (1)  |     ✓    |
| C++             |      ✓     |     ✓    |     ✓    |
| CMake           |      ?     |     ?    |     ✓    |
| Java            |    ✓ (2)   |     ✓    |     ✓    |
| Awk             |            |     ✓    |          |
| Boo             |            |          |     ✓    |
| CSS             |      ✓     |          |     ✓    |
| Python Doctests |            |          |     ✓    |
| Diff            |            |     ✓    |     ✓    |
| Eiffel          |            |     ✓    |          |
| Elisp           |            |     ✓    |          |
| Fortran         |            |   ✓ (1)  |     ✓    |
| Haskell         |            |     ✓    |     ✓    |
| Genshi          |            |          |     ✓    |
| HTML            |      ✓     |     ✓    |     ✓    |
| IDL             |            |     ✓    |          |
| INI             |            |          |     ✓    |
| Javascript      |      ✓     |     ✓    |     ✓    |
| Lua             |            |          |     ✓    |
| m4              |            |     ✓    |          |
| Makefile        |            |     ✓    |     ✓    |
| Mako            |            |          |     ✓    |
| Matlab (3)      |            |     ✓    |     ✓    |
| Mygthy          |            |          |     ✓    |
| Objective-C     |            |     ✓    |     ✓    |
| OCaml           |            |          |     ✓    |
| Pascal          |            |     ✓    |     ✓    |
| Perl            |      ✓     |     ✓    |     ✓    |
| PHP             |      ✓     |          |     ✓    |
| PSP             |      ✓     |          |          |
| Pyrex           |            |     ✓    |          |
| Python          |      ✓     |     ✓    |     ✓    |
| Ruby            |      ✓     |   ✓ (1)  |     ✓    |
| Scheme          |            |     ✓    |     ✓    |
| Shell           |            |     ✓    |     ✓    |
| Smarty          |            |          |     ✓    |
| SQL             |      ✓     |     ✓    |     ✓    |
| Troff           |            |     ✓    |     ✓    |
| TCL             |            |     ✓    |          |
| Tex             |            |     ✓    |     ✓    |
| Verilog         |    ✓ (2)   |     ✓    |          |
| VHDL            |            |     ✓    |          |
| Visual Basic    |            |     ✓    |     ✓    |
| VRML            |            |     ✓    |          |
| XML             |      ✓     |          |     ✓    |

*(1)  Not included in the Enscript distribution. Additional highlighting rules can be obtained for [Ruby](http://neugierig.org/software/ruby/),[C#](http://wiki.hasno.info/index.php/Csharp.st),[Fortran 90x/2003](http://wiki.hasno.info/index.php/F90.st).*

*(2) since Silvercity 0.9.7 released on 2006-11-23.*

*(3) By default `.m` files are considered Objective-C files. In order to treat `.m` files as MATLAB files, add "text/matlab:m" to the "mime_map" setting in the [mimeviewer] section of [trac.ini.](/group/rtgwg/TracIni)*

---
See also: [WikiProcessors](/group/rtgwg/WikiProcessors), [WikiFormatting](/group/rtgwg/WikiFormatting), [TracWiki](/group/rtgwg/TracWiki), [TracBrowser](/group/rtgwg/TracBrowser)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2023-01-09.*
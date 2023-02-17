---
title: YANG review tools
description: 
published: true
date: 2022-12-20T20:34:09.468Z
tags: 
editor: markdown
dateCreated: 2022-12-20T20:34:04.003Z
---

# YANG review tools

Some tools can help you to check your YANG documents and YANG modules. The document "Guidelines for Authors and Reviewers of YANG Data Model Documents" [RFC8407] for example, requires that a YANG module adhere to the syntax rules of YANG 1 or YANG 1.1.

There is no requirement that a YANG module passes a specific YANG compiler. The requirement is that the syntax is correct.

So the following is not a promotion of any specific tool, but rather a pointer to a tool that is used by YANG reviewers:

- `pyang`
  -  `pyang` is an open source tool, which can be downloaded at https://github.com/mbj4668/pyang
  -  `pyang` has a flag `--ietf` that checks RFC8407 rules. 
- `yanglint`
  -  `yanglint` is an open source tool, part of the `libyang` project, which can be downloaded at https://github.com/CESNET/libyang 
- `yangvalidator.com`
  -  [yangvalidator](https://www.yangvalidator.com/) is an online tool that uses various YANG compilers to check the module 
  
## Formatting YANG modules

The RFC editor ensures that all published YANG modules are formatted consistently. To facilitate reviews and lessen the RFC Editor task, authors are recommended to format the modules in Internet Drafts. The RFC editor currently uses pyang to do the formatting. Use the following commands:
```
# ensure that the module fits into the line limits of an I-D
pyang --ietf --max-line-length 69 FILE

# format the module
pyang -f yang --keep-comments --yang-line-length 69 FILE
```

## Checking YANG modules 

The first tool is a python function, xym, which is used to extract all the YANG modules out of a internet-draft. xym is open source, available from https://github.com/YangModels/yang/tree/master/tools/xym. 

```
./xym.py -h
usage: xym.py [-h] [--srcdir SRCDIR] [--dstdir DSTDIR] [--strict STRICT]
              [--debug DEBUG]
              source

Extract model out of an IETF RFC or draft

positional arguments:
  source           The URL or file name of the RFC/draft text from which to
                   get the model

optional arguments:
  -h, --help       show this help message and exit
  --srcdir SRCDIR  Optional directory where to find the source text.Default is
                   './'
  --dstdir DSTDIR  Optional directory where to put the extracted yang
                   module(s)Default is './'
  --strict STRICT  Optional flag that determines syntax enforcement; 'If set
                   to 'True' <CODE BEGINS> / <CODE ENDS> are required; default
                   is 'False'
  --debug DEBUG    Debug level; default is 0
```

The second tool is `rfcstrip`, which is used to extract all the YANG modules out of a internet-draft. `rfcstrip` is open source, available from https://github.com/mbj4668/rfcstrip. 

```
rfcstrip <internet-draft-file-name>

```

The resulting YANG module(s) can then be fed into the pyang or yanglint program for syntax checking, and compliance with ​[RFC8407]: 

```
pyang --ietf <yang-file-name>

yanglint <yang-file-name>

```
[PYANG tutorial](https://code.google.com/p/pyang/wiki/Tutorialt)

[yanglint examples of use](https://github.com/CESNET/libyang/blob/master/tools/lint/examples/README.md)

Last changed on April 29th, 2014 by Benoit Claise 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-10-20. It was migrated from the old Trac wiki on 2022-12-20.*
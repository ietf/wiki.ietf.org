---
title: MIB review tools
description: 
published: true
date: 2022-12-20T00:54:40.555Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:54:36.332Z
---

# MIB review tools 

Some tools can help you to check your MIB documents and MIB modules. The document "Guidelines for Authors and Reviewers of MIB Documents [RFC4181, BCP111]", for example, requires that a MIB module adhere to the syntax rules as per the SMIv2 specification [RFC2578, RFC2579, RFC2580]. 

There is no requirement that a MIB module passes a specific MIB compiler. The requirement is that the syntax is correct. 

So the following is not a promotion of any specific tool, but rather a pointer to a few tools that are often used by MIB reviewers. That does not endorse these specific tools, nor does it mean that other tools might not do a similar or better job at checking. 


## Using smilint to compile MIB modules

```
smilint is part of the open-source libsmi package maintained by Frank Strauss of the Technical University of Braunschweig; see http://www.ibr.cs.tu-bs.de/projects/libsmi/ for more information and downloading instructions. 

The first tool is smistrip to extract all the MIB modules out of a internet-draft or other ASCII based text document. 

   smistrip <internet-draft-file-name>

The resulting MIB module(s) can then be fed into the smilint program for syntax checking. 
By default, the smilint program does only minimal checking, and in a MIB review one generally wishes to run the program at maximum complaint level, discarding only those warnings pertaining to names longer than 32 characters: 

   smilint -m -s -l 6 -i namelength-32 <module>

where <module> is replaced with the file name of the module being compiled. A full pathname is required unless it resides in one of the standard MIB directories (see the program documentation for more information). 

There is a related utility called smidiff that is useful for checking whether updates to a previously-published MIB module conform to the SMIv2 rules on revisions. Command line options similar to those above are recommended. 

An example (using the Internet-Draft that became RFC 3584) for syntax checking the SNMP-COMMUNITY-MIB and then checking any changes since the previous version is as follows: 

First extract the previous version 

   smistrip rfc2576.txt

This generates file SNMP-COMMUNITY-MIB, which we must rename to something like SNMP-COMMUNITY-MIB-RFC2576. Then extract the new MIB module from the Internet-Draft 
   smistrip draft-ietf-snmpv3-coex-v2-04.txt

This generates file SNMP-COMMUNITY-MIB, the new one to be checked 
   smilint -m -s -l 6 -i namelength-32 ./SNMP-COMMUNITY-MIB

If this turns out to be a clean MIB module, we can then check what kind of changes have been made since the previous version as follows 
   smidiff -m -s -l 6 -i namelength-32 ./SNMP-COMMUNITY-MIB-RFC2576 ./SNMP-COMMUNITY-MIB

The output should be checked to ensure that all changes are legal, depending on the level of standards track advancement of the new MIB module. 
For those who are unable or unwilling to compile and install smilint and smidiff locally, there is a WEB service that can be used instead. In order to check a MIB module via the WEB interface, goto http://www.ibr.cs.tu-bs.de/projects/libsmi/tools/ and follow the instructions to fill out the required fields. 
```

## Using SMICng to compile MIB modules  

```
SMICng is a commercial program available from SNMPinfo; see http://www.snmpinfo.com/ for more information. 

As a rule, MIB modules are not compiled directly with SMICng but rather are referenced by a SMICng include file, which mentions the modules from which symbols are imported and contains any module-specific compilation options. For the purposes of doing MIB reviews, selecting maximally picky compilation switches is usually the right thing to do. A sample include file (for the SNMP-COMMUNITY-MIB (using draft-ietf-snmpv3-coex-v2-04.txt which is now RFC 3584) is shown below. 

SMICng comes with a program to extract a MIB module from an internet-draft or other ASCII based text document. 

   mstrip internet-draft-file-name > module-name.mi2

Once you have extracted the MIB module(s), then you can create a ptr to it and the so called .inc or include file. 
   smicmfm module-name.mi2
   smicbmi module-name.mi2

You are now ready to do a syntax check as follows 
   smicng module-name.inc

Let us go through the steps for the SNMP-COMMUNITY-MIB 

   mstrip draft-ietf-snmpv3-coex-v2-04.txt > community.mi2

   smicmfm community.mi2

   smicbmi community.mi2

   smicng community.inc

The MIB doctors often use a more strict checking 

   set smicopts=/CC /CB /CH /CS /C0D /C0F /C0M /C12 /C1S /C1O /C16 /C1G
   smicng community.inc

This may generate Errors and Warnings that are potentially acceptable, but they can also indicate serious trouble. Please evaluate such errors and warnings and if in doubt, check with the MIB doctors or on the ietfmibs@ietf.org mailing list. 

The include file generated above looks as follows: 

-- file: community.inc - SNMP-COMMUNITY-MIB

-- Modules referenced by module SNMP-COMMUNITY-MIB
#condInclude "rfc2578.inc" -- SNMPv2-SMI
#condInclude "rfc2579.inc" -- SNMPv2-TC
#condInclude "rfc3411.inc" -- SNMP-FRAMEWORK-MIB
#condInclude "rfc3413a.inc" -- SNMP-TARGET-MIB
#condInclude "rfc2580.inc" -- SNMPv2-CONF

-- MIB module
#pushOpt
-- Remove strict checking
-- Common Options:
--   C - check size/range present
--   W - don't allow size/range for items in a sequence
--   7 - restrict INTEGER values below 2G-1
--   R - check (in V1) that INDEX objs are read-only
--   S - require (in V2) that IMPORTS be specified for items in compliances
--   B - strong checking for size/range of items in index clause
--#removeOpt "C W 7 R S B"

-- Loosen checking
-- Common Options:
--   4 - allow non-standard access for objects
--   K - allow (in v1) zero valued enums
--   O - allow (in v2) hyphens in labels for enumerated values
--   P - allow (in v2) hyphens in descriptors(identifiers)
--   T - no check (in v2) of proper access for items in groups
--   M - no check (in v2) that all NTs and accessible OTs are in a group
--   F - allow integer/integer32 index items without a range
--   G - allow unused IMPORTS and textual conventions
--   N - no check (in v2) of access of objects in notifications
--   I - use (in v1) the v2 rules for checking ACCESS of index items
--   Z - allow bad table modelling practices
--#addOpt "4 K O P T M F G N I Z"

#condInclude "community.mi2" -- SNMP-COMMUNITY-MIB
#condExcludeModule SNMP-COMMUNITY-MIB 0
#popOpt
```


--------------------------------------------------------------------------------
Last changed on June 23, 2010 by Dan Romascanu dromasca@avaya.com 


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-06-23. It was migrated from the old Trac wiki on 2022-12-19.*
---
title: Boilerplate for IETF MIB Documents
description: 
published: true
date: 2022-12-20T00:47:36.329Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:47:33.296Z
---

# Boilerplate for IETF MIB Documents

This page defines the "standard" introductionary text to be used in IETF MIB documents. The text should be used in all new IETF standards-track MIB documents.  This text may need changes if new RFCs are published, but the SMIv2 and SNMPv3 are now at STD level, so we do not expect changes in the near future. In general, if you think this text needs changes, please send an email message to the ietfmibs@ietf.org mailing list or to the responsible Area Director, bclaise@cisco.com. 


## Formatted Text 

1. The Internet-Standard Management Framework
&nbsp;
   For a detailed overview of the documents that describe the current
   Internet-Standard Management Framework, please refer to section 7 of
   RFC 3410 [RFC3410].
&nbsp;

   Managed objects are accessed via a virtual information store, termed
   the Management Information Base or MIB.  MIB objects are generally
   accessed through the Simple Network Management Protocol (SNMP).
   Objects in the MIB are defined using the mechanisms defined in the
   Structure of Management Information (SMI).  This memo specifies a MIB
   module that is compliant to the SMIv2, which is described in STD 58,
   RFC 2578 [RFC2578], STD 58, RFC 2579 [RFC2579] and STD 58, RFC 2580
   [RFC2580].

## Formatted References 

```
X. Normative References

   [RFC2578] McCloghrie, K., Perkins, D., Schoenwaelder, J., Case, J.,
             Rose, M. and S. Waldbusser, "Structure of Management
             Information Version 2 (SMIv2)", STD 58, RFC 2578, April
             1999.

   [RFC2579] McCloghrie, K., Perkins, D., Schoenwaelder, J., Case, J.,
             Rose, M. and S. Waldbusser, "Textual Conventions for
             SMIv2", STD 58, RFC 2579, April 1999.

   [RFC2580] McCloghrie, K., Perkins, D., Schoenwaelder, J., Case, J.,
             Rose, M. and S. Waldbusser, "Conformance Statements for
             SMIv2", STD 58, RFC 2580, April 1999.

Y. Informative References

   [RFC3410] Case, J., Mundy, R., Partain, D. and B. Stewart,
             "Introduction and Applicability Statements for Internet-
             Standard Management Framework", RFC 3410, December 2002.
```

Last changed on January 29th, 2012 by Benoit Claise bclaise@cisco.com


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-01-18. It was migrated from the old Trac wiki on 2022-12-19.*
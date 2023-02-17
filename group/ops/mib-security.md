---
title: Security Guidelines for IETF MIB Modules
description: 
published: true
date: 2022-12-20T00:50:28.220Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:50:24.308Z
---

# Security Guidelines for IETF MIB Modules 

This page defines guidelines for writing a security section for IETF MIB documents. The guidelines should be used in all new IETF standards-track MIB documents.

This text may need changes if new RFCs are published. In general, if you think this text needs changes, please send an email message to the ietfmibs@ietf.org mailing list or to the responsible Area Director, Ignas Bagdonas. 

Please note that the formatted text below is mostly text that you can re-use in your MIB document. The text prefixed with double dashes is meant as explanatory text for you to either check another good example or to think about how to choose pieces of the text or how to select specific objects to be listed and what sort of aspects to think about. They are just examples to get you started. 

Please be sure to fill in the list of objects (from your specific MIB module) at places where you see <list .... sensitive> 


## Formatted Text

```
-- If not already present for other reasons, then add in the overview
-- or introduction section:

    The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL
    NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED",
    "MAY", and "OPTIONAL" in this document are to be interpreted as
    described in BCP 14 [RFC2119] [RFC8174] when, and only when, they
    appear in all capitals, as shown here.


X. Security Considerations

-- if you have any read-write and/or read-create objects, please
-- describe their specific sensitivity or vulnerability.
-- RFC 2669 has a very good example.

   There are a number of management objects defined in this MIB module
   with a MAX-ACCESS clause of read-write and/or read-create.  Such
   objects may be considered sensitive or vulnerable in some network
   environments.  The support for SET operations in a non-secure
   environment without proper protection opens devices to attack.  
   These are the tables and objects and their sensitivity/vulnerability:

    <list the tables and objects and state why they are sensitive>

-- else if there are no read-write objects in your MIB module

   There are no management objects defined in this MIB module that have
   a MAX-ACCESS clause of read-write and/or read-create.  So, if this
   MIB module is implemented correctly, then there is no risk that an
   intruder can alter or create any management objects of this MIB
   module via direct SNMP SET operations.

-- for all MIB modules you must evaluate whether any readable objects
-- are sensitive or vulnerable (for instance, if they might reveal
-- customer information or violate personal privacy laws such as
-- those of the European Union if exposed to unauthorized parties)

   Some of the objects in this MIB module may be considered sensitive
   or vulnerable in some network environments.  This includes INDEX
   objects with a MAX-ACCESS of not-accessible, and any indices from
   other modules exposed via AUGMENTS.  It is thus important to
   control even GET and/or NOTIFY access to these objects and possibly
   to even encrypt the values of these objects when sending them over
   the network via SNMP.  These are the tables and objects and their
   sensitivity/vulnerability:

    <list the tables and objects and state why they are sensitive>

   SNMP versions prior to SNMPv3 did not include adequate security.
   Even if the network itself is secure (for example by using IPsec),
   there is no control as to who on the secure network is
   allowed to access and GET/SET (read/change/create/delete) the objects
   in this MIB module.

   Implementations SHOULD provide the security features described by the   
   SNMPv3 framework (see [RFC3410]), and implementations claiming compliance 
   to the SNMPv3 standard MUST include full support for authentication and 
   privacy via the User-based Security Model (USM) [RFC3414] with the AES 
   cipher algorithm [RFC3826]. Implementations MAY also provide support for
   the Transport Security Model (TSM) [RFC5591] in combination with a secure 
   transport such as SSH [RFC5592] or TLS/DTLS [RFC6353].

   Further, deployment of SNMP versions prior to SNMPv3 is NOT
   RECOMMENDED.  Instead, it is RECOMMENDED to deploy SNMPv3 and to
   enable cryptographic security.  It is then a customer/operator
   responsibility to ensure that the SNMP entity giving access to an
   instance of this MIB module is properly configured to give access to
   the objects only to those principals (users) that have legitimate
   rights to indeed GET or SET (change/create/delete) them.
```

##  Formatted References 

```
Y. Normative References

   [RFC2119]   Bradner, S., "Key words for use in RFCs to Indicate
               Requirement Levels", BCP 14, RFC 2119, March 1997.

   [RFC8174] Leiba, B., "Ambiguity of Uppercase vs Lowercase 
               in RFC 2119 Key Words", BCP14, RFC8174, May 2017.

   [RFC3414] Blumenthal, U., and B. Wijnen, 
             "User-based Security Model (USM) for version 3 of the
             Simple Network Management Protocol (SNMPv3)", RFC 3414,
             December 2002.

   [RFC3826] Blumenthal, U., Maino, F., and K. McCloghrie,
             "The Advanced Encryption Standard (AES) Cipher 
             Algorithm in the SNMP User-based Security Model",
             RFC 3826, June 2004.

   [RFC5591] Harrington, D., and W. Hardaker,
             "Transport Security Model for the Simple Network 
             Management Protocol (SNMP)", June 2009.

   [RFC5592] Harrington, D., Saloway, J., and W. Hardaker,
             "Secure Shell Transport Model for the Simple Network 
             Management Protocol (SNMP)", June 2009.

   [RFC6353] W. Hardaker, "Transport Layer Security (TLS) Transport 
             Model for the Simple Network Management Protocol (SNMP)",
             July 2011.

Z. Informative References

   [RFC3410] Case, J., Mundy, R., Partain, D. and B. Stewart,
             "Introduction and Applicability Statements for Internet-
             Standard Management Framework", RFC 3410, December 2002.

```

--------------------------------------------------------------------------------

## Security Guidelines for a MIB module with just Textual Conventions 

If your MIB module or MIB document only specifies a set of Textual Conventions, then the following security considerations section is probably good for re-use. 

```
X. Security Considerations

   This module does not define any management objects.  Instead, it
   defines a set of textual conventions which may be used by other MIB
   modules to define management objects.

   Meaningful security considerations can only be written in the MIB
   modules that define management objects.  This document has therefore
   no impact on the security of the Internet.
```

Last changed on 2018-11-27 by Warren Kumari <warren@kumari.net>
      
      
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-11-27. It was migrated from the old Trac wiki on 2022-12-19.*
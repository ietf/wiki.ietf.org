---
title: WriteupKrbCameliaAlt
description: 
published: true
date: 2023-02-19T08:17:01.551Z
tags: 
editor: markdown
dateCreated: 2023-02-19T08:16:57.733Z
---

 An example re-write of the draft-ietf-krb-wg-camellia-cts writeup, using the proposed new template:

  1.  Summary 

The Document Shepherd for this document is Jeffrey Hutzelman. The responsible Area Director is Stephen Farrell.

This document specifies two encryption types and two corresponding checksum types for the Kerberos cryptosystem framework defined in RFC 3961. The new types use the Camellia block cipher in CBC-mode with ciphertext stealing and the CMAC algorithm for integrity protection.

We are requesting publication as an Informational RFC. The authors have requested publication on the standards track; however, there is no consensus within the working group to do so at this time. There is a possibility that a consensus may emerge in the future to adopt one or both of the enctypes defined in this document as mandatory to implement for Kerberos; if that happens, we will likely request that the document be reclassified as a Proposed Standard. However, no such consensus exists at this time.

 2.   Review and Consensus 

This document represents the consensus of the Kerberos Working Group and is the result of an effort which involved both individuals with extensive experience with the Kerberos cryptographic framework and those who have been involved in specifying support for Camellia in other IETF protocols. It has been extensively reviewed and discussed within the working group, and all technical issues raised have been resolved. I have no concerns about the level of review this document has received.

At least one major Kerberos implementor plans to include support for the encryption and checksum types described in this document.

3.    Intellectual Property 

Each author has confirmed conformance with BCPs 78 and 79.

NTT and Mitsubishi Electric have filed a joint IPR statement #1304, related to use of Camellia in Kerberos. Similar disclosures had been filed previously related to IPsec, TLS, S/MIME, and OpenPGP. This issue has been discussed briefly within the working group, and there were no objections to proceeding with this work once the IPR disclosure was filed.

 4.   Other Points 

This document contains a normative reference to RFC3713, an informational document which describes the Camellia cipher. We don't see a problem with this, even if the document is published on the standards track, as this is consistent with current practice within the IETF relating to descriptions of cryptographic algorithms.

This document also contains normative references to two NIST special publications. While these are not IETF documents, we feel they are suitably stable to be used as normative references by a protocol specification.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-09-25. It was migrated from the old Trac wiki on 2023-02-17.*

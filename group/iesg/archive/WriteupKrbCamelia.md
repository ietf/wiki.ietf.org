---
title: WriteupKrbCamelia
description: 
published: true
date: 2023-02-19T08:15:06.655Z
tags: 
editor: markdown
dateCreated: 2023-02-19T08:15:06.655Z
---

 The actual document shepherd writeup for draft-ietf-krb-wg-camellia-cts:

(1) What type of RFC is being requested (BCP, Proposed Standard, Internet Standard, Informational, Experimental, or Historic)? Why is this the proper type of RFC? Is this type of RFC indicated in the title page header?

We are requesting publication as an Informational RFC.

The authors have requested publication on the standards track; however, there is no consensus within the working group to do so at this time. There is a possibility that a consensus may emerge in the future to adopt one or both of the enctypes defined in this document as mandatory to implement for Kerberos; if that happens, we will likely request that the document be reclassified as a Proposed Standard. However, no such consensus exists at this time.

(2) The IESG approval announcement includes a Document Announcement Write-Up. Please provide such a Document Announcement Write-Up. Recent examples can be found in the "Action" announcements for approved documents. The approval announcement contains the following sections:

    Technical Summary

This document specifies two encryption types and two corresponding checksum types for the Kerberos cryptosystem framework defined in RFC 3961. The new types use the Camellia block cipher in CBC-mode with ciphertext stealing and the CMAC algorithm for integrity protection.

    Working Group Summary

This document represents the consensus of the Kerberos Working Group.

    Document Quality

At least one major Kerberos implementor plans to include support for the encryption and checksum types described in this document.

    Personnel

The Document Shepherd for this document is Jeffrey Hutzelman. The responsible Area Director is Stephen Farrell.

(3) Briefly describe the review of this document that was performed by the Document Shepherd. If this version of the document is not ready for publication, please explain why the document is being forwarded to the IESG.

I have reviewed this document, and any issues raised have been resolved to my satisfaction. I believe the document is now ready for IETF-wide review and publication as an RFC.

(4) Does the document Shepherd have any concerns about the depth or breadth of the reviews that have been performed?

This document is the result of an effort which involved both individuals with extensive experience with the Kerberos cryptographic framework and those who have been involved in specifying support for Camellia in other IETF protocols. It has been extensively reviewed and discussed within the working group, and all technical issues raised have been resolved. I have no concerns about the level of review this document has received.

(5) Do portions of the document need review from a particular or from broader perspective, e.g., security, operational complexity, AAA, DNS, DHCP, XML, or internationalization? If so, describe the review that took place.

I don't believe any particular external review is needed for this document.

(6) Describe any specific concerns or issues that the Document Shepherd has with this document that the Responsible Area Director and/or the IESG should be aware of? For example, perhaps he or she is uncomfortable with certain parts of the document, or has concerns whether there really is a need for it. In any event, if the WG has discussed those issues and has indicated that it still wishes to advance the document, detail those concerns here.

I have no particular concerns with this document.

(7) Has each author confirmed that any and all appropriate IPR disclosures required for full conformance with the provisions of BCP 78 and BCP 79 have already been filed. If not, explain why.

All authors have confirmed that any required IPR disclosures have been filed.

(8) Has an IPR disclosure been filed that references this document? If so, summarize any WG discussion and conclusion regarding the IPR disclosures.

I have no particular concerns about this document. NTT and Mitsubishi Electric have filed a joint IPR statement #1304, related to use of Camellia in Kerberos. Similar disclosures had been filed previously related to IPsec, TLS, S/MIME, and OpenPGP. This issue has been discussed briefly within the working group, and there were no objections to proceeding with this work once the IPR disclosure was filed.

(9) How solid is the WG consensus behind this document? Does it represent the strong concurrence of a few individuals, with others being silent, or does the WG as a whole understand and agree with it?

There is consensus within the working group to publish this document.

(10) Has anyone threatened an appeal or otherwise indicated extreme discontent? If so, please summarise the areas of conflict in separate email messages to the Responsible Area Director. (It should be in a separate email because this questionnaire is publicly available.)

There have been no expressions of discontent.

(11) Identify any ID nits the Document Shepherd has found in this document. (See ​http://www.ietf.org/tools/idnits/ and the Internet-Drafts Checklist). Boilerplate checks are not enough; this check needs to be thorough.

This document has been run through the idnits tool, and was reviewed manually for compliance with requirements not checked by the automatic tool.

(12) Describe how the document meets any required formal review criteria, such as the MIB Doctor, media type, and URI type reviews.

No formal review criteria apply to this document.

(13) Have all references within this document been identified as either normative or informative?

References have been split appropriately.

(14) Are there normative references to documents that are not ready for advancement or are otherwise in an unclear state? If such normative references exist, what is the plan for their completion?

There are no normative references to other documents that are not ready for advancement.

(15) Are there downward normative references references (see RFC 3967)? If so, list these downward references to support the Area Director in the Last Call procedure.

This document contains a normative reference to RFC3713, and informational document which describes the Camellia cipher. We don't see a problem with this, even if the document is published on the standards track, as this is consistent with current practice within the IETF relating to descriptions of cryptographic algorithms.

This document also contains normative references to two NIST special publications. While these are not IETF documents, we feel they are suitably stable to be used as normative references by a protocol specification.

(16) Will publication of this document change the status of any existing RFCs? Are those RFCs listed on the title page header, listed in the abstract, and discussed in the introduction? If the RFCs are not listed in the Abstract and Introduction, explain why, and point to the part of the document where the relationship of this document to the other RFCs is discussed. If this information is not in the document, explain why the WG considers it unnecessary.

This document does not change the status of any existing RFCs. As noted in the abstract and introduction, this document does specify new encryption and checksum types to be used within the framework defined by RFC3961. However, it does not make any changes to the framework itself, and so does not update RFC3961.

(17) Describe the Document Shepherd's review of the IANA considerations section, especially with regard to its consistency with the body of the document. Confirm that all protocol extensions that the document makes are associated with the appropriate reservations in IANA registries. Confirm that any referenced IANA registries have been clearly identified. Confirm that newly created IANA registries include a detailed specification of the initial contents for the registry, that allocations procedures for future registrations are defined, and a reasonable name for the new registry has been suggested (see RFC 5226).

This document defines new Kerberos encryption and checksum types, which require assignment of numbers in IANA-managed namespaces. The IANA considerations section correctly identifies the required registrations.

(18) List any new IANA registries that require Expert Review for future allocations. Provide any public guidance that the IESG would find useful in selecting the IANA Experts for these new registries.

This document creates no registries requiring Expert Review.

(19) Describe reviews and automated checks performed by the Document Shepherd to validate sections of the document written in a formal language, such as XML code, BNF rules, MIB definitions, etc.

No part of this document is written in a formal language requiring such verification.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-09-25. It was migrated from the old Trac wiki on 2023-02-17.*
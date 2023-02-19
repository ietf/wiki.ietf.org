---
title: WriteupNeaAsokan
description: 
published: true
date: 2023-02-19T08:11:55.459Z
tags: 
editor: markdown
dateCreated: 2023-02-19T08:11:55.459Z
---

 The actual document shepherd writeup for draft-ietf-nea-asokan:

(1) What type of RFC is being requested (BCP, Proposed Standard, Internet Standard, Informational, Experimental, or Historic)? Why is this the proper type of RFC? Is this type of RFC indicated in the title page header?

Informational is requested and indicated in the title page header.

(2) The IESG approval announcement includes a Document Announcement Write-Up. Please provide such a Document Announcement Write-Up. Recent examples can be found in the "Action" announcements for approved documents. The approval announcement contains the following sections:

   Technical Summary:

The Network Endpoint Assessment protocols are subject to a subtle forwarding attack that has become known as the NEA Asokan Attack. This document describes the attack and countermeasures that may be mounted.

   Working Group Summary:

The WG formed a design team in July 2010 with the goal of recommending a general-purpose counter-measure that would work for both of the PT protocols under specification in the WG. The design team analysis and recommendation is the subject of this document. The recommendation of the design team was presented to the WG at the IETF meeting in November 2010 where it received solid support. The result was confirmed on the mailing list in January 2011, and the recommended counter- measure subsequently incorporated into the two PT protocols specified in the NEA WG. The two PT protocols, PT-TLS and PT- EAP, are separately specified in two standards-track documents, and reference this document as an Informative reference.

   Document Quality:

This document does not specify a protocol. Rather, it describes counter-measures that PT-TLS and PT-EAP can use to mitigate against the NEA Asokan attack. The PT-TLS and PT-EAP specifications describe how these counter-measures should be used in these particular protocols. As described above, this document is the result of active participation from several WG members and received substantive review from the WG.

   Personnel:

Susan Thomson is the Document Shepherd. Stephen Farrell is the Responsible Area Director.

(3) Briefly describe the review of this document that was performed by the Document Shepherd. If this version of the document is not ready for publication, please explain why the document is being forwarded to the IESG.

I have reviewed the document and do not have issues with it.

(4) Does the document Shepherd have any concerns about the depth or breadth of the reviews that have been performed?

No.

(5) Do portions of the document need review from a particular or from broader perspective, e.g., security, operational complexity, AAA, DNS, DHCP, XML, or internationalization? If so, describe the review that took place.

No broader review is known to be needed.

(6) Describe any specific concerns or issues that the Document Shepherd has with this document that the Responsible Area Director and/or the IESG should be aware of? For example, perhaps he or she is uncomfortable with certain parts of the document, or has concerns whether there really is a need for it. In any event, if the WG has discussed those issues and has indicated that it still wishes to advance the document, detail those concerns here.

No concerns. The attack and the need for a counter-measure was thoroughly vetted within the NEA WG.

(7) Has each author confirmed that any and all appropriate IPR disclosures required for full conformance with the provisions of BCP 78 and BCP 79 have already been filed. If not, explain why?

Yes.

(8) Has an IPR disclosure been filed that references this document? If so, summarize any WG discussion and conclusion regarding the IPR disclosures.

No.

(9) How solid is the WG consensus behind this document? Does it represent the strong concurrence of a few individuals, with others being silent, or does the WG as a whole understand and agree with it?

There is strong consensus from the WG. The attack itself was reviewed within the WG at multiple IETF meetings, and the recommendation for a counter-measure made by the design team received strong consensus and has been incorporated into the relevant PT specifications.

(10) Has anyone threatened an appeal or otherwise indicated extreme discontent? If so, please summarise the areas of conflict in separate email messages to the Responsible Area Director. (It should be in a separate email because this questionnaire is publicly available.)

No.

(11) Identify any ID nits the Document Shepherd has found in this document. (See ​http://www.ietf.org/tools/idnits/ and the Internet- Drafts Checklist). Boilerplate checks are not enough; this check needs to be thorough.

None. Idnits tool flags no issues.

(12) Describe how the document meets any required formal review criteria, such as the MIB Doctor, media type, and URI type reviews.

Not Applicable.

(13) Have all references within this document been identified as either normative or informative?

Yes. All references are informative.

(14) Are there normative references to documents that are not ready for advancement or are otherwise in an unclear state? If such normative references exist, what is the plan for their completion?

No. There are no normative references.

(15) Are there downward normative references (see RFC 3967)? If so, list these downward references to support the Area Director in the Last Call procedure.

No.

(16) Will publication of this document change the status of any existing RFCs? Are those RFCs listed on the title page header, listed in the abstract, and discussed in the introduction? If the RFCs are not listed in the Abstract and Introduction, explain why, and point to the part of the document where the relationship of this document to the other RFCs is discussed. If this information is not in the document, explain why the WG considers it unnecessary.

No.

(17) Describe the Document Shepherd's review of the IANA considerations section, especially with regard to its consistency with the body of the document. Confirm that all protocol extensions that the document makes are associated with the appropriate reservations in IANA registries. Confirm that any referenced IANA registries have been clearly identified. Confirm that newly created IANA registries include a detailed specification of the initial contents for the registry, that allocations procedures for future registrations are defined, and a reasonable name for the new registry has been suggested (see RFC 5226).

Not applicable. The document specifies no actions for IANA.

(18) List any new IANA registries that require Expert Review for future allocations. Provide any public guidance that the IESG would find useful in selecting the IANA Experts for these new registries.

Not applicable. The document specifies no actions for IANA.

(19) Describe reviews and automated checks performed by the Document Shepherd to validate sections of the document written in a formal language, such as XML code, BNF rules, MIB definitions, etc.

Not applicable. None of the document is written in a formal language.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-09-25 It was migrated from the old Trac wiki on 2023-02-17.*
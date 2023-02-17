---
title: 92nd IETF Dallas -- LISP WG Summary
description: 
published: true
date: 2022-12-16T16:30:16.338Z
tags: 
editor: markdown
dateCreated: 2022-12-16T16:30:11.591Z
---

# 92nd IETF Dallas -- LISP WG Summary
From the last meeting, the WG has pushed forward several documents. The LISP Introduction document, is now under IESG review. A new version of the document is expected soon, which should solve all of the DISCUSS of the document. The LISP-DDT document went through WG Last Call, and is now waiting the shepherd writeup. The LISP impact document is currently under WG Last Call. During the meeting the chairs queried the authors of the LISP-Sec and LISP-LCAF documents in order to check the status and next steps of these documents. Discussion resulted in the documents to be reviewed thoroughly by the chairs before moving them forward.

## Activity concerning WG Documents

  -  **LISP Threats (http://tools.ietf.org/html/draft-ietf-lisp-threats):** The LISP Threats document has been re-organized in two parts: the threats model and the mitigation. The threats model has been discussed back in the previous meeting and was stable. The newly introduced mitigation section has received positive feedback. Upon request from authors a consensus call for WG Last Call has been made by the chairs, resulting in the room expressing consensus to move the document forward. WG Last Call will be issued on the mailing list to confirm such consensus. 

  -  **LISP Impact (http://tools.ietf.org/html/draft-ietf-lisp-impact):** Until last meeting this document was an individual submission. Since then the document has been adopted as WG item, and after integrating the received feedback it is now in WG Last Call. The chairs checked the room for consensus on this Last Call. The room expressed clear consensus on moving the document forward. 

  -  **LISP Data-Plane Confidentiality ([http://tools.ietf.org/html/draft-ietf-lisp-crypto]):** This document has been adopted right after the last meeting. Feedback, from Watson Ladd (security area) suggested to have less encryption options and confirmed that the re-keying logic is good. The document needs to discuss its interaction with LISP-Sec and the security mechanisms already present in LISP-DDT. One implementation is existing, but more is needed for interoperability experiments. 

## Activity on non-WG Documents

  -  **LISP Signal-Free Multicast (http://tools.ietf.org/html/draft-farinacci-lisp-signal-free-multicast):** Quick updat, consisting in the description of how signalling-free multicast is used when using the LISP Replication Engineering logic proposed in http://tools.ietf.org/html/draft-coras-lisp-re. 

  -  **A Yang Model for LISP ([http://tools.ietf.org/html/ermagan-lisp-yang]):** This document proposes a YANG model for LISP. At this stage it is mostly work in progress, however, it generated nice discussion on what is the best way to actually implement such model. Should each LISP element (e.g., ITR, ETR, MS, etc) be a different feature of the same module or is it better to split everything in several modules? Suggestion to answer this question is to contact YANG experts, so to have their feedback. 


Details in the proceedings of the WG Meeting: http://www.ietf.org/proceedings/92/lisp.html 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-03-25. It was migrated from the old Trac wiki on 2022-12-16.*
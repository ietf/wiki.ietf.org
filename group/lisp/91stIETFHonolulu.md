---
title: 91st IETF Honolulu -- LISP WG Summary
description: 
published: true
date: 2022-12-16T16:28:16.406Z
tags: 
editor: markdown
dateCreated: 2022-12-16T16:28:12.306Z
---

# 91st IETF Honolulu -- LISP WG Summary
From the last meeting the WG has made important progresses. The LISP Introduction document, which lingered for a while as WG item, is now done. At the same time almost all milestones are already covered by existing documents.

## Activity concerning WG Documents

 -   **LISP Introduction ([http://tools.ietf.org/html/draft-ietf-lisp-introduction]):** Since the last meeting this document has undergone 5 revisions, completely restructuring its content so to gather the consensus of the WG. WG LC has shown strong support for the latest version, which is now waiting the shepherd write up. 

 -   **LISP EID Block Management (http://tools.ietf.org/html/draft-ietf-lisp-eid-block-mgmnt):** Quick update on the rewording introduced to avoid the terms "allocation" and "assignment". Such change has been suggested during WG LC. The updated document will go through a new WG LC. 

## Activity on Relevant non-WG Documents

  -  **LISP Impact (http://tools.ietf.org/html/draft-saucez-lisp-impact):** This document aims at documenting the impact that the deployment of LISP will have on the current Internet. Beside discussing the various impact factors, the document provides a set of pointers for further readings. Authors asked to make the document a WG item and there was rough consensus in the room to adopt the document. Adoption will be confirmed on the mailing list. 

  -  **LISP Data-Plane Confidentiality ([http://tools.ietf.org/html/draft-farinacci-lisp-crypto]):** More detailed description of the changes introduced in the latest version of the document (Back in Toronto there was no time to discuss properly). Authors asked WG adoption and there was rough consensus in the room to adopt the document. Adoption will be confirmed on the mailing list. The chairs requested the work on this draft to be carried out in collaboration with a security expert. 

## Activity on other non-WG Documents

 -   **LISP Signal Free Multicast (http://tools.ietf.org/html/draft-farinacci-lisp-signal-free-multicast):** The document proposes to use a multicast overlay to distribute multicast traffic among LISP sites. The overlay solution allows reducing signaling among xTRs. 

  -  **LISP Generic Protocol Extension (http://tools.ietf.org/html/draft-lewis-lisp-gpe):** The document opens for discussion on an evolved LISP-specific header that can encapsulate protocols other than the actual IPv4 and IPv6. Lively discussion took place. Authors stated that with the feedback obtained they will heavily change the current proposal. 

  -  **LISP Reliable Transport (http://tools.ietf.org/html/draft-kouvelas-lisp-reliable-transport):** LISP mapping registration is currently based on a UDP exchanged at regular time intervals. The document proposes to use TCP (or SCTP) for such purpose, using the session existence (after initial registration) as signal that the mapping is still valid. 

  -  **LISP RLOC Membership Distribution (http://tools.ietf.org/html/draft-kouvelas-lisp-rloc-membership):** The document proposes a mechanism to update the RLOC set in VPN scenarios by leveraging on the previous document (LISP Reliable Transport). 

  -  **LISP Flow-Mapping NFV (http://tools.ietf.org/html/draft-barkai-lisp-nfv):** The document describing the use of LISP Flow-Mapping in NFVs chaining scenarios. 

  -  **LISP Multiprovider (http://tools.ietf.org/html/draft-shen-lisp-multiprovider-vpn):** Document describing a possible solution for multiprovider VPNs, where each provider has its own crypto mechanism and Instance ID values. 


Details in the proceedings of the WG Meeting: http://www.ietf.org/proceedings/91/lisp.html 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-03-25. It was migrated from the old Trac wiki on 2022-12-16.*
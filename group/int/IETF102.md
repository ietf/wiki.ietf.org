---
title: WG Summaries for IETF 102
description: 
published: true
date: 2022-12-15T04:26:25.360Z
tags: 
editor: markdown
dateCreated: 2022-12-15T04:26:20.808Z
---

## 6TiSCH

During IETF102, the 6TiSCH WG had one WG meeting and 2 side meetings

The WG meeting covered 7 drafts, one presentation was done without a draft:

- draft-ietf-6tisch-6top-protocol-12 is in IESG LC. The authors produced version -12 to answers all comments. 
- draft-chang-6tisch-msf-02 now integrates the mechanisms from draft-duquennoy-6tisch-asf. A 1-week WG adoption call was started, finishing on 25 July 2018. The draft's state is now "Candidate for WG Adoption: Proposed Standard"
- draft-ietf-6tisch-minimal-security-06 triggered the most discussion in the session. The draft, for was in WGLC for 2 weeks, triggered 7 reviews. The editor of the draft detailed those and detailed how he would address those. WG state changed to "In WG Last Call" with tag "Revised I-D Needed - Issue raised by WGLC."
- draft-ietf-6tisch-dtsecurity-zerotouch-join was presented briefly by Pascal Thubert in the absence of the editor. 
- draft-richardson-6tisch-enrollment-enhanced-beacon was presented by Pascal Thubert in the absence of the editor. A 2-week call for adoption was concluded mid-June with no objections. This document is now adopted by the WG.
- progress on draft-vilajosana-6tisch-globaltime was presented. Some technical discussions. No action from the WG at this point.
- new draft draft-munoz-6tisch-multiple-phys was presented on generalizing 6TiSCH to multiple PHYs. No action from the WG at this point. 
- A technical "liaison" presentation to highlight some inconsistencies/remarks in the IEEE802.15.4 standard.

Two side meetings took place about the Stateless-Proxy CoAP option draft-ietf-6tisch-minimal-security-06 proposes. Discussions involved the main contributors as well as CORE and 6TiSCH chairs. An agreement was reaching on how to move forward.

Miscellaneous: 
- Because of a last-minute plane cancellation, Thomas Watteyne co-chair remotely; Pascal Thubert was in the room.

## LPWAN

The LPWAN Working Group met on Thursday, 19th of July for 2.5 hours and followed its agenda as scheduled with no particular issue. In general, the main points of discussions were SCHC-over-FOO and the WGLC2 of SCHC UDP/IP, which ends with success for the Compression part, with the Fragmentation part needing some editorial work on the text.

- Chairs opened the session with a status of the WG and next steps with rechartering.

- Dominique Barthel presented the work at the hackathon, with the ease to introduce SCHC to newcomers. Linux-based SCHC implementation is planned for future hackathons.

- SCHC IP/UDP editors Dominique Barthel and Ana Minaburo presented the issues raised during the second WGLC of draft-ietf-lpwan-ipv6-static-context-hc. A short summary of the WGLC is that the work on compression is complete, but that the Fragmentation piece needs rework to align the text to the FSM in appendix, and then another WGLC.

- In more details, work done in the past months was summarized and the process of starting a second WGLC to confirm these changes was given. The use of the ticketing system to track changes/comments was appreciated. The compression section of the document is clear with only minor editorial issues. The fragmentation section did generate a long discussion on how to improve readability. The two main alternatives are improving the text (and ensuring the FSM description in the Appendix matches the text), and moving the FSM to the Normative part (and ensuring the text in Appendix matches the FSM). The workload is generally the same, and the final decision will be made once the text is improved, taking it to the mailing list. An design change improving reliability of one of the fragmentation modes (ACK-on-Error) was proposed later by Juan Carlos.

- Laurent Toutain presented the SCHC CoAP draft draft-ietf-lpwan-coap-static-context-hc) with no major changes to report (ready for WGLC after review from CORE WG. Ricardo Andreasen introduced the new section on compressing OSCORE with SCHC CoAP. The work was highly appreciated and received several comments and reviews from the authors of OSCORE.

Technology-specific drafts were then presented.

- LoRaWAN: Nicolas Sornin (co-inventor of the LoRa radio technology) presented the SCHC-over-LoRaWAN draft (draft-petrov-lpwan-ipv6-schc-over-lorawan). The SCHC IP/UDP draft was appreciated for the simplicity and the fragmentation technology. The way they are parametrized for LoRaWAN was presented, with as future items the request to discuss the security mode, context representation and provisioning. WG item adoption requested after the rechartering.

- Sigfox: Juan Carlos Zuniga presented the SCHC-over-Sigfox draft draft-zuniga-lpwan-schc-over-sigfox. Parametrization for Sigfox technology was given. In addition, a potential modification of one of the fragmentation modes was proposed (Ack-on-Err).

- Edgar Ramos presented the advancements of the SCHC over NB-IoT draft draft-minaburo-lpwan-nbiot-hc. Identification of the possible placement of SCHC in the 3GPP architecture was given (such as at the Application layer, in the SCEF or everywhere we can find ROHC).

Charlie Perkins introduced PAR 802.15.4w, a new LPWAN effort at IEEE. A new technology draft draft-authors-lpwan-schc-802154 was submitted during the IETF.

## DPRIVE

The DPRIVE WG was re-chartered prior to IETF 102. Work has begun on many of the charter work items.

- Brian Haberman presented some very preliminary statistics on the uptake of DNS-over-TLS derived from measurements taken via the RIPE Atlas probe networks. These measurements will continue and evolve.

- draft-dickinson-dprive-bcp-op was presented to the WG. There is general support for the work. The chairs have started the WG process to adopt the document.

- draft-bortzmeyer-dprive-rfc7626-bis was presented to the WG. It needs some more reviews before it is ready to be considered for adoption.

- draft-annee-dprive-oblivious-dns was presented to the WG. There was a variety of feedback provided on the approach, implications, and costs.

The chairs will be posting guidelines to the mailing list to structure the discussion of recursive resolver to authoritative solutions for DNS privacy. The current plan is to hold an interim meeting in early September to focus the discussion of the stage 2 work.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-07-25. It was migrated from the old Trac wiki on 2022-12-14.*
---
title: MPLS Open DT Action Items
description: DT Action Items
published: true
date: 2023-04-13T15:11:25.617Z
tags: 
editor: markdown
dateCreated: 2023-01-05T15:02:00.617Z
---

# Header
# Open AIs

1. 	Present Generic Delivery Functions again at Open DT/IETF116.
    AI (Greg): as co-author, draft is applicable as MNA solution.
    - some outstanding work required to the draft. May target presenting at IETF116.
    - Update (04/13): Greg will try to reach out to Jeffrey and update.

# Closed AIs

1. AI (Kireeti): resurrect discussions on 1st nibble (post BoS):
	- ID draft-kbbma-mpls-1stnibble exists. Decide how to move forward.
	- Update on (03/10): item on agenda, but may overflow to next week if we can't get to it.
	- Update (04/28): on agenda for today.
	- Update (05/05): A new revision will be posted by end-of-week. The new revision is expected to progress to adoption.
	- Update (05/19): new revision will be posted (targeting end of May).
	- Update (05/26): pending new revision upload.
	- Update (06/23): new revision upload targeted before ietf114 cutoff date.
	- Update (07/7): Kireeti to revisit previous discussions on 1st nibble and update whether further action is required.
	- Update (07/14): [Stewart] no open issues.
	- Update (08/04): should MNA PSD header (type ?) be signaled in control plane? Need further discussion on whether DP, CP or both?
	- Update (08/11): CW can be signaled today. BIER can support both. Need to take a stance on MNA PSD.
	- Update (08/18): no update on this.
	- Update (09/08): no feedback from authors on exact state of the draft.
	- Update (09/15): AI (Tarek) to send email to the lead editor to check the latest status on this.
	- Update (09/22): Tarek missed this AI past week and will be acting on it asap.
	- Update (09/30): Tarek sent out an email to Kireeti/authors to check the status. No response as of yet.
	- Update (10/13): is this something slowing MNA work progressing?
		* No specific 1st nibble needed (short of 4 or 6) for MNA PSD proposals.
		* May still be required for realizing the MNA solution.
	- Update (10/27): the opinion in the meeting is this document should not stall MNA work. Chairs have asked authors to report back on the progress of this for now.
	- Update (11/17): plans to progress this further. Open questions:
		- Authors (AI: Kireeti) still need to close on whether CP is enough
		- AI (Kireeti and Stewart): will email with 2 slots to schedule meeting.
	- Update (12/15): meeting scheduling is still outstanding.
	- Update (01/05): ID is about to expire. No update due to holidays.
  - Update (03/02): No update from co-authors. AI (Chairs): to reach out to authors by email on next steps to resolve open issues.
		- [Matthew]: suggesting additional editor to volunteer to continue with this.
  - Update (03/09): Chairs reached out to potential additional editor. Greg M. confirmed that he can help as additional editor.

1. Usecases ID [draft-ietf-mpls-mna-usecase](https://datatracker.ietf.org/doc/html/draft-ietf-mpls-mna-usecases)
	- AI (Loa): find reviewer for Network Slicing usecase
		* Jie Dong is assigned to complete this
	- AI (authors of usecase ID): comments
		a. Add section 2.9 for existing MPLS applications
		b. what are existing MPLS usecases? Should be generic to cover the case we miss anything in the document.
    c. Add reference in section 2.5 to the SPRING document that introduced delay bound application
		d. Update the reference to the framework document.
		e. Update from Andrew on APN, still premature to discuss whether it is in scope of MNA work. Agreement to remove section 2.8 for now.
		f. Update (12/15): reach out to BIER WG on interactions with MNA work being done.
	- Update (01/05): comments are outstanding and will be addressed in next revision.
  - Update (03/02): update from co-authors: planning to address comments and update new revision before IETF116 cutoff date.
  - Update (03/09): the collected comments will be addressed in the new revision to be uploaded.

1. AI (solution authors): present existence of existing MPLS usecases with proposed MNA solutions
	- Update (01/05): To be added to next week agenda (Thursday 01/12).
		- [Stewart]: some of this is already tracked in jags ID. We may ask authors to present.
		- [Mathew]: suggest taking usecase and describe how it is encoded in the solution proposed. Propose this be written tracked in a separate ID.
		- [Greg]: intersection with non-IP payload (BIER as an example). The usecases draft may document how the different features may be used together.
	- Update (03/02): some updates were added in separate IDs (Entropy and others). The direction is to document how solution addresses each usecase in a separate ID. The plan is to close this AI by next time we meet.
  
1. Check implications of retiring APN on MNA requirements
   - AI (Tarek): reach out to authors of requirements ID.
   - Update (12/15): Loa suggests an email to WG to check if any concern removing APN.

1. AI(DT): ordering of MNA actions (ISD, PSD and within) - `(Revisit IPv6 on ordering HbH vs Destination Options)`:
 - Update (08/11): ODT Chairs met last Tuesday and discussed metrics. Update will be given in the meeting.
 - Update (08/11): Chairs will compose an agenda for next week.
 - Update (08/18): carry over onto next ODT Chairs meeting.
 - Update (09/08): carry over onto the next ODT Chairs meeting.
 - Update (09/15): carry over onto the next ODT Chairs meeting.
 - Update (09/22): on agenda for today.
 - Update (09/29): on agenda for today.
 - Update (10/13): text was proposed in the framework draft. Email was sent out.
 - Update (10/27): text poll was closed and got adopted/integrated into the framework ID.

1. AI (solution authors): evaluating competing proposals against metrics:
 - NVO3 WG has some precedence on this 
 - complying to requirements and framework document is prerequisite.
 - On pause till after the poll (sept 19th).
 - Update (09/22): MPLS Open DT Chairs assigned the action item on the solution authors.
 - Update (09/29): No update from authors of documents (see MNADocumnets). Loa will send out an email.
 - Update (10/13): Email was sent out. Will be discussed today on item #2 of the agenda.
 - Update (10/27): some collaboration between authors has happened and there are currently two IDs that the authors are trying to push forward to adoption (draft-jags and draft-song).

1. AI (Solution document co-authors):
  - Initiate discussions amongst yourself about a possible merge
  - report back on discussions next time we meet
  - final report will be delivered after IETF114.
  - Update (07/14): no progress reported.
  - Update (08/11): no progress reported.
  - Update (08/18): no progress reported.
  - Update (09/08): meetings amongst some authors have started. Participants are not yet ready to report.
  - Update (09/15): no update to report.
  - related to poll results conclusion.

1. AI: User-defined Indicator Actions
> Owner: DT
> Status: Closed
> - Update: we think all options (scope LSP, domain, and standardized) are possible. Kireeti/Tarek will produce a writeup to discuss in next meeting.
{.is-info}

- Update: discussions still on-going.
- Update (01/13): overhead of user-defined actions (e.g. lookup and urgency) to be considered. [[BR]]
- Update (02/17): potential item to be discussed on next week's agenda.
- Update (02/24): asking to defer to next week meeting. Will produce text and some examples.
- Update (03/03): potential item on 03/17 meeting. 
- Update (03/10): a lower priority for now. Will consider after standardized action bits discussions have converged.
- Update (04/28): user-defined network actions may be useful - [Kireeti]: suggest to re-prioritize this.
- Update (06/23): Matthew will review if this is covered by the requirements draft.
- Update (07/07): requirements document does not preclude user-defined Network Actions, the detailed description of how should go in a solutions standards document.
- (Matthew/authors of requirements document): to check whether new requirement needs to be added to cover this.
- Update (07/14): Stewart, John and Mathew are meeting this week and will discuss. Loa, consider Private-Use instead of User-Defined (reference: draft-leiba-cotton-iana-5226bis)
- Update (08/11): the reqt authors will retry to have the discussion again.
- Update (08/18): meeting between authors of requirements ID has not happened yet. Plan is to meet 08/19
- Update (09/08): the MNA requirements already captures a private range for user-defined MNA actions.



1. User-defined (Private-Use) actions discussions and requirements - should it be a range?
* MNA Requirement captures this (requirement 19 - section 3.3)
* A range needs to be set aside
* should this range be managed by IANA or should it be specified in an RFC)?
* Requirements ID was recently updated. Feedback from the WG is welcome.



* AI (DT): give feedback on a new unified solution
  - Feedback from authors of existing solution documents is highly encouraged.
  - Poll was compiled and sent out to the MPLS WG mailing list. Poll will close by Sept 19th.

* AI (Stewart): upload the document classification on a new wiki.
  - Tarek will create a new wiki page and add a pointer to the main Open DT wiki.
  - Update 07/17: Stewart created the wiki at https://trac.ietf.org/trac/mpls/wiki/MNADocumnets


* AI (Chairs): draft-li-mpls-redefining-eli
 - Two types of documents
   - one that proposes (re)use of ELI as SPL for MNA indicator (ducreane draft)
   - one that opposes (re)use of ELI as SPL for MNA (draft-li-mpls-redefining-eli)
 - Chairs agreed during the coordination meeting to start WG adoption of both documents (in parallel).
 - Progressing further will depend on the outcome of WG adoption poll result.
 - Chairs (Loa) will be sending the emails (process and IPR polls followed by WG adoption poll) this week.
 - After further discussions, Chairs agreed to go back and (re)discuss the next action to take on this.
 - A Poll was carried out and results of the poll were discussed and shared with the WG.
 - The ID will not progress any further, and will be let to expire.

* AI: Gather input from vendors/implementors and HW-specialists on the feasibility/efficacy of the FAI/NFI flags/actions presence in the label stack - and its applicability to ISD and PSD.
> Owner: the MPLS Open DT [[BR]]
> Notes:
> - Kireeti: some internal meeting with Broadcom and platform teams. Initial feedback was positive. We need to run the new revision of the draft by them again. [[BR]]
> - Haoyu/commercial chips: my own research and analysis of parsers and structures is that pointers and use of catalogs does not help.  [[BR]]
> - Haoyu: willing to give a presentation and share detailed design on this. This may be added in next week's agenda.
> - Wiki created at: ActionIndicatorStages
> - (Kireeti): proposal to breakdown the work into stages and assess/estimate the processing overhead of each stage. Also, urgency of the action may be considered.
> - (Haoyu): suggest to use the FSM size as performance indicator
> - A call for all attendees and HW-specialists to update on 2/7 on this investigation.
> - (Kireeti): asking to be put up on the agenda on 2/24
> - (Jisu): will provide feedback by 02/17.
> - (Jie Dong) 02/17: to provide further feedback on this. Asking to be considered on agenda for next Thursday meeting
> - (Jie Dong) if time allows, otherwise will do next week.
> - (04/21): Jie provided the update 03/03. Slides were uploaded to meeting minutes [https://trac.ietf.org/trac/mpls/attachment/wiki/2022-03-03-agenda/MPLS%20ISD%20%26%20PSD%20processing%20overhead%20analysis_jie_220303.pdf wiki].
> - (04/28):
   >> - [Jie]: further discussions on ISD
   >> - [Greg]: no conclusion/convergence, still see ISD has value in the proposal.
   >> - [Kireeti]: this was discussed extensively. We have an idea how to implement. Need to keep the door open to future possibilities.
   >> - [TonyLi]: no convergence. Propose Chairs to take this on and propose way forward.
   >> - [Haoyu]: in P4, ISD is very difficult.
   >> - [Stewart]: propose to come up with a realistic example with realistic label stack (propose each solution document can present).
> - (05/26): several points made during the call will be used as input to the next chairs coordination.


* AI (Chairs):
 - Closure on ISD/PSD/Implicit discussion
 - ETA: 2-3 weeks from 04/28
 - Update (05/05): pending.
 - Update (05/19): pending.
 - Update (05/26): Chairs coordination meeting happened on the 05/24. This item is still outstanding and follow-up meeting will be held to close on it.

* AI (Chairs):
 - poke owner of IPR (Cisco) and ask if there willing to file IPR against (framework draft, and/or the other solution that proposes TTL as mechanism).

* AI: Address received comments on the requirements draft
> Owner: Mathew [[BR]]
> Status: Open [[BR]]
> Notes:
  > - Mathew will sync up with Stewart
  > - ETA Jan 2022
  > - Update: meeting will happen on Monday 01/17. Will report back 01/20.
  > - Update on 01/27: authors responded to earlier received comments. A new revision has been posted to IETF repo.
  > - AI (authors): to upload the newest revision to github
  > - First pass review was completed on Monday 2/7. The authors are working on new revision that addresses the review comments raised during the walkthrough.
  > - The revised revision will be presented in IETF113.
  > - Projection is to adopt the next revision of requirements draft.
  > - Update (02/17): comments still pending. ETA: 2 weeks from now.
  > - Update (03/10): all comments received were addressed. A new revision (-02) has been posted. New comments received.
  > - Update (04/21): authors update that all outstanding comments received prior the WGAP have been addressed in revision (-04)


* AI (Chairs): bring up the time of our meeting due to Summer time changes.
 - Meeting of (03/17) will be at the same time (no change)
 - Options for week(s) after:
    - Don't change the current time
    - Move 1hr earlier

[[BR]]
* AI: to get consensus with WG DETNET, TEAS, PALS, MPLS
> Owners: DT/Tarek [[BR]]
> ETA: Target 11/5 [[BR]]
> Notes:
  > - Team is agreeing that the design directives text will need to be revised.
  > - Kireeti volunteered to propose a revised text to review
  > - Email (on behalf of the MPLS Open DT) will be sent only after DT converges on the new text.
  > - Update (10/28): Kireeti will send an email proposing a revision of the existing design directive text for PSD.
  > - Update (11/18): Kireeti will provide this by next week's meeting (add to existing wiki).
  > - Update (12/15): will be added on the agenda of next meeting.
  > - Update 02/17: would like to converge on the text before we go ahead with sharing it with other WGs.
  > - Update (03/03): this will be covered by documents produced by the DT.

* AI: address missing Webex recordings
> Owner: Tarek/Chairs
> ETA: 02/24
> Update: 01/27 link updated.

[[BR]]
* AI (Chairs): to discuss the the policy for putting the data in stack vs. outside the stack (proposed by Kireeti)
> Owner: Chairs [[BR]]
> Status: to add to agenda of 12/2 [[BR]]
> Update: Kireeti gave an update on 12/2. He promised to include text in the draft and work with Mathew if any requirements need to be added to requirements draft.
> Notes:
> - Presented on 01/13. There will be follow-up needed (refresh the draft).
> - Update 01/27: need to refresh the ID and add the relevant content.
> - Update 02/10: Kireeti updated the draft with text to address this.
> - Call for DT to review and provide feedback.

* AI: Add wikipage for requirements specifications [[BR]]
> Owner (Matthew) [[BR]]
> Status: Open
> Notes:
    > - wiki will point to the ID when ready.
    > - MPLS github page has a version of the ID already. It also has comments logged against it. Open DT needs to consider if this is useful.
    > - Will use the github repo to address comments.
    > - to add pointers to current published version and the "Work-in-progress" version. 

* AI (Greg): close on need for MPLS EH for MPLS-SFC OAM usecase
> Owner: Greg Mirsky [[BR]]
> Status: need to sync up with other authors of RFC8596 [[BR]]
> ETA: 10/14 [[BR]]
> Outcome:
     > - add on agenda on subsequent DT meeting
     > - report back to update DT
     > - investigate GAL/GACH processing in slow/fast path
     > - Still under investigation and need to be covered by PSD design

* AI: Describe Usecase[[BR]]
> Owner: Haoyu, Kireeti, Kiran, Loa, Tarek, Stewart volunteer to help describe usecases[[BR]]
> Status: in-progress[[BR]]
> ETA: 1st draft to be circulated 10/14 [[BR]]
> Note: wiki was created, update on July 8 presented [wiki:Usecases] 
   > - MPLS network slicing usecase (Kiran will progress on this)
   > - MPLS SFC and SRH usecase (Haoyu will progress on this)
   > - MPLS iOAM usecase (Rakesh/Alex will progress on this)
   > - network programmability (separate item)
   
* AI: to provide an example encoding in P4 [[BR]]
> Owner: Haoyu [[BR]]
> Status: ready to talk about it. [[BR]]
> ETA: 10/07 [[BR]]
> Notes:
    > - Haoyu trying to explain the cost of header different implementations


* AI (Chairs): Schedule a meeting (tentative early October) with DETNET to discuss the co-existence of MIAD with DETNET control-word and OAM.
> To revisit this AI. [[BR]]


* AI (Greg/Balazs): to share existing DETNET IDs/RFCs related to MIAD DT on the mail list.
> Status: completed. [[BR]]


* AI: We need an MPLS Payload's 1st Nibble Registry
> Owners: Kireeti, Stewart, Matthew, Greg, Loa
> ETA: Target IETF112 [[BR]]
> Note:
   > - Initial draft in circulation (collecting comments)
   > - Only 16 are possible (4-bits)
   > - 0000 is taken by DETNET and PW
   > - 0001 is taken by OAM
   > - 0101 is taken by BIER
   > - 0100 and 0110 are taken by IPv4 and IPv6
> Update (10/14):
   > - a new I-D has been circulating. It will be posted on github.
   > - Asking the DT to review the I-D once it is posted on github.
> Update (10/28):
  > - new I-D has been posted and a slot to present at IETF112 JOINT session was requested.

1. AI: Create Action Item wiki[[BR]]
   Owner: Tarek [[BR]]
   Status: completed[[BR]]
   Notes: see DesignTeamActionItems


2. AI: Look into creating MPLS WG github account[[BR]]
   Owner: MPLS Chairs[[BR]]
   Status: completed[[BR]]
   ETA: done[[BR]]
   Notes: [[BR]]
   a. WG github account is https://github.com/ietf-wg-mpls [[BR]]
   b. See first repository for [https://github.com/ietf-wg-mpls/draft-andersson-mpls-open-dt-questions draft-andersson-mpls-open-dt-questions] [[BR]]
   
3. AI: Create wiki for data within the label stack [[BR]]
   Owner: Kireeti[[BR]]
   Status: completed[[BR]]
   Notes: see LabelStack wiki (live document) [[BR]]
          Kireeti and Haoyu sycnced up and they are by large in agreement.

4. AI: Create wiki for data after bottom of label stack [[BR]]
   Owner: Jeffrey Zhang, others? [[BR]]
   Status: Initial revision finished [[BR]]
   Notes: see DataAfterBOS wiki (live document) [[BR]]

5. AI: Haoyu and Kireeti to follow-up offline on possibility to re-use the FAI as EH alert [[BR]]
   Owner: Haoyu and Kireeti [[BR]]
   Status: Completed [[BR]]
   Notes:
     - Kireeti will document the agreement in the LabelStack wiki.


6. AI: "Data Fields for In-situ OAM", draft-ietf-ippm-ioam-data-12 [[BR]]
      - Clarify whether incremental iOAM means buffer is pre-allocated or not? Section 5.4 of [[BR]]
      - send email to IPPM WG [[BR]]
      - Stewart can send email to IESG to follow-up on this. May need to copy IPPM [[BR]]
   Owner: Stewart, DT [[BR]]
   Status: Stewart sent email to IESG and IPPM [[BR]]
           - buffer is NOT pre-allocated by the ingress in one mode[[BR]]
           - the design allows for other mode to pre-allocate


7. AI: IETF111 report slide-deck
  Owner: Loa/Team [[BR]]
  Notes: initial draft by Loa and will share over email. [[BR]]




8. AI: Discuss OAM for SFC in MPLS and RFC8595 (MPLS Open meeting for this) [[BR]]
   Owners: Open Meeting, Stewart, Greg [[BR]]
   Status: meeting occurred 05/12/2021 [[BR]]
   Notes: 
      - multiple GALs are harmless. GALs can only refer to the same ACH. [[BR]]

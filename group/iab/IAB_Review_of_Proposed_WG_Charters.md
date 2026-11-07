---
title: IAB Review of Proposed WG Charters
description: 
published: true
date: 2026-11-07T13:35:14.302Z
tags: 
editor: markdown
dateCreated: 2023-12-05T21:01:18.463Z
---

# IAB Review of Proposed WG Charters
During BoF reviews and WG charter reviews, the IAB has opportunities to provide feedback. This list compiles some areas that the IAB can focus on to provide feedback, and questions that can be asked during review.

This list should be considered as a potentially helpful checklist to ensure that reviewers check for some potentially relevant areas. It is not a requirement list or a new "architectural considerations" section for charters.

IAB reviews of WG charters should be sent to the IAB and IESG mailing lists. They can additionally be sent to other lists (lists being used to discuss the charter) at the discretion of the review and the IAB and IESG.

## Internet health
- Does this proposal continue to uphold or improve the general aspects of Internet health, e.g., perform congestion avoidance, etc.
- Does this proposal cause any issues with other protocols or functions in the Internet, and have those effects been considered?

## Deployment incentives
- Does this proposal promote the interests of end users, and have affected communities been made aware of it and had an opportunity to provide input? Merely asking people to bring their feedback to the IETF is insufficient; we should make an effort to engage others on their own turf. See also RFC 8890.
- Does the proposal have a realistic chance of being deployed, e.g., have suitable deployment incentives?
- Does this proposal risk favoring or incentivizing centralized deployments in a way that could harm users? And if so, are there any changes to the proposal that would make it work better?
- Does this proposal have support of a wide number of entities, or does it represent a few proponents?

## Security & Privacy
- Does this proposal impact pervasive surveillance issues, and are they appropriately taken into account in the charter? See also RFC 7624 (pervasive surveillance).
- Does this proposal risk opening up new privacy vulnerabilities? And if so, are there any changes to the proposal that would improve its privacy properties? See also RFC 6973 (privacy considerations).
- Are there any new denial-of-service concerns?

## Protocol evolution
- Does this proposal build on existing protocols to extend or revise them, or does it create something entirely new?
- Does this proposal create a foundation for work to extend it in the future? How will active use of that extensibility be encouraged?
- RFC 8546 (wire image), RFC 8558 (path signals), use-it-or-lose-it

## Ecosystem
- Does the proposal fit within the general scope of IETF? Have the necessary collaborations to other organisations been considered?

# Operational Process

**Owners:** Dhruv, Cindy
**Status:** Draft (from IAB strategy meeting action item)
**Scope:** How the IAB assigns, tracks, and follows up on reviews of WG charters and re-charters. 

## Why the IAB reviews charters

Per the IAB Charter (RFC 2850, Section 2.1), "When a new IETF working group is proposed, the IESG will forward a preliminary version of the charter to the IAB for review of architectural consistency and integrity. The IAB shall review these proposed charters and give feedback to the IESG as appropriate."

Charter review is one of the main points at which the IAB can:

- assess long-term architectural impact of new and continuing work;
- help bring new work into the IETF in a well-scoped form; and
- flag overlap or coordination needs with other organizations in the Internet ecosystem (RFC 2850, Section 2(f)).

## Default policy

- A designated IAB member reviews **every new charter and every re-charter**.
- RFC 2850 explicitly refers to charters for new working groups. 
> At the 2026 IAB strategy meeting, the IAB decided to also review re-charters by default, because some re-charters expand a WG's scope and therefore still need an architectural impact review. 
- For a re-charter with **minimal change**, the review **may be skipped**. Either the reviewer or the IAB Chair can make this call. 

## Process

### 1. Trigger

- IAB Executive Director monitors the IESG telechat agenda in Datatracker.
- When a charter or re-charter is placed on an agenda, they starts a thread in the IAB Slack channel `#iab` with the link to the charter. 

### 2. Reviewer selection

- IAB Executive Director asks for volunteers in the thread.
- The IAB Chair and other members help match the charter to IAB member expertise.
- Conflicts of interest are considered when assigning.
- If nobody volunteers, the IAB Chair or the IAB Executive Director assigns a reviewer.

### 3. Tracking

- Once a reviewer confirms, IAB Executive Director (or IAB Chair) opens an issue in the IAB GitHub repository [intarchboard/responsibilities](https://github.com/intarchboard/responsibilities) containing:
  - charter link, telechat date, assigned reviewer;
  - review status (assigned / in progress / sent / skipped).
- The issue is closed when the review has been sent to the IESG, or the skip is recorded.

### 4. Reminders and timing

- Reviewers should target responding during the **internal review** stage, so that the IESG can take the feedback into account before deciding to send the charter for external review.
- In the worst case, the review should be sent before the IESG finalizes (approves) the charter.
- Early reviews are strongly preferred.
- IAB Executive Director (or IAB Chair) send a reminder to the assigned reviewer ahead of the telechat at which the charter is scheduled for discussion.

### 5. Discussion within the IAB

- Reviewers are encouraged to share their review with the rest of the IAB, especially when they have **major concerns within the IAB's remit** (architectural, cross-area, or ecosystem/liaison implications). Such concerns may warrant discussion at an IAB call as well.
- Other IAB members should proactively respond on the Slack thread with their own comments or concerns, rather than leaving the review solely to the designated reviewer.






## Review Assignments

### 2026-2027 Assignments

- PTTH: Jana Iyengar (2026-10)
- BPM: Matthew Bocci (2026-09)
- AGENTPROTO: Yingzhen Qu (2026-09)
- DAWN: Jason Livingood (2026-08)
- FANN: ~~Yingzhen Qu~~ Suresh Krishnan (2026-05)
- ONSEN: Ali C. Begen (2026-05)
- JSONSCHEMA: Yaroslav Rosomakho (2026-04) 

### 2025-2026 Assignments
- ONIONS: Alvaro Retana (2025-09)
- WEBBOTAUTH: Jana Iyengar (2025-09)
- SEAL: Dhruv Dhody (2025-09)
- PROCON: Mark Nottingham (2025-05)
- HPKE: Warren Kumari (2025-04)
### 2024-2025 Assignments
- DIEM: Wes Hardaker (2025-01)
- HAPPY: Matthew Bocci (2025-01)
- TIPTOP: David Schinazi (2025-01)
- RPP: Tommy Pauly (2025-01)
- AIPREF: Chris Wood (2024-12)
- IANABIS: Mirja Kühlewind (2024-10)
- SCONE: Suresh Krishnan (2024-09)
- MODPOD: Qin Wu (2024-09)
- GREEN: ~~Alissa Cooper~~ Alvaro Retana (2024-09)
- SSHM: Cullen Jennings (2024-08)
- DELEG: Alvaro Retana (2024-05)
- SRV6OPS: Matthew Bocci (2024-05)
- SPICE: Dhruv Dhody (2024-04)
- MAILMAINT: Wes Hardaker (2024-04)

### 2023-2024 Assignments
- DULT: Mirja Kühlewind (2024-02)
- WIMSE: David Schinazi (2024-02)
- NMOP: Suresh Krishnan (2023-11)
- VCON: Tommy Pauly (2023-09)
- SML: Chris Wood (2023-09)
- MULTI: Qin Wu (2023-09)
- KEYTRANS: Cullen Jennings (2023-07)
- MLCODEC: Jiankang Yao (2023-05)
- BPF: Dhruv Dhody (2023-05)
- NIMBY: Alvaro Retana (2023-04)
- SCHC: Wes Hardaker (2023-03)
- CONGRESS -> CCWG: Mallory Knodel (2023-03)

### 2022-2023 Assignments
- CAN: Zhenbin Li (2023-02)
- TVR: Russ White (2023-01)
- SATP: Tommy Pauly (2023-01)
- PQUIP: Qin Wu (2022-12)
- MIMI: David Schinazi (2022-12)
- APN: Mirja Kühlewind (2022-09)
- SCITT: Deborah Brungard (2022-09)
- SNAC: Wes Hardaker (2022-09)
- UUIDREV: Jari Arkko (2022-08)
- MOQ: Zhenbin Li (2022-08)
- ELEGY: Cullen Jennings (2022-08)
- TIGRESS: Mallory Knodel (2022-06)
- SAVNET: Jiankang Yao (2022-05)
- PPM: Russ White (2022-02)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-11-22. It was migrated from the old IAB wiki on 2023-12-05.*

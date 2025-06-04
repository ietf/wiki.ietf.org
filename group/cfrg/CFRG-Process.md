---
title: Crypto Forum Research Group Process
description: Overview of CFRG process and best practices
published: true
date: 2025-06-04T10:06:55.728Z
tags: 
editor: markdown
dateCreated: 2022-12-28T23:01:58.095Z
---

# Crypto Forum Research Group (CFRG) Process

- [Introduction](#introduction)
- [Defining a Relevant Problem](#defining-a-relevant-problem)
- [Proposal and Call for Adoption](#proposal-and-call-for-adoption)
- [Draft Development and Ongoing Research](#draft-development-and-ongoing-research)
- [Research Group Last Call (RGLC)](#research-group-last-call)
- [CFRG Document Publishing Process](#cfrg-document-publishing-process)
- [Guidelines and Expectations](#guidelines-and-expectations)
	- [Editor/Author Guidelines and Expectations](#editor-author-guidelines-and-expectations)
	- [Contributor Expectations](#contributor-expectations)
	- [Expert Reviewer Expectations](#expert-reviewer-expectations)
	- [General Public Expectations](#general-public-expectations)
- [Conclusion](#conclusion)
- [Appendices](#appendices)
	- [Appendix A: Examples of CFRG Work: Successes and Non-Adoptions](#appendix-a)
	- [Appendix B: Appendix B: Tips for Contributors: How to Engage Effectively](#appendix-b)

## Introduction

Per the [charter](https://datatracker.ietf.org/rg/cfrg/about/), CFRG produces technical specifications and informational documents for the community. In general, these documents capture and codify results of the cryptographic research and engineering communities. However, there are cases where the CFRG develops constructions alongside external analysis of said constructions, such as with HPKE (RFC 9180).

CFRG documents are not IETF standards. As a result, the process for developing and publishing specifications and documents is different than that which might be found in the IETF and elsewhere. This page summarizes some key points to consider as a document author or editor, a contributor, an expert reviewer, and possible consumer of the documents.

This page includes an informal guide to how a new idea or proposal **moves through CFRG**, from the initial problem definition all the way to publication as an RFC. It’s written for newcomers but should also be useful to experienced participants. The key takeaway is that CFRG focuses on solving *relevant cryptographic problems* for the Internet, rather than just evaluating random new mechanisms in isolation. If you have a cool cryptographic idea, the first question to ask is: **what problem for IETF or Internet protocols does this solve?**

*CFRG’s adoption process in a nutshell:* a proposal should start with a clear problem statement, gain interest and alignment within the group, go through a formal adoption (where the group agrees to work on it), then be developed collaboratively with thorough review and research, and finally pass an RGLC to confirm consensus on the result. The following sections break down each stage of this journey, with tips and examples along the way.

## Defining a Relevant Problem

Every successful CFRG effort **starts with a well-defined problem**. Rather than bringing a fully-formed solution and looking for a use, begin by articulating *what issue or gap needs to be addressed*. Specifically, it should be a problem relevant to IETF protocols or the Internet community. CFRG is most receptive to work that helps protocol designers – for example, a need for a more secure key exchange, a limitation in existing algorithms, or guidance on using cryptography in new scenarios. If a proposal comes in without a clear problem or use-case driving it, it’s **unlikely to be adopted**. As CFRG chairs have emphasized ([IETF 122 Chair Slides](https://datatracker.ietf.org/meeting/122/materials/slides-122-cfrg-chairs-slides-02#:~:text=under%20review%3A%20recognized%20research%20results,problem%2C%20not%20a%20specific%20mechanism)), the group focuses on “solutions of the problems – starting with the problem, not a specific mechanism.” In other words, *don’t put the cart before the horse*: first convince the group that there’s an important problem to solve.

When defining your problem, consider:

- **Who in the IETF needs this solution?** Identify explicitly which protocol, working group, or use-case would directly benefit from solving this cryptographic issue. Clearly pinpointing beneficiaries ensures the proposal is grounded in practical relevance. If you struggle to find a clear beneficiary within the IETF, reassess the relevance and necessity of the proposed problem.

- **Why isn’t it solved already?** Clearly state existing limitations in current cryptographic tools, techniques, or approaches that justify why new research or analysis is required. Highlight specific gaps or weaknesses that your proposal intends to address, demonstrating both the necessity and innovation of the proposed research.

- **Is this actually an engineering problem instead of a research problem?** CFRG primarily addresses issues requiring new cryptographic insights, theoretical developments, or rigorous security analyses. If your problem predominantly concerns implementation details, performance optimization, or configuration choices using well-understood cryptography, it might be more appropriately handled within an IETF working group. Distinguishing between engineering and research problems helps ensure proposals align correctly with CFRG’s scope.

- **Is the research mature enough for CFRG engagement?** CFRG typically expects some level of research maturity, evidenced by published results, analyses, or strong community discussion. If the problem or proposed solution is too early—lacking peer-reviewed analyses, preliminary security proofs, or significant academic attention—it may not yet be suitable for CFRG adoption. In these cases, authors might consider first pursuing academic validation or informal community vetting before bringing it to CFRG.

- **Scope and impact:** Clarify how broad, significant, or urgent the identified cryptographic problem is. Is the proposal addressing a minor adjustment or filling a fundamental gap? Determine if solving it involves addressing several sub-problems or just a narrow issue​. Clearly defining the scope and potential impact helps CFRG evaluate whether the effort required justifies the proposed research group effort and helps the group avoid revisiting fundamental questions later.

- **Expertise and feasibility:** Assess whether CFRG has the right expertise available among its community members to effectively address this problem. Clearly state any specific requirements related to performance, security levels, hardware constraints, or other practical considerations. Ensuring that the community has the requisite expertise and resources improves the likelihood that your proposal will be effectively addressed and adopted by CFRG.

Taking these into account helps frame a problem statement that others can understand and care about. Often, this stage involves **starting a discussion on the CFRG mailing list**. You might send an email outlining the problem and maybe sketching a potential approach. This invites feedback and helps build consensus that the problem is worth solving. Keep an open mind – the discussion may reveal prior work you weren’t aware of, or refine the problem’s scope. It’s also useful to reference any academic papers or research that motivate the problem. In fact, many CFRG work items are inspired by fresh research results (often accompanied by papers on ePrint or from conferences). Showing that your problem ties into recent research can strengthen the case that it’s timely and valid.

**Tip:** If you have a specific solution in mind (say a new algorithm), *still start by describing the problem it solves*. For example, instead of “Here’s SuperCipher, it’s great,” begin with the problem (“We need a cipher that achieves X under constraints Y, which current options don’t handle”). This way, others can first agree that X/Y is a real issue, and then see SuperCipher as one possible answer. CFRG is not a venue for just sharing cool crypto tricks in hopes someone finds a use – it’s about addressing known needs in a rigorous way.

## Proposal and Call for Adoption

Once a problem is defined and there’s interest in addressing it, the next step is getting the work officially adopted by CFRG. Typically this involves a **call for adoption** issued by the CFRG chairs on the mailing list. But before that happens, you (as a proponent) might need to do some groundwork:

- **Draft a document:** It helps to write an Internet-Draft describing your proposal (e.g., an initial design or candidate solution to the problem). This draft should include not just the mechanism, but also background, rationale, and any security analysis you have. Many proposals come with accompanying academic papers or at least security proofs supporting them ([CFRG Presentation at NIST](https://csrc.nist.gov/csrc/media/presentations/2023/stppa6-cfrg/images-media/20230725-stppa6-cfrg--nick-sullivan.pdf#:~:text=CFRG%20and%20Research%20When%20a,additional%20results%20of%20security%20assessment)). Having a draft makes it concrete for the group to evaluate.

- **Present it:** You may get a chance to present your idea in a CFRG meeting (for example at an IETF meeting during the CFRG session). This isn’t strictly required, but it can help raise awareness and answer questions. Even without a meeting, continuing the mailing list conversation and responding to feedback is key.

- **Call for Adoption:** When the chairs sense there is sufficient interest, participant bandwidth, and energy; and the problem fits within CFRG’s scope, they may announce a call for adoption on the mailing list. During an adoption call, CFRG participants are asked to voice their support or concerns about taking on this work as a research group item. Essentially, the group is deciding: *“Should we, as CFRG, work on this problem/topic?”*.

Some characteristics that increase the chance of adoption:

- The problem is clearly relevant to IETF and has support from multiple people who frequently contribute to the IETF/IRTF (not just the original authors or infrequent contributors). It might even be that an IETF working group has asked CFRG for guidance on this topic.

- The proposal is backed up with solid research or evidence (for instance, a security proof, or prior peer-reviewed publication). CFRG heavily values cryptographic soundness and academic consensus. Proponents are encouraged to present candidate mechanisms along with corresponding security analyses or proofs before adoption.

- The scope is well-defined. The chairs might have a “scoping” discussion to ensure everyone agrees on what problems the draft will and won’t address. It’s important to avoid taking on something too vague or too broad that can’t be handled within a reasonable time. Proponents should clearly define the problem's scope, objectives, and intended outcomes. The initial consensus on scope is critical for the smooth progression of work.

If the adoption call concludes with rough consensus to adopt a problem/topic and the scoping of this problem/topic includes adopting a pre-existing Individual-Draft, that document is adopted as a CFRG work item. The draft name usually changes from `draft-yourname-cfrg-topic` to `draft-irtf-cfrg-topic`, indicating it’s now an official RG document.

On the other hand, if the work is **brought in without a clear research problem or IETF relevance, adoption likely won’t happen**. CFRG has in the past declined to adopt documents that were, for example, primarily aimed at giving immediate implementer guidance without new research context. The group might instead suggest pursuing the idea in an IETF working group (if it’s more of an engineering solution than a research problem), or doing more research to firm up the proposal. Don’t be discouraged – sometimes an idea isn’t adopted initially but could be revisited when more evidence or a clearer need emerges (see the KEM combiners example in [Appendix A](#appendixA) below).

## Draft Development and Ongoing Research

After adoption, the real work begins! In this phase, the draft is an official CFRG item and is typically edited by one or more **document editors** (often the original proponents of the work, with possible additions) chosen by the CFRG chairs. The **goal** of this stage is to refine the document to the point where it represents the rough consensus of the research group on the solution. Unlike a typical engineering spec which might be finished quickly, a CFRG document often evolves as *research and analysis continue*. Here’s what to expect in this phase:

- **Collaborative editing:** The editors will revise the draft based on feedback. CFRG works in an open way – anyone on the mailing list can comment, suggest changes, or raise issues. It’s common for multiple iterations of the draft to be published (draft-irtf-cfrg-foo-01, -02, ... etc.). The writing is “collaborative” in the sense that while editors manage the text, the content is influenced by group consensus and contributions. You might also find a GitHub repository where the draft is maintained for easier collaboration.

- **Mailing list reviews:** CFRG members (including cryptography experts and practitioners) will review the draft and share their critiques. Don’t be surprised if you get very detailed cryptographic feedback – *this is a good thing!* The group often provides additional security analyses; in fact, after adoption, many authors or independent researchers present *new results of security assessment* on the proposed mechanism. These could be in-depth reviews, or even academic papers that analyze the scheme. All this helps ensure the work is solid.

- **Crypto Review Panel:** CFRG has a panel of cryptography experts (the [Crypto Review Panel](https://wiki.ietf.org/group/cfrg/CryptoPanel)) who may be called upon to evaluate drafts. They assess the current state of research for the mechanisms in the draft. It’s generally expected that by the time the draft is nearing completion, it *reflects the best-known research* on the topic. For example, if there have been relevant papers published (say at CRYPTO, Eurocrypt, or on ePrint) during the draft’s lifetime, the draft should incorporate or at least acknowledge those results. The Crypto Review Panel might do a formal review prior to last call (often at least one panel review is required before finishing the process).

- **Updating the draft:** As new insights come in, the editors should update the document. This could mean tightening security definitions, changing an algorithm parameter based on latest attacks, adding more rationale text, etc. The document is effectively *under continuous scrutiny*. CFRG documents are expected to be informed by academic consensus and the latest research. It’s not unusual for this stage to take a significant amount of time (sometimes years for complex topics) – patience and thoroughness are valued over speed. As one CFRG note puts it, it’s important to “wait for academia to do enough research” and gather sufficient review before rushing ahead.

- **Out-of-scope issues:** During development, sometimes issues arise that are beyond the original scope. The group might decide to adjust the scope if necessary, or defer those issues. Keeping the work focused is important; if something big comes up, chairs might spin it off as a separate work item rather than let the draft get unfocused.

Throughout this phase, the chairs will be ultimately responsible for monitoring consensus, but in practice rely on the editors to resolve disagreements and act as honest arbiters of consensus. The editors can and should draw chairs’ attention to issues and possible changes of direction. They may periodically ask on the list if the group is happy with the direction or if specific choices in the draft have consensus. It’s important as a contributor to **engage constructively**: respond to reviews (even critical ones) professionally, make changes where appropriate, and explain your reasoning where you choose an approach. Remember, the goal is to produce a document that the *whole group* can live with and that provides useful guidance to the broader community.

### Changing Scope

If subsequent discussion, review, or newly introduced work introduces significant changes that shift consensus on the adopted topic’s original scope, editors must explicitly bring this to the attention of the CFRG chairs and working group participants. A formal discussion should be initiated to determine if the group supports these changes. If necessary, the chairs will facilitate a re-scoping conversation to realign consensus and clarify the document’s direction.

In cases where substantial scope changes occur, document editors should **actively coordinate with editors of related or impacted documents** to ensure alignment and consistency across CFRG’s work. Editors are encouraged to collaboratively refactor content when appropriate, clearly communicating these adjustments to the broader group to maintain transparency and facilitate group-wide consensus.

## Research Group Last Call (RGLC) {#research-group-last-call}

When the draft has matured – i.e., the content is believed to be stable, and there’s general agreement in the group on its recommendations – the chairs will initiate a **Research Group Last Call (RGLC)**. This is analogous to a “last call” in IETF working groups. It’s a final checkpoint where the **entire research group is asked to review the document and speak up with any remaining issues or endorsements.** The goal is to determine if there is rough consensus that the document is ready for publication as an RFC.

During RGLC, an announcement is sent to the mailing list (typically with a subject like “RGLC for draft-irtf-cfrg-foo” and a time period, often two or more weeks). Here’s what happens in this stage:

- **Group consensus check:** CFRG members are expected to read the draft (if they haven’t recently) and send in their position. You’ll often see emails like “I have reviewed this draft and support its publication” or comments detailing any remaining concerns. The chairs are looking for **sufficient support** and no major objections. “Rough consensus” in IRTF terms usually means most active participants agree and any objections have been addressed or are outliers.

- **Required reviews:** The chairs will usually insist that at least one or two *Crypto Review Panel* members review the draft during RGLC (if it hasn’t happened already). This ensures an extra level of expert scrutiny. In practice, the chairs might say “we need at least one panel review and a few RG folks to explicitly support before we consider the last call passed.” Having broad feedback gives confidence that the document has been vetted.

- **Addressing last call comments:** If during RGLC someone raises an issue (or suggests improvements), the editors should respond and, if needed, update the draft. All **RGLC comments must be resolved** to the chairs’ satisfaction before moving forward. This might result in a new draft version (e.g., -09 -> -10) to fix minor issues discovered.

- **Outcome of RGLC:** After the last call period, if the chairs determine that consensus has been reached, they will declare the RGLC successful. This means the research group endorses the document. If consensus was not reached – perhaps significant objections came in or not enough reviews/support for the finalization of the proposal were shared on the list – the document might require more work and possibly another RGLC later.

Completing RGLC is a big milestone: it’s the point where the document transitions from being a working draft to an approved research group output. At this stage, the document is sent to the **IRTF Chair** and then the **IRSG (IRTF Steering Group)** for further review (mostly procedural and editorial). After that it is sent to IESG for conflict review. This serves as a check that there is no conflicting work in IETF. Finally, it goes to the RFC Editor for publication as an RFC (most CFRG RFCs are Informational or Experimental category, indicating they are not standards but rather informational guidelines or results of research). The IRSG and RFC Editor steps are beyond the scope of this guide, but essentially, *once you pass RGLC, you’re on the home stretch!* The complete process with the expected timelines is described below.

## CFRG Document Publishing Process

The publication process for documents through the CFRG follows the IRTF consensus-building model. The stages for documents advancing towards RFC publication, along with the expected timeframes, are detailed below:

**1. Individual Draft**
During this stage, the document is incubated under the control of its editors.

**2. CFRG Adoption Call**
Editors work to finalize the document, ensuring it represents consensus within the research group. Editors primarily enact the will of the research group. The CFRG chairs may request one or more reviews from members of the Crypto Review Panel as the document progresses.

**3. CFRG Last Call (RGLC)** *(~1 month)*
The research group assesses if there is rough consensus on the document’s contents. The CFRG chairs require at least one review from the Crypto Review Panel before proceeding. Editors must resolve all RGLC comments before advancing, which might require making changes to the document or at least engaging in a discussion about issues raised.

**4. Document Shepherd Writeup** *(~1 month)*
The document shepherd (usually a CFRG chair or secretary) creates a summary describing the document's status for subsequent review stages.

**5. IRTF Chair Review** *(1 to several months)*
The IRTF chair conducts a review. Editors are responsible for resolving all comments from this review stage before moving forward. Duration varies based on the IRTF chair’s workload.

**6. IRSG Poll** *(typically <1 month)*
IRSG members vote on the publication and may provide additional reviews. Editors must address all IRSG feedback before the document progresses.

**7. IESG Conflict Review** *(typically <1 month)*
The IESG checks for conflicts with ongoing IETF work. Typically, no new reviews occur at this stage.

**8. RFC Editing and Publication** *(several months depending on backlog)*
The RFC editor finalizes and publishes the document. Editors must actively communicate with RFC editors to resolve final comments and approve publication. The duration depends on RFC editor workload and pending dependent documents.

## Guidelines and Expectations

Note that the guidelines and expectations listed below are only a guide and do not comprehensively cover the roles. For detailed guidance on broader IRTF procedures, refer to [RFC 2014 (IRTF Research Group Guidelines and Procedures)](https://datatracker.ietf.org/doc/rfc2014/), [RFC 5743 (Definition of an IRTF Document Stream)](https://datatracker.ietf.org/doc/rfc5743/), [RFC 7418 (IRTF Primer for IETF Participants)](https://datatracker.ietf.org/doc/rfc7418/), and [RFC 7827 (The Role of the RFC Series)](https://datatracker.ietf.org/doc/rfc7827/).


### Editor/Author Guidelines and Expectations {#editor-author-guidelines-and-expectations}

- Actively engage and respond promptly to feedback. Failure to collaborate may result in removal as editor.

- Editors enact CFRG group consensus and drive document finalization in collaboration with chairs.

- Alert chairs about significant problems with the document or editorial team. Ask for help.

- Resolve issues tracked in [external source control](https://github.com/cfrg) and summarize actions taken in source control on-list.

- Share significant changes with the research group through presentations or mailing lists.

- Clearly document the state of security analysis.

- Provide test vectors for algorithm or protocol documents.

- Collaborate with CFRG chairs and experts on the required level of analysis.

- Maintain a changelog, particularly for algorithm or construction specifications.

- Disclose patents or IP related to the document or explicitly state a lack of awareness.

### Contributor Expectations

- Contributions can include implementations, test vectors, feedback, or questions.

- Contributions should be submitted via mailing lists or the document’s issue tracker (e.g., GitHub).

- Evaluate documents for clarity, correctness, and usefulness for developers.

- Communicate clearly to editors and CFRG about identified issues.

- Follow the [IETF Note Well](https://www.ietf.org/about/note-well/).

### Expert Reviewer Expectations

- Focus primarily on the document's technical correctness and usefulness.

- Ensuring that a literature review has been conducted and that the literature analysis reflects academic consensus.

- Editorial clarity is primarily the responsibility of the editors.

- Avoid blocking technical reviews due to minor editorial concerns.

### General Public Expectations

- CFRG and IRTF processes require time; document content will evolve during ratification.

- Be aware of wire-breaking and applicability changes that may affect implementations or use cases.

- Track document updates through source control [github.com/cfrg](https://github.com/cfrg) or via [datatracker.ietf.org](https://datatracker.ietf.org).

## Conclusion

The Crypto Forum Research Group plays a valuable role within the cryptographic and broader Internet standards community by bridging rigorous academic research with practical engineering requirements. Its structured yet flexible process—from clearly defining relevant cryptographic problems and thoroughly evaluating proposals to methodically refining drafts through community engagement—ensures that outputs from CFRG are reliable, secure, and practically useful for the Internet ecosystem. Effective CFRG contributions require clear problem definitions directly tied to IETF or Internet protocol needs, appropriate research maturity, and active collaboration with the cryptographic community.

Ultimately, the CFRG process embodies a careful balance between innovation and caution. Contributors should approach CFRG as a collaborative environment that thrives on openness, patience, thorough cryptographic vetting, and well-defined applicability to real-world protocols.

# Appendices

## Appendix A: Examples of CFRG Work: Successes and Non-Adoptions {#appendix-a}

To illustrate how the above process plays out in practice, here are a couple of historical examples from CFRG’s experience. These show when work has been embraced by the group versus when it struggled, highlighting the importance of having a relevant problem and community buy-in.

### PAKE Selection Process: Community-driven Algorithm Selection

In 2019, CFRG identified a clear cryptographic requirement within the IETF: the need for secure, stable Password-Authenticated Key Exchange (PAKE) protocols. While many potential PAKE schemes existed, there was no widely agreed-upon recommendation for protocol designers. To address this gap, CFRG initiated a structured **PAKE selection process**, designed to evaluate and recommend the most robust and practical PAKE algorithms.

This structured process began by clearly defining two distinct categories of PAKE: **balanced PAKEs** (where both participants hold identical passwords) and **augmented PAKEs** (where the server holds a password verifier, enhancing security against server compromise). Eight candidate PAKE protocols were submitted for review, including both well-established and newer schemes. CFRG then coordinated a rigorous community-driven evaluation involving public review, security analyses, and discussions among cryptographers, resulting in detailed assessments for each candidate.

Through this extensive process, the group ultimately identified two particularly strong candidates that clearly met both security and practical usability criteria: **CPace** (balanced PAKE) and **OPAQUE** (augmented PAKE). Both algorithms benefited from strong academic support, comprehensive security proofs, and clear applicability to IETF protocol needs. Following this consensus, CFRG formally adopted the two algorithms, resulting in well-documented RFCs suitable for broad implementation within IETF protocols.

**Key Lesson:**
The PAKE selection process exemplifies CFRG’s ability to methodically identify critical cryptographic gaps, engage the wider research community for thorough evaluation, and deliver robust, consensus-driven recommendations. This approach not only solved a pressing cryptographic problem for IETF but also established a replicable model for future cryptographic algorithm selections.

### KEM Combiners (Early Proposal and Academic Maturity)

As the need for post-quantum cryptography solutions emerged, CFRG saw proposals for **KEM combiners**—methods for securely combining two key encapsulation mechanisms (KEMs), typically one classical and one post-quantum, aiming to retain security even if one of the schemes is compromised in the future. Initially, a draft proposing a generic framework for KEM combiners was submitted to CFRG. However, at that time, academic literature had not yet fully explored or clearly established the precise security properties and theoretical foundations required for safely combining KEMs.

Without established cryptographic analyses or references, CFRG hesitated to immediately adopt the generic combiner proposal. The proposal, though intuitively appealing, lacked clarity on which specific scenarios or IETF protocols it aimed to address and lacked peer-reviewed research confirming its security assumptions.

Recognizing the importance of the underlying concept, CFRG decided to first engage with the broader cryptographic research community. Over time, academic researchers began to produce analyses and results clarifying the necessary security definitions and proofs associated with hybrid KEMs. These results provided the required maturity and solid theoretical backing for CFRG to proceed confidently.

Subsequently, CFRG formed a design team to clearly define the scope of the problem, specifically focusing on **hybrid KEMs for transitioning to post-quantum security**, driven by practical protocol needs (such as those identified by TLS 1.3 and similar IETF protocols). Once the scope was clearly defined and the necessary cryptographic foundations were academically established, CFRG successfully adopted the refined work in the form of a draft titled[ ](https://datatracker.ietf.org/doc/draft-irtf-cfrg-hybrid-kems/)["Hybrid PQ/T Key Encapsulation Mechanisms"](https://datatracker.ietf.org/doc/draft-irtf-cfrg-hybrid-kems/).

**Key Lesson:**
CFRG typically requires a solid academic foundation—well-established cryptographic analyses or security proofs—before adopting work. Proposals that arrive before academic research has clarified critical aspects may initially be put aside or encouraged to mature academically first. This ensures that CFRG recommendations are reliably secure and scientifically grounded.

### NSA’s Simon and Speck Ciphers: Transparency and Trust Issues in Algorithm Selection

Around 2016–2017, the NSA publicly proposed Simon and Speck, two families of lightweight block ciphers intended for resource-constrained environments like IoT devices. Although these ciphers were designed to provide efficient alternatives to AES for extremely limited hardware and software contexts, CFRG became aware of them through informal discussions rather than a formal Internet-Draft submission. The NSA sought adoption for these ciphers in multiple standards bodies, aiming to integrate them into international protocols such as TLS and DTLS.

Upon review, the CFRG community and broader cryptographic circles expressed significant concerns about the proposal. Primarily, cryptographers raised issues regarding the lack of transparent design rationale provided by the NSA. Without clear documentation on the underlying cryptographic choices or detailed security analyses, CFRG experts hesitated to endorse Simon and Speck. Additionally, despite some preliminary cryptanalysis, the ciphers were relatively new and lacked extensive public scrutiny. Community discussions also questioned whether the incremental performance improvements offered by Simon and Speck justified adopting algorithms with unclear security foundations, especially given the availability of already-vetted solutions like ChaCha20 and optimized AES variants.

Due to these combined issues—particularly the lack of transparency, insufficient independent cryptanalysis, and absence of a compelling and immediate IETF use case—the CFRG community ultimately decided not to adopt Simon and Speck. This decision mirrored broader international skepticism, exemplified by ISO's rejection of these ciphers, also citing the NSA’s unwillingness to disclose full design justifications. Consequently, the CFRG chairs never initiated an adoption call, and Simon and Speck did not progress toward becoming RFCs.

**Key Lesson:**
The Simon and Speck proposal clearly illustrates CFRG’s fundamental requirements for transparency, comprehensive cryptographic analysis, and demonstrable protocol applicability. Successful adoption demands openness in cryptographic design and broad community trust; without these, even proposals from authoritative entities will face significant hurdles and are unlikely to advance within CFRG.

These examples underscore the central theme: CFRG responds to concrete problems and steers efforts that have clear value to the Internet community. When you bring a proposal that aligns with such a problem and support it with research, the group is willing to invest significant time (even years) to vet and refine it. But if you bring something *without* consensus on the problem or lacking research validation, it may not find traction in the group.

## Appendix B: Tips for Contributors: How to Engage Effectively {#appendix-a}

If you’re considering bringing work to CFRG, here are some practical tips to help you navigate the process and fit your proposal into the bigger picture:

- **Do your homework:** Before posting, read up on any related CFRG drafts or RFCs and recent mailing list threads. If your idea was discussed in the past, be ready to explain what’s new or why it’s worth revisiting. Showing awareness of prior work builds credibility. For example, if you propose a new elliptic curve or cipher, make sure you know what CFRG has said about curves or ciphers in the past.

- **Clearly state the problem and context:** As emphasized, make the problem statement front and center. In your initial email or draft introduction, include a **“Problem Statement”** section. Mention which IETF effort or use case it ties into. If possible, get input from people in that IETF working group – a note like “the TLS WG indicated interest in a mechanism for X” helps validate the need.

- **Provide evidence of security and viability:** CFRG is an expert audience. If you have a security proof, reference it (or attach the paper/ePrint). If not, at least describe the security assumptions and whether the scheme has been discussed in academic circles. Referencing external research (e.g., “Prof. X analyzed a similar approach in a 2022 paper”) can lend weight.

- **Be open to feedback (and criticism):** It’s common to receive critiques, alternate suggestions, or hard questions about your proposal. Respond in a constructive manner. If a flaw is pointed out, acknowledge it and suggest how it might be fixed or studied. Don’t take it personally – the process is meant to pressure-test ideas. Incorporating others’ suggestions will improve the work and build consensus.

- **Work with the chairs and the group:** The chairs are there to help manage the process. If you’re unsure about the next steps (for instance, whether to call for adoption or how to form a design team), ask them. If you’re an editor who is overburdened, ask the chairs for help. On the mailing list, try to build support by engaging anyone who shows interest or concern. Sometimes holding an informal side meeting or design team (a small group of interested folks brainstorming offline) can accelerate consensus on tricky design choices.

- **Patience and persistence:** CFRG processes can take time. Don’t be discouraged if things move slowly or if you have to go through multiple draft revisions. If the problem is worth solving, it’s worth doing right. Keep the discussion alive (but respectful of people’s time – occasional updates or questions are better than daily pings). When the draft is adopted, be prepared for a marathon, not a sprint, especially for complex research-heavy topics.

- **Know when CFRG is (and isn’t) the right venue:** Finally, evaluate if CFRG is the appropriate home for your work. CFRG is great for questions of *cryptographic design, analysis, and evaluation* that will inform protocol standards. If your proposal is more along the lines of “we need to implement this existing crypto in protocol Z,” an IETF working group might handle it directly. Conversely, if your idea is highly theoretical with no foreseeable tie to Internet protocols, CFRG might not take it up until that changes. It’s about hitting the sweet spot of **research with a practical purpose**.

By keeping these guidelines in mind, you can greatly enhance the likelihood that your proposal will smoothly progress from an initial idea to a fully adopted draft and eventually become a published RFC. The CFRG community is collaborative, welcoming, and eager to explore new cryptographic ideas; they simply emphasize proposals grounded in clear, practical needs and supported by thorough analysis. We encourage you to actively engage with CFRG and look forward to seeing your contribution become another successful part of the group's ongoing efforts!

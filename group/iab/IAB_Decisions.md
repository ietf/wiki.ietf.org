---
title: IAB Decisions
description: 
published: true
date: 2023-12-05T19:59:07.772Z
tags: 
editor: markdown
dateCreated: 2023-12-05T19:59:02.303Z
---

# IAB Decision taking
IAB decision taking is documented in RFC 2850:

> 3.5 Decision taking
> 
>   The IAB attempts to reach all decisions unanimously.  If unanimity
>   cannot be achieved, the chair may conduct informal polls to determine
>   consensus.  The IAB may make decisions and take action if at least
>   seven full members concur and there are no more than two dissents.
> 
>   The IAB may reach decisions by face to face meeting, teleconference,
>   Internet communication, or any combination of the above.

Practically, in most day-to-day business, the chair will determine consensus based on the absence of dissenting positions being put forward in a reasonable time.

This decision taking procedure aims to reach consensus and support from the IAB as a whole. The drawback of such procedure is that it may end up in deadlocks or it may take significant time to reach a decision. While this is acceptable to a number of situations, there are other IAB decisions where not having a decision is not acceptable. In particular, in the case of appointments or IESG slate confirmation, a decision needs to be made on a given deadline. Because of that, the IAB follows the procedure defined in Section 3.7.4 of RFC 8713 (https://www.rfc-editor.org/rfc/rfc8713.html#name-confirmation) in this type of cases.

## NOMCOM confirmation
During nomcom confirmation process the IAB follows the rule from section 3.7.4 of RFC8713:
> 
>  4.  A confirming body decides whether it confirms each candidate
>     using a confirmation decision rule chosen by the confirming
>     body.
>    
>    If a confirming body has no specific confirmation decision
>     rule, then confirming a given candidate should require at least
>     one-half of the confirming body's sitting members to agree to
>     that confirmation.
        
It should be noted that if this rule results in a dead-lock the IAB may choose another decision rule.

However, there are several aspects missing in the procedure documented in RFC8713. In order to provide guidance on how to deal with these issues, the following default procedure is defined.

## IAB default voting rules for appointments, confirmation of slates and other deadline driven decisions
The default voting rules are as follows:

In order to make an appointment or confirm a candidate, the IAB requires a simple majority of the non recused voting members of the IAB to vote in the affirmative.

When the voting will be taken in a meeting (physical, audioconference, jabber), the fact that a given appointment or confirmation will be voted in a given regular business meeting MUST be announced in the agenda for that meeting which MUST be posted 24 hrs in advance. If the voting will be performed in any irregularly scheduled meeting (i.e. meetings other than the regular IAB meeting or in a regular IAB tech chat) then, this MUST be announced a week in advance.

The members who cannot participate in the discussion will not be able to cast their vote for this particular round of voting.

When the voting will take place via email ("e-vote"), a ballot with the question will be sent to the IAB by the IAB Chair or the IAB Executive Administrative Manager, and the e-vote will remain open until all IAB members have responded; IAB members who have not responded to the e-vote before the next IAB meeting will be asked to cast their vote during that meeting. The results of the e-vote will be recorded in the minutes of the next IAB meeting.

By default, the voting will be non-blind.

The IAB MAY use alternative voting rules. In order to do that the IAB chair MUST announce the alternative voting rules to the IAB at least one week before the voting takes place. If a member of the IAB objects to the alternative voting rules, the resolution of the conflict will be addressed following usual RFC 2850 guidelines.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-03-16. It was migrated from the old IAB wiki on 2023-12-05.*
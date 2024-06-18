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

Practically, in most day-to-day business, the chair will determine consensus
based on the absence of dissenting positions being put forward in a reasonable
time. However, some decisions are deemed important enough to require a formal
vote. This document formalizes the process used by the IAB to make such
decisions.

# Number of allowable dissents

The two-dissent rule from RFC 2850 aims to reach consensus and support from the
IAB as a whole. The drawback of such a rule is that it may end up in deadlocks
or it may take significant time to reach a decision. While this is acceptable
to a number of situations, there are other IAB decisions where not having a
decision by a given deadline is not acceptable. Because of that, those
decisions do not follow the two-dissent rule from RFC 2850 and instead only
require a simple majority:

* IAB confirmation of the IESG slate from the NomCom

* Appointments

* Signing of letters from the IAB as a whole

In such cases, votes require a simple majority of the non recused voting
members of the IAB to vote in the affirmative.

# Decision Process

## Open vs Secret Ballots

Votes can either use open or secret ballots. The first step in the process is
for the IAB chair to determine whether it will be held open or secret.

- By default, votes should be open.

- Open ballots are only shared with voting members (IAB members minus
  disqualified and recused members).

- Open ballots can be submitted either by email to the list of voting members
  or as voice votes during an IAB teleconference.

- Secret ballots are only shared with the Executive Director and Chair.

- If there is no consensus among voting members on whether a vote should be
  open or secret, the vote will be by secret ballot.

The IAB chair will then determine whether to use the Normal or Expedited
process.

## Normal Process

The chair of the IAB will typically follow the following process:

- If the request for a vote comes from an external source (e.g., the NomCom
  provides its IESG slate for confirmation), then, as soon as possible after
  receiving the request, the IAB chair adds the vote topic to the agenda of the
  next IAB teleconference. If the next meeting is less than 48 hours away, the
  chair should instead add the topic to the following teleconference.

- The chair emails the list of voting members to announce the date of the
  discussion, whether ballots are open or secret, and start an email discussion
  thread on the topic.
  
- The agenda of that meeting will include the vote discussion, and needs to be
  posted at least 24 hours in advance. If the discussion will happen in any
  irregularly scheduled meeting (i.e. meetings other than the weekly IAB
  meeting teleconference or meetings prescheduled during IETF week) then, the
  new meeting needs to be announced at least a week in advance.

- Discussion and votes will continue on the voting members list, and during the
  teleconference.

- The vote will typically stay open until a vote has been recorded for every
  single voting member, even after a majority has been reached. This ensures
  every voice can be heard. Note that it is reasonable for any voting member to
  request a few days to review available information before voting.

- If the vote has enough affirmative votes that it would pass if all remaining
  votes were dissents, and at least 7 days have elapsed since the
  teleconference, then the chair can decide to declare the vote closed and
  successful. This avoids deadlock if a voting member is unable or unwilling to
  vote.

- A vote can result as a consequence of a teleconference discussion (e.g., the
  topic of an appointment was on the agenda of the teleconference without
  explicitly mentioning a vote, but during the discussion there was consensus
  to start a vote on the topic). In those cases, votes can be tallied in the
  teleconference, and/or the email to announce the vote can be sent out without
  requiring a second teleconference on this topic.

## Expedited Process

However, in some rare cases where time is of the essence, the IAB chair can
choose to follow an expedited process where votes are open and sent via email:

- The chair emails the list of voting members to announce the Expedited Process.

- Any voting member can veto the use of the Expedited Process and request the
  Normal Process be followed.
  
- The Expedited Process allows voting members to immediately start voting by
  email in response to the chair's email.

- The completion of the Expedited Process depends on the importance of the
  vote, and the external time pressure that it is in response to:
  
    - IESG slate confirmations always require a response from all voting
      members.
    
    - If the external deadline is almost reached (e.g., a letter that the IAB
      is considering co-signing is being published with or without the IAB's
      signature at a certain date), then the IAB chair can call the vote
      complete if both (a) the vote has enough votes that it would pass if all
      remaining votes were dissents (b) the IAB is very confident that the vote
      is uncontroversial and confidently expects missing votes to be
      affirmative.

## Alternative Process

The IAB can use an alternative voting process. In order to do that, the IAB
chair must announce the alternative voting rules to the IAB at least one week
before the voting takes place. If any voting member of the IAB objects to the
alternative voting rules, the resolution of the conflict will be addressed
following usual RFC 2850 guidelines; i.e., if more than two voting members
object to the alternative voting process, the vote reverts to the Normal
Process.

---
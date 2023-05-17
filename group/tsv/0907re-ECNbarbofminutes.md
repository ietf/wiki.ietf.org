---
title: re-ECN Bar Bof Minutes
description: 
published: true
date: 2023-03-13T01:00:26.280Z
tags: 
editor: markdown
dateCreated: 2023-03-13T01:00:19.572Z
---

<pre>

re-ECN congestion transparency
bar BoF
reinserted explicit congestion notification
ad hoc birds of a feather
30 Jul ’09
IETF-75, Stockholm

Chair: Steve Blake
Note Taker: Phil Eardley
Thanks to Iljitsch van Bejnum for recording audio of the session
(available on request, but only a few people are audible). 

Notes (not complete minutes)

Sheet signers: 20 people

Bob: presents his slides

Slide #2: Note Well

Slide #3: Goals of meeting
* start organising BoF for next IETF
  - find / create a w-g for specifying and
experimenting with congestion transparency
  - based around re-ECN
* non-goal (sorry, see elsewhere)
  - describing re-ECN or its uses for initial
understanding

Slide #4: proposed agenda
* (10 mins) Note takers, Note Well, Meeting
Goals, Agenda bashing
* (10 mins) Status report on re-ECN
  - implementations, related activities
* (10 mins) Problem Statement
* (10 mins) BoF Proposal
  - proposed work / charter
* (10 mins) People
  - volunteers, red team, suggested chairs, etc

Slide #6: status of re-ECN
* BoF materials
  - draft problem statement, not BoF proposal
* protocols spec
* motivations, requirements, problem statements, issues
* known implementations
  - 1+ * Linux
  - 0+ * vendor
  - 2 * ns2
* evaluation
  - commercial (GIIC, MIT CFP, modelling)
  - public policy (GIIC, analysis)
  - technical (security, function, uses)

Bob: there are several implementations

Bob: has presented at GIIC - global info infrastructure consortium - of
CxOs - workshop at end of Sept with their experts to decide whether GIIC
endorses re-ECN, meaning support it in standards, in lobbying positions
etc.

Bob: has done phd on attacks and dealing with them - trying to get
clearance to publish

Slide #7: possible work / charter
* Problem Statement, Motivations, Requirements
* Base Protocol
  - Standards or Experimental track?
  - Separate draft on encoding choices (v4, v6, both, which header
fields, encap)?
* Incremental Deployment
  - Proxy
  - Single Domain
  - orthogonal to classes
* Uses
  - Demo?
  - Transports (TCP, MPTCP, RTCP, LEDBAT, Relentless, PCN)
  - Accountability
  - QoS & interconnection
  - DoS mitigation
  - Traffic engineering
* Issues
  - Red team?

Bob: do people in room understand what problems congestion transparency
is trying to solve?

Michael Menth: it needs to be clearer.

Lars: current problem statement is too long, narrow it to 1 or 2 use
cases.

Richard Woundy: qos interconnection is what sold it to me

???: What do you mean by that?

Bob: Could be relationships between operators (for svc providers), or
QoS that works e2e (for e2e people).

Lars: IETF is e2e people

Bob: "Just do-it QoS"? end users going fast and operators being happy,
also encompasses the hi-speed protocols aspect.

Gordon Lennox: it's not clear what will be delivered

Lars: impact is accountability, but this isn't w-g deliverable

Lars: A long list assures failure, since some % of Bof will disagree
with each use case. Also congestion transparency doesn't sound cool

Steve Blake: accountability, so operators don’t have to put in their own
attempts at acc

Kwok: Why isn't congestion trasnparency a good name?

???: 'Cos it needs slides to explain.

Richard: put a lot of effort into making the prob statement nice. What
is the elevator pitch? Is transparency to uses, apps, or what? When I
need to go fast, it goes fast & without a big conversation with the
operators.

Lars: faster service without paying extra - win-win. Need to give
everyone something if you're changing the Internet. People like flat
rate as an insurance against surprises, so can you apply argument about
getting cheaper?

Bob: Got to be careful: that's a possible (very nice) business model
this could be used for - not something we're trying to standardise.

Richard: Charter item on best practice - how to use it.

Bob: let's take the discussion of what's the top level goal to the list


Bob: have assumed Exptl -- or go for Stds track?

Lars; full std, you’re updating rfc791

Michael Welzl: Could possibly use IPID field

Lars: test deployment by an operator in a controlled environment?
Implement as proxy at provider edge? Big change hence showing it worked
in a real nw would be excellent

Bob: Want to do big experiment(s), e.g. Internet 2, GENI

Lars: Do in controlled network. Tell customers. Opting in to expt.
That's how to get enough impact to motivate changes.

Bob: v4 or v6?

Lars: Would like to see an operator doing it. Don't want more pointless,
unused testbeds. v4 more tricky to get the bit.

Iljitsch: v6 more costly

Bob: will tunnel 6to4 anyway

Iljitsch: Can we use flow label?

Bob: flow label must be constant within a flow

Steve: Take 2 bits out of DSCP?

Bob: Re-ECN orthogonal to Diffserv - needs to work in each DSCP

Richard: Say do v6; and v4 if a volunteer at bof

Lars: How to squeeze a bit out of the header is orthogonal to what to do
with it. Showing you did it & it worked in a real n/w would be
excellent.

Bob: what transport? TCP done so far

Lars: start with tcp

Bob: a Red team to attack it would be interesting

Lars: long way down the road. You don’t have to show can deal with all
possible attacks.

Bob: Experimental?

Lars: It's too important for Expt. Expt could be the ECN nonce, but need
expt to happen.

Lars: Perhaps expt ‘you don’t have to pay if you can get
round it’

Slide #8: modus operandi & people
* place: IETF, IRTF? existing w-g, new w-g?
* people?
  - problem statement, requirements
  - BoF proposal / charter
  - demo
  - suggestions for BoF chairs
* BoF name
* timing: Hiroshima BoF viable?
* mailing list re-ecn@ietf.org
  - https://www1.ietf.org/mailman/listinfo/re-ecn

Bob: IETF or IRTF?

(consensus): IETF

Bob: New w-g?

Lars: ideally, you run in BT nw, then bof proposal. People would be much
more interested if someone had used it.

Bob: So are you saying this is too early?

Lars, no no.

Bob: want spec so not just us doing the expt, and so ietf can influence
prior to release in expt

Lars: Would you agree to it if someone wanted to change the spec?

Bob: of course I would, seriously, if it made sense

Lars: If community saw someone had used it, people would be much more
interested.

Bob: I haven't wanted to release something on the public Internet that
the IETF has had no input on

Lars: you could describe expt & get iesg approval of expt. Could be
constrained because in operator nw and your CPE with user

Richard: How large a trial could you do without worrying about releasing
it in the wild? OK if you keep it in a known community.

Lars: Have to say how to confine the experiment

Bob: And how to reverse the expt if it doesn't work. It's hard to know
when that is, because 'works' in this case means the economics
encourages new behaviours, the security can't be broken, etc

Lars: No because it's contained within an operator network. To stop it
they send new CPE to the users.

Bob; Will need an evaluation report (INFOrmational)

Richard: I got lots of questions about the P4P trial we did. Useful to
have report.

Lars: Could use BoF to raise awareness of this BoF being done, then come
back with results & use BoF to expand to trial.

Bob: If people would like to help, I'm not going to force a show of
hands now, but please talk afterwards and help with discussions on the
list.

Steve Blake, Richard Woundy, Kwok Ho Chan volunteered in the meeting.

Meeting ended.

</pre>

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-08-12. It was migrated from the old Trac wiki on 2023-03-12.*

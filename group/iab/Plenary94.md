---
title: Plenary94
description: 
published: true
date: 2023-12-05T23:09:15.588Z
tags: 
editor: markdown
dateCreated: 2023-12-05T23:09:15.588Z
---

<pre>
# Measurement-Driven Protocol Engineering

The thesis: we have learned a whole lot over the past three decades 
about how to and how not to measure the Internet. In addition to 
providing insight about the network's structure, these also generate 
data that can be used to determine the relative prevalance of behaviors 
in the network, in order either to evaluate the applicability/
deployability/otherwise-good-ideaness of a protocol. On the other hand, 
lots of our protocols are designed on a basis of intuition, good 
engineering practice, and anecdata. So how can we apply measurement to 
remedy this situation, and what kinds of measurements can we lean on?

In TSV alone examples of design-by-anecdata abound: MPTCP spent a great 
deal of design effort trying to work around both anecdotally-observed as 
well as predicted middlebox interference; TCPM has had similar 
discussions about multiple proposals to extend options space each built 
on an implicit model of this interference; the majority of the technical 
TCPINC traffic of late hinges on how to handle TCP simultaneous open 
(which, it turns out, is hard when your crypto protocol needs to know 
who shot first), with estimates of how often TCP simultaneous open is 
actually used ranging from "all the time" to "never".

The How Ossified is the Protocol Stack? (HOPS) proposed RG is looking to 
tackle this problem with specific respect to the deployability of new 
transport protocols -- what is the prevalence of specific middlebox 
(mis-)behaviors and impairments to path transparency, which turns into 
the following questions: what does it make sense to build workarounds 
for at runtime (fall back to something-over-TCP when you're inside an 
enterprise firewall on early 21st century default rules and blocks 
something-over-UDP), what does it make sense to simply ignore and let 
fail (ECN causes your router to reboot, which did indeed happen fifteen 
years ago but doesn't much anymore because security), and what does it 
not even make sense to try (protocols without ports behind a NAPT box).

In short, we want data to inform our decisions about how to evolve the 
protocol stack.

The question I hope to pose in the plenary is: is this a principle 
beyond HOPS? are there other areas in which measurement can be used more 
effectively to make protocol engineering decisions?

# Proposed outline

From the current idea of the plenary schedule we have 30 + 15 minutes. I 
think there's time for two or three speakers, on three topics: intro to 
the thesis, the HOPS view of measurement-driven protocol engineering, 
and a non-HOPS view. I've reached out to Jim Cowie (thanks Andrew for 
the intro) to talk about the non-HOPS view (probably focusing on bits of 
the infrastructure such as BGP and DNS). I can do the intro, and don't 
have a speaker yet for the HOPS view (though in an emergency, though, I 
could do this, too).

## Intro talk

speaker Brian Trammell

- one slide on stack evolution: what broadly are we trying to do, 
picture of the two-stemmed martini glass
- raises a question about how much we know about what will work
- a slide with basic data (the HICCUPS slide shown in Honolulu's 
stackevo introduction is still the newest thing we have here) -- point 
out we want more
- outline measurement-driven protocol engineering concept, and the parts 
we need to make this work:
 - measurements we have, measurements we don't have but need
 - comparability and repeatability
 - mechanisms for in-band measurement, or gleaning information on 
network behavior from error logs etc.
 - widely distributed control and collection
- one slide intro to what HOPS is now

## HOPS talk

TBD, speaker TBD

## beyond HOPS talk

TBD, probably focused on infrastructure, have reached out to Jim Cowie 
of Renesys/Dyn Research.
</pre>

## Suggested Timing

<pre>
1. Welcome		5 minutes	0900-0905

2. Host Presentation	5 minutes	0905-0910

3. Reporting: 
  - IETF Chair		5 minutes	0910-0915
  - IAOC Chair & IAD	5 minutes	0915-0920
  - IETF Trust Chair	5 minutes	0920-0925
  - NomCom Chair	5 minutes	0925-0930
  - IAB Chair		5 minutes	0930-0935
  - IRTF Chair		5 minutes	0935-0940
  - RSE		        5 minutes	0940-0945

4. Technical Topic: TBD	30 minutes	0945-1015
	Q&A		15 minutes	1015-1030

5. IAB Open Mic		15 minutes	1030-1045

6. IAOC Open Mic	15 minutes	1045-1100

7. IESG Open Mic	15 minutes	1100-1115
</pre>

Note that this proposal is not final (as of 2015-08-25); discussions about cutting down the reporting time are ongoing.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-09-29. It was migrated from the old IAB wiki on 2023-12-05.*
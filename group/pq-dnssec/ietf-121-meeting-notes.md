---
title: IETF 121 pq-dnssec side meeting notes
description: 
published: true
date: 2024-11-07T17:48:47.614Z
tags: 
editor: markdown
dateCreated: 2024-11-07T15:06:08.203Z
---

# pq-dnssec research side meeting at IETF 121 minutes

Date and time: 2024-11-07, 11:00

Announcement: https://mailarchive.ietf.org/arch/msg/pq-dnssec/dTnL9ZprjbJgnkOKUeqv6S7sZ3c/

Organizers: Caspar Schutijser and Peter Thomassen

Minutes: Shane Kerr

## Note Well / Agenda Bashing

[Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/chair-slides.pdf)

## PQ DNSSEC with MTL Mode

Presented by Joe Harvey Verisign, [slides available here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/Harvey_PQ_DNSSEC_with_MTL_Mode.pdf)

Merkle Tree Ladders

MTL mode is a method for reducing a signture schema's operational
impact on an expanding message series.

Two specification documents (IETF drafts)

https://datatracker.ietf.org/doc/html/draft-fregly-dnsop-slh-dsa-mtl-dnssec-00

Some intellectual property around this

At IETF 120 signer demonstrated.

At IETF 121 Unbound validating resolver demonstrated.

Responses did fit in 420 bytes, so okay. Ladder is big and caching it
will take space.

Interoperability and feedback on operational concerns. DDoS needs to
be investigated due to larger signatures.

Next: 
* Test incrementally signed zones
* Collect metrics on DNSSEC with MTL mode
* Expand POC and test interoperability

### Q&A

Paul Hoffman: Having two sizes of response where you have to go back
for the 2nd one is a radical departure for DNSSEC. Will this be worth
retooling all of DNSSEC validators and signers to handle this?

Joe Harvey: If you get truncated for UDP you have to retry anyway.
Hopefully more than 50% of the time you wouldn't have to retry, and
only sometimes would it be like today.

Paul Hoffman: I thought that in order to do a normal request you have
to include the EDNS0 option because of the signing scheme?

Joe Harvey: You still need the DNSSEC flag, and if you query without
the EDNS0 option you get the shorter signature which you might not be
able to validate.

Paul Hoffman: The document needs to have a lot more on this behavior,
because the new EDNS0 option is necessary.

Ondrej Sury: Considered forcing resolver to always look for longer
answer, or look at multi-signer scenario?

Joe Harvey: Haven't looked at yet. Just seeing how much we can save
over existing schemes - some would give us 8K signatures. But a good
point, and we need to do more experiments. Just like the DDoS
question, we need to look at the impacts.

## Field study on mitigating the costs of Post-Quantum DNSSEC with Merkle Trees

Presented by Jason Goertzen, [slides available here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/Goertzen_Field_Experiments_on_Post-Quantum_DNSSEC.pdf)

Investigate what happens with no changes to DNSSEC, deploying
post-quantum cryptography today.

Used liboqs, RIPE Atlas probes, BIND 9 and PowerDNS.

Explain what a Merkle tree is (hashes cover children, recursively).

Able to stay below 1232 limit for MTU (Falcon does too).

Zone transfers also small. No need to send RRSIG (well, send dummy
RRSIG)!


### Q&A

Karl Dyson: What size of zones have you done?

George Choules: What do you define as a correct response?

Jason Goertzen: One that you are expecting.

George Choules: Why is the situation so bad with TCP?

Jason Goertzen: We're not sure. We haven't been able to identify but
that would be a nice follow-up.

???: 32-byte hash, for TL mode you need 16 byte hashes and that cuts
DDoS in half.

???: Geoff Huston has done a lot of research about why TCP breaks and
where it breaks.

Jason Goertzen: Our hash sizes were 16 bytes as well. I'll
double-check the size.

Paul Hoffman: Are we going to see a specification for this reasonably
soon or...?

Jason Goertzen: At the moment there is not a draft. It's still quite
early, we're not sure what our next steps are. Purely research,
academic work. I can see a blog post coming out eventually.

Paul Hoffman: Is there a GitHub repo?

Jason Goertzen: Yes! If you go to the website there is a link to both
PowerDNS and BIND. Will release the Merkle stuff quickly, and the
measurement scripts are coming as well.

Shane Kerr: Don't worry about making the code too clean!

## A testbed to evaluate post-quantum cryptography in DNSSEC

Presented by Ralph Koning, [slides available here](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/Koning_A_testbed_to_evaluate_post-quantum_cryptography_in_DNSSEC.pdf)

Comparison of algorithms: https://pqshield.github.io/nist-sigs-zoo/

PATAD testbed available, where you can specify your own topology.

Walk-through of how to use it.

Includes a DNSViz interface.

You can run the testbed yourself.

Working with SURF (Dutch NREN) to measure impact of DNSSEC signing &
resolvers: validation timings, response times, packet sizes.

Implement/investigate other Round 2 candidate algorithms.

Look at Merkle-Tree/MTL solutions.

Questions for the group!
* Should we as a group ask cryptographers to develop parameter sets
  that give more properties that are more suitable for DNSSEC?
* What are our constraints regarding cryptographic strengths?
* how long do we need to keep zones signed with a particular key
  secure?

* Can we somehow pinpoint a moment when quantum computers become a
  threat to DNS security?

### Q&A

Paul Hoffman: MAYO has different parameters. How did you pick the ones
that you used?

Ralph Koning: We had constraints for DNSSEC and picked the ones as
close as possible.

Paul Hoffman: Stomping on some reserved codepoints. We need some
codepoints for testing. 10? 25? (Out of 256 we're using about 12
now, and starting at 251 and going down makes sense for private use.)
I'll start a draft.

Shane Kerr: I don't think we need many code points.

???: When will government organizations require & ship ...?

Mark Andrews: We already have private code points.

## Open Discussion / AOB

[Slides](https://github.com/IQTF/pq-dnssec-materials/raw/refs/heads/main/IETF121/chair-slides.pdf) (the last slide of the slide deck)

Shane Kerr: As a DNS operator we have no plans at all and are just
eagerly following the work.

A. Schulze: Interested in the topic. Try to do some tests. Noted that
Unbound and NSD has interesting PQ possibilities. I'll try to get
that code running and see what exploded.

Andy Fregly: Authors on research for post-quantum DNSSEC draft, almost
all people are willing to support research efforts so reach out to
him. Always good to talk with Geoff Huston about research on how
transmit DNS traffic.

Paul Hoffman: Request to use mailing list much much more than we have
now.

Shane Kerr: Root zone rolls take time and we should consider working
back with some timelines.

Mark Andrews: Strengths of key sizes. 64K is the actual inflection
point in the table.

Andy Fregly: Where we want to be a year from now, a listing of
applicable research done to date. What's the gap in research?


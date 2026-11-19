---
title: Cognitive Reconciliation for YANG and TMF: a Demonstrator
description: Public, reproducible demonstrator for draft-janz-onsen-cognitive-reconciliation: agent-to-agent reconciliation of the L3SM-to-TMF and L3SM-to-L3NM problems, run on your own model API licence.
published: true
date: 2026-11-19T13:43:37.285Z
tags: onsen, yang, tmf, l3sm, l3nm, reconciliation, demonstrator, internet-draft
editor: markdown
dateCreated: 2026-11-18T02:49:19.065Z
---

A public demonstrator accompanying the Internet-Draft **draft-janz-onsen-cognitive-reconciliation** (Janz, Peters). It applies the agent-to-agent reconciliation methodology of **draft-janz-nmrg-adhoc-semantic-reconciliation** to two of the ONSEN working group's problem areas, and lets anyone reproduce the results reported in the draft with their own model API licence.

## What it shows

Two cases, at the two ends of a cognition-placement spectrum:

- **OSS/BSS interface and API interoperability** — the L3SM-to-TMF mapping of draft-lls-onsen-yang-tmf-mapping. A cross-format, largely determinate mapping, where over-arching cognition over the static models reproduces the whole 209-characteristic correspondence with no standard. A more cognitive placement adds nothing; for this problem that is the finding, not a limitation.

- **The structural LxSM and LxNM problems** — reconciling the L3SM service model to the L3NM network model. A cross-abstraction mapping, where a cognitive counterpart earns its place, on four capabilities: interrogation (a fact held only by the network side), pragmatics (a reference frame the model can leave implicit), self-maintenance (a trigger the agent adapts for itself), and a virtual experiment (a correspondence only testing settles).

It also runs the model-drift lifecycle — reactive detection and node-scoped re-reconciliation, and a measured proactive-notification gain — and a step-through movie that visualises each stage, marked for where it sits on the placement spectrum and for whether more cognition would add anything.

## Explanatory material: a concept note and two videos

The automated reconciliation process can be hard to follow from the demonstrator alone. A concept note and two narrated videos explain it. The videos are AI generated and carefully curated.

They set out how the process handles the two cases, TM Forum to L3SM and L3SM to L3NM, and where the handling differs. Of greater interest, they explain why it must differ, under a framework that distinguishes translation problems from binding problems. A correspondence between two models that the models themselves settle is a translation: it can be settled once and published as a mapping. A correspondence that only one of the systems can settle is a binding: it is made by a judgment in that system, and no mapping can fix it in advance. The framework is set out in the first video, and it goes a long way toward explaining the history of issues behind the ONSEN problem statement.

- Part 1 (video, about 20 minutes): the framework and the method
- Part 2 (video, about 18 minutes): the two cases, step by step
- Concept note (PDF, 10 pages)
- All files, with transcripts (download the videos to view them): https://github.com/ChrisFJanz/onsen-cognitive-reconciliation/tree/main/translation-or-binding

## How to use it

Repository: **https://github.com/ChrisFJanz/onsen-cognitive-reconciliation**

- Clone the repository.
- Supply your own model API licence. The harness calls an ordinary mid-capability model; a frontier model is not required.
- Run the harness scripts to reproduce the schema-level, instance, drift, and service-to-network results.
- Open the HTML movie under `demo-movies/` to step through the whole process in a browser.

## Frozen, but not artificial

The step-through movies are frozen, but they are not staged. Each is a snapshot of the full process rig described in draft-janz-onsen-cognitive-reconciliation and in draft-janz-nmrg-adhoc-semantic-reconciliation: real runs of the published harness, with the reconciliation transcripts recorded so the runs replay offline. Every scored figure is a real output of the harness, not an illustration.

The reported figures come from gpt-4o runs. A fresh live run, with a different model or at a later date, will vary; the exact figures reported in the draft replay offline from the recorded transcripts in `transcripts/` (run with `--resume`), with no API calls.

## Contact

Christopher Janz (chrisfjanz@gmail.com) · Brad Peters (bradpeters@nbnco.com.au)
---
title: Emergency Context Resolution with Internet Technologies (ecrit) 
description: Wiki for ecrit wg
published: true
date: 2022-12-08T23:53:52.099Z
tags: 
editor: markdown
dateCreated: 2022-12-08T23:46:18.585Z
---

# ECRIT Wiki
## PSAP Callback

http://tools.ietf.org/id/draft-schulzrinne-ecrit-psap-callback-01.txt defines PSAP callback and illustrates what solution is provided with existing specifications. It then goes on describing under what circumstances the existing solution does not work.

A few design decisions impact the direction of a solution, namely:

1) Approach 1: Indication that the caller is a PSAP.

2) Approach 2: Indication that the call is in response to a previous emergency

    call.

3) Approach 3: Indication is that the communication attempt is of emergency nature.

The group needs to make a decision about the solution direction.

We discuss each solution approach in more detail below.

**Approach 2: Indication that the call is in response to a previous emergency call.**

A variant of approach (2) is already described in Section 13 of [I-D.ietf-ecrit-framework] and provides the following guidance regarding callback handling:

> A UA may be able to determine a PSAP call back by examining the domain of incoming calls after placing an emergency call and comparing that to the domain of the answering PSAP from the emergency call. Any call from the same domain and directed to the supplied Contact header or AoR after an emergency call should be accepted as a call-back from the PSAP if it occurs within a reasonable time after an emergency call was placed.

This approach mimics a stateful packet filtering firewall functionality. Although this approach is quite coarse grained since any call from the PSAP's domain is given preferential treatment it is likely to be practical.

It is possible to reduce the granularity by storing additional information (such as the username part of the called party rather than just the domain part).

### Approach 1: Indication that the caller is a PSAP.

Approach (1) requires more discussion. Consider the following approaches:

```
                 +----------+
                 | List of  |+
                 | valid    ||
                 | PSAP ids ||
                 +----------+|
                  +----------+
                      *
                      * whitelist
                      *
                      V
   Incoming      +----------+    Normal
   SIP Msg       | SIP      |+   Treatment
  -------------->| Entity   ||=============>
   + Identity    |          ||(if not in whitelist)
                 +----------+|
                 +----------+
                      ||
                      ||
                      || Preferential
                      || Treatment
                      ++=============>
                        (in whitelist)

```

Figure 1: Identity Based Authorization

In Figure 1 an interaction is presented that allows a SIP entity to make a policy decision whether to bypass installed authorization policies and thereby providing preferential treatment. To make this decision the sender's identity is compared with a whitelist of valid PSAPs. The identity assurances in SIP can come in different forms, such as SIP Identity [RFC4474] or with P-Asserted-Identity [RFC3325]. The former technique relies on a cryptographic assurance and the latter on a chain of trust.

The establishment of a whitelist with PSAP identities is operationally complex and might not easily scale world wide. When there is a local relationship between the VSP/ASP and the PSAP then populating the whitelist is far simpler.

A drawback of the presented solution is that this method does not allow any mechanism to distinguish different types of calls initiated by PSAPs.

An approach that extends the one presented in Figure 1 is outlined in Figure 2. RFC 4484 illustrated the basic requirements for this technique.

```
               +----------+
               | List of  |+
               | trust    ||
               | anchor   ||
               +----------+|
                +----------+
                    *
                    *
                    *
                    V
 Incoming      +----------+    Normal
 SIP Msg       | SIP      |+   Treatment
-------------->| Entity   ||=============>
 + trait       |          ||(no indication
               +----------+| of PSAP)
               +----------+
                    ||
                    ||
                    || Preferential
                    || Treatment
                    ++=============>
                      (indicated as
                       PSAP)
```

Figure 2: Trait Based Authorization

In a trait-based authorization scenario an incoming SIP message contains a form of trait, i.e. some form of assertion. The assertion contains an indication that the sending party has the role of a PSAP (or similar emergency services entity). The assertion is either cryptographically protected to enable end-to-end verification or an chain of trust security model has to be assumed. In Figure 2 we assume an end-to-end security model where trust anchors are provisioned to ensure the ability for a SIP entity to verify the received assertion.

From a solution point of view various approaches are feasible, such as SIP SAML (see http://tools.ietf.org/html/draft-ietf-sip-saml-06) or URI Parameters for indicating the Calling Party's Category and Originating Line Information (see http://tools.ietf.org/id/draft-patel-dispatch-cpc-oli-parameter-02.txt).

**Approach 3: Indication is that the communication attempt is of emergency nature.**

This approach is a slight modification of the one presented in the previous section. Instead of indicating that the calling party has the role of a PSAP it instead indicates the emergency services nature. This indication cannot be verified by external parties because it heavily depends on the intention of the call taker itself. Call takers might make calls that cannot be classified as emergency calls. It is, however, possible to combine this marking with the indication of the PSAP role. A receiving entity might be more inclined to execute preferential treatment in case (a) there is a close relationship with the emergency services authorities (e.g. the PSAP identity is listed in a white list), and (b) an assertion is provided that indicates the sender's role as a PSAP (or similar emergency services entities).

**Decisions for the WG to make**

a) Do you believe that approach (3) is the correct direction for further standardization work?

b) Is it useful to specify the technical capabilities for offering trait based authorization to simplify decision making with approach (3)?

### 2nd Virtual Interim Meeting

Date: Wednesday, June 3, 2009, 13:00-14:30 EDT (17:00-18:30 GMT)
Agenda

Agenda bash: 5 min.

Chair Update: 5 min.

PhoneBCP discussion: 45 min.

* After attempts to come to resolution around the issue of ‘Applicability Statement’, it’s clear that we don’t have consensus to include the current statement in the draft. The chairs are looking for discussion/contributions towards resolving this issue.

Work Prioritization: 20 min.

* The ADs are still holding us to getting PhoneBCP and Framework out before adding more milestones. The group has stacked the deck of milestones, but we want to discuss prioritization of the new milestones we’ll be asking for as we will be limited to 6 at a time.

Open Discussion: 15 min.
Slides

http://trac.tools.ietf.org/wg/ecrit/trac/attachment/wiki/WikiStart/ECRIT-Chair-Update.ppt

### 1st Virtual Interim Meeting

Date: 26th February, 2:00 PM EST

Duration: 2 hours

This is the agenda proposal for the meeting:

draft-ietf-ecrit-phonebcp and draft-ietf-ecrit-framework 

Only if there are substantial comments received during WGLC that require a discussion. Brian will do the job.

draft-ietf-ecrit-lost-sync 

Recently Roger and Richard provided their document reviews. We discuss their reviews. Henning or Hannes will be the discussion lead.

draft-ietf-ecrit-local-emergency-rph-namespace 

This document received a lot of feedback. We should start our discussion with the where the marking should happen along the e2e chain. James is going to lead this discussion.

draft-barnes-ecrit-rough-loc 

Richard will lead us through this document and tell us what the necessary steps are to complete it.

draft-patel-ecrit-sos-parameter 

Milan will tell us what the open issues with this document are.

draft-rosen-ecrit-premature-disconnect-rqmts 

Brian will inform us about the recent draft update and we will chat whether this version can be picked up as a WG item.

RFC5031bis and draft-forte-ecrit-lost-extensions 

Henning or Andrea will brief us about the plans to update the Service URN RFC and how to then deal with the extensions that have been proposed to the group.

draft-wolf-ecrit-lost-servicelistboundary 

Karl Heinz wanted to give a presentation about this draft at the last IETF meeting but we ran out of time. Let's try it again.

draft-schulzrinne-ecrit-unauthenticated-access 

Finally, we should chat about how we should proceed with the unauthenticated emergency calls document.


---
title: draft-li-idr-bgp-sr-policy-bfd-extension Shepherd Reviews for IDR 
description: draft-li-idr-bgp-sr-policy-bfd-extension Shepherd
published: true
date: 2026-10-19T02:09:52.717Z
tags: 
editor: markdown
dateCreated: 2026-10-19T02:09:52.717Z
---

# draft-li-idr-bgp-sr-policy-bfd-extension
# Shepherd Review 

## Summary 
**document:** [draft-li-idr-bgp-sr-policy-bfd-extension](https://datatracker.ietf.org/doc/draft-li-idr-bgp-sr-policy-bfd-extension/)
**current version:** -02 
**Next steps:** 

## Review -02 

### Technical issues 
#### Technical issue 1, add appendix 
Create a Cross-WG appendix that indicates drafts in IDR, Spring, PCE, and BFD that relate to this draft.

#### Technical issue 2, section 2.1

current text:
>    /Optional TLVs: variable-length.  It is optional and MAY be used to
>    carry additional parameters.  Details are defined in Section 2.2./
{.is-info}

   
Problem: TLV are usually used in SR-TE documents to refer to the [RFC9012] TLV level.  I suggest that sub-SubTLVs or some other name be used for the TLVs within the S-BFD Sub-TLV Format. 

#### Technical issue 3, section 2.1, discriminator 

text: 
>    Your Discriminator: 4 octets.  This field identifies the S-BFD
>    reflector instance on the tailend node.  It MUST match the local
>    discriminator configured on the tailend reflector.  This field is
>    REQUIRED, as S-BFD sessions rely on the Your Discriminator to
>    demultiplex incoming S-BFD packets as specified in [RFC7880].
>    
{.is-info}

Is zero a valid value? 

#### Technical issue 4, section 5

Section 5 describes in general how the BFD interacts with the CP selection.  The IDR chairs would like to see additional discussions in the WG on how this interacts with other features already in WG documents or proposed in individual documents. 

We recommend a discussion on the idr mail list or in a WG session.  These discussion will help the others refine section 5 to include other interactions.  

It is critical that the operator understand how the links between features will interact in the network. 

   

---
title: PKNG (Concluded) Public Key Next-Generation Research Group
description: 
published: true
date: 2023-03-03T22:45:11.518Z
tags: irtf
editor: markdown
dateCreated: 2023-03-03T22:45:11.518Z
---

# Public Key Next-Generation Research Group (PKNG) (Concluded)
## Ground Rules for the RG 

### Listing Desired Features, Not Requirements 

In the IETF, Working Groups often get bogged down when trying to list "requirements" for formats and protocols. One of the primary problems is that one person's requirement is another person's niche feature. That is, someone has to determine how important each proposed feature is to determine how "required" it is for the community that might use the eventual standard.

In the PKNG RG, we are listing desired features, not requirements. The result will be a long laundry list that has many more features than most scenarios would need, but that is just fine. Later, when someone wants to make a "real" PKI from the research that we do, they can cull the list, but two people doing that task will probably come up with different lists.

A related research objective is to note groups of features (not requirements) that conflict with each other. If we find such groups, we will describe them in the same document as the features list. The existence of these groups of conflicting features will not limit the list of features, but will be metadata for the overall list.

The list of features is not limited to certificate contents: we will also discuss features that would be useful in protocols associated with public keys such as (but definitely not limited to) key status checking and key enrollment.

### Formats and Protocols Come Last, If Ever 

As much fun as the certificate format wars are to participate in, the PKNG RG is not the place for them. In fact, any discussion of what eventual certificate format or protocol would be good will likely limit thinking about desired features. Thus, such discussion is harmful to the initial work of the RG and therefore will not happen on the RG mailing list.

Once the RG has completed the list of desired features, it might (but will not necessarily) discuss formats and protocols. Note that this discussion is not to pick a particular format or protocol: it is to investigate how different formats and protocols limit the choices from the feature list. It is likely that the outcome of this work will be "almost any feature can be embodied in a particular format/protocol with a bit of creativity", but if the outcome is different, documenting the limitations could be valuable to a developer.

### This Effort Is Not About Criticizing PKIX  

The RG will work in a positive mode, namely listing the desired features. It will not work in a negative mode, such as "where PKIX got it wrong". In specific, any proposed fixes or extensions to PKIX are explicitly out of scope for the RG; they are engineering, not research, and should be instead brought directly to the PKIX WG in the IETF.

### We Are Doing Research, Not Engineering 

Engineering is all about tradeoffs and optimizing. This RG is doing research that might end up being used in engineering exercises, but is not doing engineering itself. Thus, we are not deciding which of the desired features are "more useful" or "too hard to implement" and so on.

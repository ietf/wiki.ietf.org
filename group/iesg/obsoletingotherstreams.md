---
title: 
description: 
published: true
date: 2023-02-13T18:00:11.259Z
tags: iesg
editor: markdown
dateCreated: 2023-02-13T18:00:06.755Z
---

# Obsoleting RFCs from Other Publication Streams
Note: Following process is under review. 

## IETF stream obsoleting an IRTF Stream 

A situation may arise where the IETF stream document to be published desires to be a replacement of an existing RFC that belongs to another stream, such as IRTF or the independent stream. Such publications are possible assuming that the targeted stream agrees to this. 

Such a situation happened in the DTN group in September 2019 when the WG desired to obsolete an IRTF stream Experimental RFC (RFC5050 Bundle Protocol v6) with the WG's Standards Track publication (Proposed Standard). In discussion with the IRTF Chair it was proposed to use the below process for this:

 1. WG forms a consensus that it desires to obsolete a particular IRTF RFC
    - Annotate that consensus decision in the document in Headers, Abstract and Introduction.
    - The document shepherd should note the need for cross stream agreement in their write-up
 2. In the IETF Last Call the AD adds this to the last call message to call out the intention to obsolete an IRTF Stream Document. 
    - The AD may seek early feedback on the consent request during their AD review. 
 3. When the IETF Last Call email have gone out, forwards this to announcement to the IRTF Stream Manager to request for consent: irtf-chair@irtf.org. The IRTF Stream Manager should consider if this document should be marked as Historic
 4. If a consent has been given, annotate that consensus in the RFC-to-be. 
 5. The IESG will not approve the document for publication prior to having consent, and if such is not given the document can not obsolete the document in the other stream. 


## IRTF obsoleting an IETF Stream document




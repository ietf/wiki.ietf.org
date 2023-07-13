---
title: Open MNA Interim Calls Action Items
description: Open MNA Interim Calls Action Items
published: true
date: 2023-07-13T14:13:55.887Z
tags: 
editor: markdown
dateCreated: 2023-06-15T13:32:47.922Z
---

# Open MNA Interim Calls Action Items

## Open Action Items
### 1. Investigate intersection of MNA with existing MPLS features
Owner: WG
Update:
- 06/22: no update so far.
- 07/06: no update.
- 07/13: Greg may be able to give a similar presentation for BIER with MNA (after IETF117)


  
### 2. Update to MNA WG IDs: <draft-ietf-mpls-mna-requirements> and <draft-ietf-mpls-mna-fwk> to cover discussion points on 06/15:
Owners: editors of IDs
Points raised:
  - LSR's behavior when multiple ISDs are in the packet
  - Should ISD (above) be a superset of ISD (below)?
  - If ISD is repeated in the stack (due to readable depth) - modifying only the (above) ISD can lead to inconsistency
Update:
  - 06/22: no update.
  - 07/06: to send a summary of discussion to WG mailing list.
 


## Closed Action Items

### 1. DETNET discussion on MNA
Owner: DETNET Chairs/Greg
Update:
- 06/15: Greg is scheduled to give a presentation on July 6, 2023
- 07/06: presentation at [mna_in_detnet.pptx](/mpls/mna_in_detnet.pptx).
 
### 2. Why BIER is using value 5 for the MPLS first nibble?
Owner: WG
Update:
- 06/15: send an email to BIER WG
- The reason is clear from RFC8296 section 2.1.2.
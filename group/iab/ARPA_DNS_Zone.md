---
title: ARPA DNS Zone
description: 
published: true
date: 2023-12-05T17:35:03.697Z
tags: 
editor: markdown
dateCreated: 2023-12-05T17:34:58.648Z
---

# ARPA DNS Zone

## Background 

The IAB is responsible for the contents of the .arpa DNS TLD [see RFC 3172].

## Approving ARPA change requests 

Proposed hanges to the .arpa zone will be received by IANA and the IAB will be notified to approve of changes.  An IAB member will be selected each year to handle approval requests from IANA.  The responsible IAB member will need to approve or handle the request in coordination with the larger IAB.  For some, it is trivial (updated IP addresses, etc.) and the approver can just say yes.  If the approver doesn't think it is trivial, it would go to the full IAB for discussion or a vote.

## Guidance for authors writing IANA considerations sections 

To request an entry under the *.arpa* zone, authors should put a request within the IANA considerations section of the draft.  The following RFCs provide examples:

* RFC 8375
* RFC 7535
* RFC 7050

After the document is approved for publication as an RFC, IANA starts the process for performing the IANA actions.  They will send a template to the IAB requesting approval for adding the ''.arpa'' domain name.

## Other notes 

* Some documents will create sub-zones (eg ''in-addr-servers.arpa.''), and the document should declare how they are to be populated.
* Others will be subdomains that deliberately blackhole requests (eg ''home.arpa'')
* .arpa is a DNSSEC signed zones, and subzones should be encouraged to sign as well (placing a DS record in the .arpa zone pointing to the sub-zones keys)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-06-11. It was migrated from the old IAB wiki on 2023-12-04.*

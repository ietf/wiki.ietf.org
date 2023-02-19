---
title: delete - duplicate
description: 
published: true
date: 2023-02-19T00:34:24.269Z
tags: iesg
editor: markdown
dateCreated: 2023-02-18T03:42:33.958Z
---

# AD Review Checklist
When the AD performs their AD Review there are things they should remember in their review to minimize late surprises. 

## Formality Aspects 
 * Charter - Is this document within the WG's charter?
 * Milestone - Does the produced document conform to the milestone?
 * Intended Status - Verify Tracker setting and that it matches Writeup 
 * Updates or Obsoletes - Verify that the obsoleted document is in IETF stream, else see [Obsoleting other streams](/group/iesg/obsoletingotherstreams)
 * IPR - Author declarations and WG consensus, check write-up. Non-standard or other copyright statements in draft is an issue. If there is a chain of draft replaced by, verify that not earlier has IPR that may have been forgotten.
 * Check for new 8174 Boilerplate (Upper Case keywords)
 * Check out the guidelines in https://www.ietf.org/about/groups/iesg/statements/support-documents/ to see if there will be pushback from the IESG. If so discuss with the chairs/wg
 * IANA Sections: 
    * Change controller for IETF stream documents should be the "IETF". For port and service names, RFC 6335 specifies that Change controller is IESG and contact IETF chair. 
* Check number of authors and justification in write-up if more than 5
* Check "replaces" field in datatracker (also to make sure there are no lost IPR declarations of previous versions)

## Affecting Last Call 
 * External Review Required: Check write-up and document. URI, Media Types, etc require or recommends reviews
 * Downref - Normative references to informational documents not in [down-ref registry](https://datatracker.ietf.org/doc/downref/).
 * Check if there are any documents that are not freely available (i.e. behind a paywall)
 * Set the Consensus field in the tracker based on the desired setting

## Content Aspects 
 * Updates - Does the method for implementing updates match guidelines and current IESG thinking.
 * ID Nits - This is extra challenging now with V3 format and that our guidance in not in sync. For example several aspects of https://www.ietf.org/standards/ids/checklist/ is wrong for a V3 format document. 

## Technical Content 
 * Check the usual hot topics by area: [Expert Topics](/groups/iesg/expert)
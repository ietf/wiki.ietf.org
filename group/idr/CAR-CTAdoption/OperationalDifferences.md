---
title: CAR CT Adoption Operational Differences
description: 
published: true
date: 2023-02-21T06:31:18.150Z
tags: 
editor: markdown
dateCreated: 2023-01-28T23:07:38.795Z
---

# CAR-CT Adoption Call Part 3: Operational Differences 
## Week 2-3 Summary in Detail in file
[car-ct-part3-details-v3.pdf](/test-folder/car-ct-part3-details-v3.pdf)

## Week 2-3 Summary for GitHUB in file
[car-ct-issue-summary-v4.pdf](/test-folder/car-ct-issue-summary-v4.pdf)

## Summary of Issues for GITHUB
The PDF file above has better formatting for these issues.

## CT Issues
F3-CT-Issue-1: SAFI-76 only in Option C

- Add text to clarify the operational of CT under topologies for option A, B, or C
- Expand current Add Paths Example for service and transport AFI/SAFI families
- Add text on why RFC8277 (Appendix)
- Explanation of how RD can be used as an end-to-end distinguisher. In this explanation, please explain what happens at border routers (BRs).

F3-CT-Issue-2: Scaling Discussion

- Add text on why CT uses RFC8277 (Appendix) that includes scaling discussion. Sizing discussion should reference the following (at least): [draft-hr-spring-intentaware-routing-using-color-00#section-6.3.2](http://tools.ietf.org/html/draft-hr-spring-intentaware-routing-using-color-00), and packing for SRv6 SIDs

F3-CT-Issue-3: BGP-CT and RTC

- Expand Section 18.3 in draft-ietf-idr-bgp-ct-00 to indicate the lack of need for “an IP address specific RT” for scenario given by Jeffrey Zhang.
- Clarifying section 14.2 to address Swadesh comments regarding RTs with “< eSN >:< TC > Clarifying should be alignment with F3-CT-Issue-2

F3-CT-Issue-4: CT NLRI Format

- Revise CT text to indicate whether CT allows for multiple labels in NLRI

F3-CT-Issue-5: Putting MPLS Label field into new SAFI format

- Update in CT document to disallow SRv6 Transposition for SAFI 76 in BGP-CT
- Additional details for SRv6 only example discussed by Kaliraj and Ketan – for R4 set in MPLS label field.
- Discussion on Migration from BGP-LU (RFC3101) to RC8277 to CT
- Indicate that LU 3107 to RFC8277 is not in the scope of this document.
- Add a Section on Interaction with LU that includes: deployment of CT along with LU and transition from LU to CT
- Discuss any relevant conflict between SRv6 and MPLS-centric NLRIs
- Write notes for RFC-9252-bis:Write document indicating the issues of problems with SRv6 transport for RFC8277 NLRIs
- Conflict between using SRv6 and MPLS-centric NLRIs

F3-CT-Issue-6: CT’s Discussion (claims) of Benefits of using RD

- Update in CT that provides examples given by discussion and discusses scaling and churn (appendix or main text). The text and updates should clearly define terms (unique, same, single or multiple) used in terms of what is included in the BGP updates and what data policy operates on. This update should include: a) MPLS forward and SR forwarding with single or multiple RDs in BGP updates, and b) Cases when RD rewrite when Nexthop is modified at BR.
### CAR-issues
F3-CAR-Issue-1: BGP-CAR Appendix A.7 Anycast EP Scenario

- Revision of sections in A.7 and B.2 to address any unclear issues regarding ANYCAST. (After all issues are cleared, then the WG should be queried regarding these two sections).
- Discussion of CAR view on the use of color to indicate egress domain visibility.

F3-CAR-Issue-2: BGP-CAR Consensus on the need for resolution schemes

- CAR Sections 1.1 needs indicate that local BGP policy can customize or adjust the route validation (section 2.4), route resolution (2.5), and AIGP (2.6).
- Section 2.10 should cover any issues regarding conflicts caused by local policy.

F3-CAR-Issue-3: Handling of LCM and Extended Communities

- Appendix B.2 should be clarified after F3-CAR-Issue-2 has been expanded to include:
- Sections 1.1 needs indicate that local BGP policy can customize or adjust the route validation (section 2.4), route resolution (2.5), and AIGP (2.6).
- Section 2.10 should cover any issues regarding conflicts caused by local policy.

F3-CAR-Issue-4: CAR Routing in Non-Agreeing Color domains for Anycast EPs

- Clarify paragraph 2 in Section 10 to include assumptions regarding coordination of shared ANYCAST service used across multiple color domains (This issues links to F3-CAR-Issue-4).
- Link revised paragraph 2 in section 10 to Appendix A.7.
- Revise Appendix A.7 (or create a new) to specifically detail how an ANYCAST Address will operate in non-agree color domains.

F3-CAR-Issue-5: BGP Update Packing *Section 6 on Scaling needs to be expanded to include:

- Bytes added to BGP UPDATE message for CAR NLRI with SRv6
- A single 128-bit SRv6 SID or a stack of 128-bit SRv6 SIDs
- A transposed portion (refer [I-D.ietf-bess-srv6-services]) of the SRv6 SID that MUST be of size in multiples of one octet and less than 16.
- Compression allowed due to signal multiple per-prefix encapsulation types & values as part of NLRI. e.g. MPLS Label, SRv6 SID and any other encapsulations.
- Section 2.9.2.3 needs to be upgraded to point to examples in Appendices of carrying single 128-bit SRv6 SID and Stack of SRv6-SIDs. The examples in the appendices should also reference back to scaling in section 6.
 

## WG questions
F3-WG-Issue-1: New Address Families [Shunwan Zhuang] [Both]: Provide an example of incremental deployment in domains 1, 2, and 3. Suppose that only domains 1 and 3 have been enhanced to

- WG (led by Chair + Shunwan)- agree that CAR A.4 contains is common incremental example,
- CT - Add example of incremental deployment to draft.
- CAR – enhance the A.4 example based on lists discussion.

F3-WG-Issue-2: Support for SR-v6 (Jingrong Xie)[xiejingrong@…]

- WG (led by Chair + Jingrong) agree upon same topology for SRv6.
- CT: Provide an illustration of SRv6 data plane (e.g., E2E SRv6 & intra-domain SRv6) based on a sample topology
- CAR: Provide an illustration of SRv6 data plane (e.g., E2E SRv6 & intra-domain SRv6) based on a sample topology
- CAR: (DJ) Add additional options and operational considerations that do need to be described. (CAR authors planned in July to include them along with illustrations in the next version of the draft.)

F3-WG-Issue-3: Key Operational Differences between CAR and CT drafts (Bruno Decraene)

- Bruno Decraene + Jeff Haas - Create common example topology (or topologies) for shared ANYCAST Service across multiple domains. This topology (or topologies) should include anycast endpoints, single-color domains, multiple-color domains, and non-agreeing color-domains.
- CT: Based on the common example technology, add text to draft on shared ANYCAST Service.
- CT: In the introduction to Section 14, clarify what paradigm is used for scaling in CT. (One paradigm might be indirection and hierarchy). The text should include the following:
1) descriptions of how CT’s paradigms for indirection and hierarchy are used in the network’s transport and service topology,
2) descriptions should include unique RDs and same RDs in stable and changing topologies (e.g. routing churn), and
3) how scaling is impacted by NLRI changes are handled in route withdraws, refreshes, and updates.
- CT: Add description of procedures when IP address has collision, or with same RD. (See Bruno’s comments for details).
- CAR: Based on common example topology add text to draft based on shared ANYCAST service. (Note: overlaps with F3-CAR-Issue-4.)
- CAR: In the introduction to section 6, clarify what paradigm is used for scaling in CAR (e.g. indirection and hierarchy). This text should include the following:

1) descriptions of how CAR’s paradigms for indirection and hierarchy are used in the network’s transport and service topology,
2) how scaling is impacted by NLRI changes are handled in route withdraws, refreshes, and updates.

- CAR: Section 2.5 provides two comments on route resolution that need to be clarified:

1) “When multiple resolutions are possible, the default preference should be: IGP Flex-Algo, SR Policy, RSVP-TE, BGP Car, [and] BGP-LU.”

- This description uses the word should which implies that local policy can interfere. This should be clarified.
- This description does not include the inclusion of LCM or Extended-Color Community or Color in the Tunnel Attribute.

2) “Resolution may be automated using Color-EC as illustrated in Appendix B.2.” This comment does not provide a normative set of results for route resolution.

- CAR/CT – Should include discussion on impact on anycast endpoints, non-agreeing color-domains.
- CAR: Add Discussion on Non-agreeing color-domains for Anycast endpoints to error handling and manageability section (section 10). This issue overlaps with F3-CAR-Issue-4 and F3-Wg-Issue-3a.

F3-WG-Issue-4: Intent at Service level [Ketan Talaulikar]

- Chair + Ketan: Define an example of a service layer intent versus transport intent.
- CT: Add a section to discuss how color is implement in the VPN service layer.
- CT: Add a definition of intent that aligns with Spring and other IETF/IRTF WGs
- CAR: Add a section to discuss how color is implemented in the VPN service layer
- CAR: Clarify the definition of intent to align with Spring and other IETF/IRTF WGs.

F3-WG-Issue-5: Technology BGP-CT and CAR are based [upon] and implications [Jeffrey Zhang]

- Chair + Jeffrey Zhang: define an example of RD, RTCs, and labels passed by VPN services that might interact with CT and CAR domains. This example must consider that CAR does not support VPN semantics.
- CT: Clarify the interaction with RDs and RTCs by discussing how CT handles RDs, RTCs, labels and other VPN signaling information that sent to domain with CT.
- CT discuss how efficient CT is in domains which do not handle SR-MPLS or VPNs.
- CAR: Clarify the interaction with RDs and RTCs by discussing how CAR handles RDs, RTCs, labels and other VPN signaling information that sent to domain with CAR.
- CAR discuss how efficient CAR is domains which do not handle SR-MPLS or VPNs

F3-WG-Issue-6: Benefits of Route Targets [Swadesh Agrawal]

- Chair + Keyur Patel + Swadesh Agrawal – Review F3-WG-issues-6 to generalize example for the use of Route Targets
- CT: Provide normative text and examples for non-agreeing color domains with examples on how transport class is used. These examples should include the original example in F3-WG-issue-6 (multiple Transport class RTs) which includes attaching multiple TC RTs to be used in different color domains and the generalized RT example.
- CAR: Provide normative text and examples for non-agreeing color domains. The normative text may require the authors to add additional text on the lack of support for RTs. The examples should include the topology (similar or exactly like the topology above) with three color domains.

F3-WG-Issue-7: Compatibility of BGP-CT and BGP-CAR to SR-PCE (Shraddha Hegde)

- CT: Consider how CT implements or interoperates with all the constructs in RFC 9256 and RFC9252. Provide a short section in your document regarding support.
- CT: Describe the limits of any community, extended community, wide-community regarding color when interacting with CT’s mapping community.
- CAR: Consider how CAR implements or interoperates with all the constructs in RFC 9256 and RFC9252. CAR: Provide a short section in your document regarding support.
- CAR: Describe the limits of any community, extended community or wide-community regarding color. Describe how any of these limits interact with LCM.

F3-WG-Issue-8: Scaling and Expected Route size

- CAR: Discuss in scale section how CAR scales to:
	-  limits in [draft-hr-spring-intentaware-routing-using-color-00](http://tools.ietf.org/html/draft-hr-spring-intentaware-routing-using-color-00) o Jeff Haas’ rough route calculation: 1.5 million routes, given 10K update, about 2.5 minutes of convergence o Robert’s use case: transient route problems every 5-10 sections every 50 seconds

- CT: Discuss in scale section how CAR scales to:
	- limits in [draft-hr-spring-intentaware-routing-using-color-00](http://tools.ietf.org/html/draft-hr-spring-intentaware-routing-using-color-00) o Jeff Haas’ rough route calculation: 1.5 million routes, given 10K update, about 2.5 minutes of convergence o Robert’s use case: transient route problems every 5-10 sections every 50 seconds
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-10-22. It was migrated from the old Trac wiki on 2023-01-28.*
---
title: WG Summaries for IETF 98
description: 
published: true
date: 2022-12-15T03:49:07.753Z
tags: 
editor: markdown
dateCreated: 2022-12-15T03:49:07.753Z
---

WG summaries are listed by alphabetical WG name.

## 6TiSCH Summary

The Working Group meeting went smoothly and according to agenda, started and completed in time. All the expected slots took place but for the last one on detnet-backhaul-architecture which was informative to the group. The group is ready to call for adoption for the 6top and hte SF0 document, with restrictions. The first restriction is the lack of feedback information from SF on whether the panel of capabilities from 6top is sufficient to achieve all the needs to an abstract SF. This will be alleviated by experience from the interop test in Prague so we will probably be ready then. Also remarks on the lack of definition of the service interface between SF and 6top, e.g. pointing on the responsibility of the timeouts and the values incurred. The largest piece of the meeting dealt with security. The framework was presented in which the minimal security based on PSK can be seen as an optional portion of the larger flow that starts with private keys / certificates and fits within the ANIMA framework. A status was given on related work in other WG and at the IEEE.

## DHC Summary

The Working Group met on Thursday afternoon. Co-chair Tomek Mrugalski started out the meeting reminding people of the note well and reviewing the agenda. Co-chair Bernie Volz then briefly discussed the status of the DHCPv6 bis work (draft-ietf-dhc-rfc3315bis). The 07 that was published before this meeting resolves all but about a dozen issues; and 08 should be published in April and that will go to WGLC. Bernie encouraged people to look at the 07 to assure that their issues are addressed.

Next, Bernie then discussed the status of the WGLC for draft-ietf-dhc-sedhcpv6 - not that much feedback but we did get some constructive discussion going. This will need additional work before advancing.

Then, Bernie asked whether the WG should now resume work on draft-ietf-dhc-dhcpv6-agentopt-delegate which expired in 2010 as relay were just snooping the relayed client\'s packet as they did with DHCPv4. However, now once sedhcpv6 is implemented, relay snooping will no longer be possible. Those present agreed we should start work and just pick up where we left off (publish a new 05).

Venkata Subba Rao Gorrepati presented the DHCP option for NSH in SFP (draft-ypal-sfc-dhcp-option-for-nsh-for-sfp). As this is just an \"other configuration\" option, this work should be done in the Service Function Chaining (sfc) WG under the Routing Area - DHC WG should be updated periodically. Ted Lemon also recommended removing the \"reserved\" field from the DHCPv4 option. There was also some discussion on the size of this option data.

Gang Yan presented the DHCPv4 Yang model update (draft-liu-dhc-dhcp-yang-model-06). There was some discussion about which options were modeled, as that was an issue for DHCPv6 model (for which an update is pending). While the authors are encouraged to continue their work on this, we still want to focus on the DHCPv6 Yang model first.

Lin He presented Multi-requirement Extensions for DHCPv6 (draft-ren-dhc-mredhcpv6-00). There was discussion about how useful this work was and that much of it would be outside the scope of the DHC WG. Many commenters pointed out the general problem with the proposed approach, as IETF tries to migrate toward more privacy oriented solutions. There are no plans to take this work on.

Finally, Jordi Palet presented DHCPv6 Options for Discovery of NAT64 (draft-li-intarea-nat64-prefix-dhcp-option-01). There were some concerns about whether this complexity was needed and why the existing NAT64 discovery mechanism wasn\'t sufficient. This presentation was just to inform the WG about this work done in intarea.

In summary: 
1. More work is needed on draft-ietf-dhc-sedhcpv6 before it can advance. 
2. The WG is restarting work on draft-ietf-dhc-dhcpv6-agentopt-delegate. 
3. draft-ypal-sfc-dhcp-option-for-nsh-for-sfp should be handled in the SFC WG.

## DNSSD Summary

DNS Push Notifications; <https://tools.ietf.org/html/draft-ietf-dnssd-push-10>; ACTION: authors will collect input from WG last call on draft-ietf-dnssd-push-10; will see if anything needs to be changed from upcoming WG last call in dnsop on draft-ietf-dnsop-session-signal-03 when published shortly.

DNS Session Signalling <https://tools.ietf.org/html/draft-ietf-dnsop-session-signal-02>; ACTION: this draft is a dnsop WG work item; no dnssd WG action.

DNS-SD Discovery Proxy; <https://tools.ietf.org/html/draft-ietf-dnssd-hybrid-06>; ACTION: draft-ietf-dnssd-hybrid-06 is ready for IESG review; find a shepherd (else chairs will do it).

DNS-SD Advertising Proxy - discussion; (plus Sleep Proxy, Discovery Broker, Zone Stitching, and DNS-SD roadmap); ACTION: Noting hum in favour, WG encourages further work on Discovery Broker; ACTION: No objection to Sleep Proxy work, so proceeding with writing this documentation is encouraged; resulting document to be presented at IntArea WG meeting for external reviews of components such as ARP and ND proxy; ACTION: Noting hum, progressing Advertising Proxy is encouraged; ACTION: Zone stitching is still conceptual; no explicit action from this presentation; ACTION: Roadmap is still conceptual; no explicit action from this presentation.

Privacy Extensions for DNS-SD; <https://tools.ietf.org/html/draft-ietf-dnssd-privacy-01>; ACTION: draft-ietf-dnssd-privacy-01 is ready for WG last call.

Device Pairing Using Short Authentication Strings; <https://tools.ietf.org/html/draft-ietf-dnssd-pairing-01>; ACTION: WG preference is not to split the document; Stuart Cheshire, Ted Lemon, Tim Wicinski to review; ready for WG last call after next revision

DNS-SD Deployment for campus/enterprise networks - BCP document discussion; <https://github.com/pusateri/draft-pusateri-hybridproxy-impl/blob/master/draft-pusateri-dnssd-hyp-impl.txt>; ACTION: WG encourages continued work on this document; volunteers welcome (Ran Atkinson offered some help); likely to be Informational rather than BCP, at least for now.

Simple Homenet Naming and Service Discovery Architecture; <https://tools.ietf.org/html/draft-tldm-simple-homenet-naming-00>; ACTION: exploratory at this stage; no actions for dnssd WG; Ted needs to think about problem to be solved, which existing dnssd components can be reused, and what the gaps are.

Stateful Multi-Link DNS Service Discovery; <https://tools.ietf.org/html/draft-lemon-stateful-dnssd-00>; ACTION: exploratory at this stage; no actions for dnssd WG

DNS-SD in IoT (and constrained network environments); Use of RD in CoRE noted. ACTION: dnssd and CoRE WG representatives encouraged to meet and discuss way forward, e.g. Stuart, Carsten, Kerry, Peter.

## LPWAN Summary

This was the second meeting of the group after its forming. The room was full, with many people standing or sitting on the floor. The progress from the last meeting was presented, with a number of milestones reached ahead of time. The creation, and the work of the Design Team (who\'s work is now over) surrounding the compression and fragmentation were outlined. The changes in the main documents were discussed in details. Two implementations were presented. More outreach to the IEEE was also discussed, and ideas of topics of interest not currently covered by the charter.

The first charter item - the LPWAN technology outline is in a stable shape. A couple of options on how to orient the document were asked by the editor and were confirmed. There is a part which needs more elaborated input from one of the baseline technology providers. We expect the draft to be complete on time.

The second charter item is covered by two documents, which are also on track and are expected to be delivered generally on time. The structure of the documents fulfilling this item was also discussed, with the options to go with four documents (framework, IP/UDP compression, fragmentation, CoAP compression), three documents (framework+IP/UDP, fragmentation, CoAP compression) or keeping the current structure of two documents (framework+IP/UDP compression+fragmentation, CoAP compression). The sense of the room to be confirmed on the ML was to keep the current structure.

The SCHC compression for IPv6/UDP was presented. Slight changes in the terminology. The main difference is the inclusion of the fragmentation part, which had a dedicated presentation slot. The fragmentation is loosely based on previous work presented in the previous session, significantly improved through its coupling with the SCHC compression and taking special care of LPWAN constraints. Two feedback modes - ACK and NACK - issued per fragment, per window, or in non-reliable mode (e.g. no feedback) provide the technology providers with a straightforward and rich way of complying with the min MTU requirements of IP. The fragmentation section uses parameters, which can be tuned by each technology provider, and which is not mandatory (e.g. a technology which already has L2 fragmentation may choose not to mandate its use). Many examples were provided. Some questions remain to be addressed, among which how to address L2 MTU change between fragments, the downlink fragmentation, and some questions related to the windowing counters in the rare cases special fragments are lost.

The SCHC compression for CoAP was presented, with its new developments. A new field is added to the context to indicate the direction of the rule, as requests and responses may vary significantly (but are part of the same flow). A new indication of the position of an option was also added (e.g. the order in which options appear), which is necessary for the cases when an option is repeated (for example URI-Path). The use of a CoAP proxy to improve the compression was also described, where the proxy can handle some of the advanced features suggested during the last session (e.g. statefully mapping an 8B token with a 1B). Open questions include ways to enhance Observe- and Block- related compression (e.g. delta-encoded values or proxy). Block-transfer is complementary to the fragmentation, as Block supports a minimal size of 16 bytes, which is larger of the values of some of the baseline technologies. Other questions of advanced CoAP compression were also discussed, such as the possibility to compress, when there is variable number of options (e.g. prefix URI-path, with variable suffix), as well as questions regarding the compatibility with security mechanisms such as OSCOAP. An additional and important question is also to reconsider the timers defined for CoAP, which are not suitable for the types of delays we\'re observing in LPWANs, and would need to be redefined to be orders of magnitude larger. Reviewers volunteered for the document and feedback is expected to profile the compression approach (e.g. some of the open issues may be non-essential, and some may be of great importance depending on the trafic). All in all, the draft in its form is a solid base and the first implementations\' feedbacks, and additional contributors will allow to fine-tune it.

In addition to the charter-item related documents, there were two implementation-oriented presentations, three technology-related ones, and an indication of problems which could be considered in the future. The Lora document was also presented in details. Other technologies were presented for information, as requested by IEEE members, to provide update on the work of 802.15. LPWAN interest group and the possible future works in this direction. An implementation on top of 6lo was presented, along with an implementation of SCHC running on top of the live Sigfox network. Finally, the possibility of working on the protocols used for managing the LPWAN infrastructure was presented as a problem that may need to be considered in the future.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-04-12. It was migrated from the old Trac wiki on 2022-12-14.*
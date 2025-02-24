---
title: Shepherd reports for draft-ietf-idr-sr-p2mp-policy
description: Shepherd draft-ietf-idr-sr-p2mp-policy
published: true
date: 2025-02-24T20:53:24.155Z
tags: 
editor: markdown
dateCreated: 2025-02-24T20:53:24.155Z
---

# Shepherd Report for draft-ietf-idr-sr-p2mp-policy

## Summary 
**draft:**  [draft-ietf-idr-sr-p2mp-policy](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-p2mp-policy/)
**Type:** Proposed Standard 
**status:** expired (11-07-2022) 
**adoption call:** 3/10/2022 to 3/24/2022 
**adopted:** [5/7/2022](https://mailarchive.ietf.org/arch/msg/idr/VwiMYgQWWHOouUY6n0nOofSA2XE/)
**current version:** -00 
**implementations:** TBD 
**BESS draft:** draft-ietf-bess-multicast-controller 

**Email:** https://mailarchive.ietf.org/arch/msg/idr/WKaz1MQDND6hc_EJPrpdZJzcM-c/

## -00 Review  
 
 **draft (-00):**  [draft-ietf-idr-sr-p2mp-policy](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-p2mp-policy/)
 
Email:  https://mailarchive.ietf.org/arch/msg/idr/WKaz1MQDND6hc_EJPrpdZJzcM-c
status: WG Draft, expired (11/7/2024) 
version: revision suggested
implementation: At least one in progress

### Technical issues 

#### Issue-1: Abstract needs to be 2 paragraphs

**replacement text:/**
>    SR P2MP policies are set of policies that enable architecture for
>    P2MP service delivery.  A P2MP policy consists of a set of 
>    candidate paths that connects the Root of a multicast Tre 
>    the Tree to a set of Leaves.  The P2MP policy is composed of
>    replication segments.  A replication segment is a forwarding
>    instruction for a candidate path which is downloaded to the Root,
>    transit nodes and the leaves. 
> 
>    An SR P2MP Policy is comprised of a set of Candidate SR P2MP Policies. BGP
>    distributes each Candidate Policy as some NLRI plus a BGP Tunnel Encapsulation 
>    Attribute (Tunnel-Encaps) for an SR Policy Tunnel. This document specifies a new 
>    NLRI with a new BGP SAFI (SR P2MP Policy) for IPv4 Unicast AFI and IPv6 Unicast AFI, 
>    plus a new tunnel type for the BGP Tunnel-Encap Attribute. 
>    This new NLRI has three new route types within this NLRI(Root node, 
>    replication segment binding sid, Repliation segment OIF).  
>     It should be noted that this document does not specify how the Root
>    and the Leaves are discovered on the controller, it only describes
>    how the P2MP Policy and Replication Segments are programmed from the
>    controller to the nodes./ 
>    
{.is-info}

   
#### Issue-2: Introduction, paragraph 3, clarity on options 

> **paragraph 3:/**
>    For a P2MP segment, a controller may be used to compute a tree from a
>    Root node to a set of Leaf nodes, optionally via a set of replication
>    nodes.  A packet is replicated at the root node and optionally on
>    Replication nodes towards each Leaf node./
{.is-info}

**New text:/ **  
>    For a P2MP segment, a controller may be used to compute a tree from a
>    Root node to a set of Leaf nodes.  Optionally, this computed distribution
>    tree MAY be via a set of replication nodes toward each Leaf node./
>    
{.is-info}

#### Issue-3: Introduction, paragraph 4, sentence 1, confusion use of "i.e.,"

**Old text:/**
>    A Point-to-Multipoint service delivery could be via Ingress
>    Replication (aka Spray in some SR context), i.e., the root unicasts
>    individual copies of traffic to each leaf./
> 
{.is-info}

**new text:/ **
>    A Point-to-Multipoint service delivery could be via Ingress
>    Replication (aka Spray in some SR context). For example the root 
>    could unicast individual copies of traffic to each leaf. / 
{.is-info}

   
#### Issue-4: Introduction, paragraph 5, sentence 1, confusion use of "i.e.,"

**Old text:/**
>    A Point-to-Multipoint service delivery could also be via Downstream
>    Replication (aka TreeSID in some SR context), i.e., the root and some
>    downstream replication nodes replicate the traffic along the way as
>    it traverses closer to the leaves./ 
{.is-info}

 
** new text:/**
>    A Point-to-Multipoint service delivery could also be via Downstream
>    Replication (aka TreeSID in some SR context).  For example, the root and some
>    downstream replication nodes replicate the traffic along the way as
>    it traverses the tree closer to the leaves./ 
{.is-info}


#### Issue-5: Introduction, paragraph starting "The leaves and root of tree", Discovery protocols
**
problem:** Are you missing BGP-LS or NETCONF?  or PCE? 

> **Old text:/ **
>    The leaves and the root of a p2mp policy can be discovered via the
>    multicast protocols or procedures like NG-MVPN [RFC6513] or manually
>    configured on the PCC (CLI) or the PCE./ 
{.is-info}


**new text:/**
>    The leaves and the root of a p2mp policy can be discovered via the
>    multicast protocols, or procedures like NG-MVPN [RFC6513], or BGP-LS [RFC9552],  
>    or NETCONF/RESTCONF reading of manually configuration on the PCC (CLI) or the PCE./ 
{.is-info}

 
#### Issue-6: Introduction , paragraph 8, description of BGP extensions 

**Current text:/**
>    The advertisement uses BGP extensions defined in this
>    document.  The controller also calculates the tree path and builds
>    the replication segments on each segment of the tree, Root, Transit
>    and Leaf nodes and downloads the forwarding instructions to the nodes
>    via BGP extensions defined in this document./
{.is-info}

   
**new text:/**
>     The advertisement of the P2MP policy uses BGP extensions for 
> 	a new NLRI (P2MP-Policy NLRI), a new Tunnel type 
> 	P2MP Policy, and new Sub-TLVs for attributes of the new Tunnel type.   
> 	The controller also calculates the tree path and builds
>     the replication segments on each segment of the tree, Root, Transit
>     and Leaf nodes and downloads the forwarding instructions to the nodes
>     via BGP extensions [need to specify which here] defined in this document./ 
{.is-info}


**Note: ** I'm not exactly clear what you want to say. 

#### Issue-7: Introduction, paragraph 9, replace [draft-ietf-idr-segment-routing-te-policy]

[draft-ietf-idr-segment-routing-te-policy] was replaced by 
[draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-bgp-sr-segtypes-ext]

I think you want [draft-ietf-idr-sr-policy-safi] to replace the outdated draft, but
you should look at this point. 

#### Issue-8: Introduction, paragraph 10, path instance. 

I realize that path-instance is equivalent to a P2MP LSP. 
However, where is path instance defined in SR routing? 

I'm not clear what path instance is.  Please define it before section 3.: 

#### Issue-9: Section 3.1, last paragraph, outdated reference

**Old text:/**
>    All other recommendations of
>    [draft-ietf-idr-segment-routing-te-policy] section SR Policy SAFI and
>    NLRI, should be taken into account for P2MP policy. / 
>  
{.is-info}

Change: Please verify that a replacement of [draft-ietf-idr-segment-routing-te-policy]
with [draft-ietf-idr-sr-policy-safi]. 

   
#### Issue-10: Section 3.1.1, Tree-id value. 

Is the value "0" valid?  Or does the value zero denote something special? 
The text reads as though TREE-ID value of zero is like any other value. 

#### Issue-11: Section 3.1.2 

Please specify ROOT-ID length, Node-ID length, and Replication SID elngth.  

The last sentence in the "instance-id" is unclearly or hanging. 
Old text:/ Instance-ID can be used.

#### Issue-12: Section 3.1.3 

   Please verify that a replacement of [draft-ietf-idr-segment-routing-te-policy]
   with [draft-ietf-idr-sr-policy-safi].
   
#### Issue-13: Section 3.1.3 
The last sentence in the "instance-id" is unclearly or hanging. 
Old text:/ Instance-ID can be used.

#### Issue-14: Section 3.2

It is unclear which two new Tunnel-Type you are using.  I believe 
the tunnel types are:
1) P2MP-Policy - tunnel type 
2) Replication-Segment-oif - tunnel type 

Please make this sentence consistent on the names. 

#### Issue-15: Section 3.2, paragraph 1, unclear run-on sentence 

**Old text:/**
>   The content of this new NLRI is encoded in the tunnel Encapsulation
>    Attribute originally defined in [RFC9012] using two new Tunnel-Type
>    TLV (codepoint is TBD, assigned by IANA from the "BGP Tunnel
>    Encapsulation Attribute Tunnel Types" registry) one for P2MP Policy
>    and another for Replication segment./
{.is-info}

   
**Suggested text:/**
   The P2MP information is distributed with the P2MP NLRI and 
   a BGP Tunnel Encapsulation (Tunnel-Encaps) attribute defined in 
   [RFC9012] with one of two new Tunnel-Type TLV. The two tunnel types 
   are allocated from the Tunnel Encapsulation Attribute Tunnel Types" registry.
   The first tunnel type is P2MP Policy and the second tunnel type
   is Replication segment.

#### Issue-16: Section 3.2.1

a) Please verify that a replacement of [draft-ietf-idr-segment-routing-te-policy]
   with [draft-ietf-idr-sr-policy-safi].

b) Policy name, Policy Candidate Path Name, Preference, and 
segment list is defined in[draft-ietf-idr-sr-policy-safi].  Please correct. 

c) What does "*Relevant only at the Root" mean? I think it means that 
this subTLV is only vlaid for the Root node.  

d) Please provide a table with sub-TLVs that will be used 
   for P2MP Policy Tunnel type.  Existing sub-TLVs that you do not explicitly indicate
   can be used for this Tunnel type are invalid.  Future sub-TLVS are outside the 
   scope of this document. 
 
 #### Issue-17 - sections 3.2.2 and 3.2.3 
 ##### Issue-17a: Section 3.2.2 
 
 Thank you for stating will not have any sub-TLVs. 
 
##### Issue-17b: Section 3.2.3 

a) Policy name, Policy Candidate Path Name, Preference,  
segment list, and weight are defined in [draft-ietf-idr-sr-policy-safi].  Please correct. 

b) Please provide a table with subTLVs that will be used for replication-Segment-oif

c) I have found that Tunnel-Encaps attribute abbreviation reads better to people than TEA. 
   You do not have to change. However, you do need to provide an initial instance prior to 
   using TEA. 

#### Issue-18: Section 3.3.1, whole section, already defined. 

Please remove the preference sub-TLV.  It is already defined. 
You can define the use this sub-TLV has in the two tunnel types you define. 

#### Issue-19: Section 3.2.2 + Section 3.3.3.1  -  length calculation

The calculation of length needs to include the "reserved field'.  

#### Issue-20: Section 3.3.3 

1) please define MBB procedure (what it is) and how it works. 

#### Issue-21: Section 3.3.3.1, length. 

What is the length of the active instance-id?  Is it 4 octets? 
If it is 4 octets, then the length appears to always be 5 octets.

#### Issue-22: Section 3.3.3.2, length 

What is the length of the instance-id?  Is it 4 octets? 
If it is 4 octets, then the length appears to always be 5 octets.

Also note: "instance-id" is incorrectly spelled in the description. 

#### Issue-23: Section 3.4.3 

editorial:
**Current:/**
>    Protection sub-tlv is optional, if FRR is desired for the downstream
>    node this sub-tlv can be used to identify the protection segment
>    list.  
{.is-info}
**
> New:/**
>    Protection sub-tlv is optional. if FRR is desired for the downstream
>    node the Protection Sub-TLV can be used to identify the protection segment
>    list. / 
{.is-info}

**Confusing:**
>   / A protection segment
>    list can not have a weight sub-tlv and it can not participate in
>    ECMP.  That said a segment list that is being protected can have a
>    weight sub-tlv and participate in ECMP./
{.is-info}

   
This seems to be contradictory.  What am i missing. 

**Flags: ** All flags not defined in the flag, should be set to zero upon transmission 
and ignored upon reception.  

#### Issue-24: Section 3.4.4 Segment Sub-TLV 

reference [draft-ietf-idr-sr-segtypes-ext.] for segment types E an G
**
Old text:/**
>    *  If the replication segment is steered via IPv4 or IPv6 nexthops or
>       interface then the segment type E or G can be used with the new R
>       flag set./
**{.is-info}

New text:/**
   *  If the replication segment is steered via IPv4 or IPv6 nexthops or
      interface then the segment type E or G [draft-ietf-idr-sr-segtypes-ext]
	  can be used with the new R flag set./ 

**old text (unclear) /**
>    The SR node/adjacency or binding
>    sids steer the packet through a SR domain until it reaches another
>    replication segment. where the bottom of the stack replication sid
>    identifies the forwarding information on that replication segment./
{.is-info}


**new text: (not sure if this works)/**
>    The SR node/adjacency or binding sids steer the packet through an
>    SR domain until it reaches another replication segment. 
>    The bottom of the stack replication sid
>    identifies the forwarding information on that replication segment./
{.is-info}

 
 Editorial:/
 ** old text:** 
>    / The outgoing tree SID it self is programmed in
>    the appropriate route type./
{.is-info}

**   
   new text:**
>     / The outgoing tree SID itself is programmed in
>    the appropriate route type./ 
{.is-info}


#### Issue-25: Section 4, replace draft-ietf-idr-segment-routing-te-policy with [draft-ietf-idr-sr-policy-safi]. 

**old-text:**
>    /Inline with [draft-ietf-idr-segment-routing-te-policy] the consumer
>    of an P2MP Policy is not the BGP process. /
{.is-info}
**
new text:**
>    /Similar to [draft-ietf-idr-sr-policy-safi] usage, the consumer
>    of an P2MP Policy is not the BGP process. /
> 
{.is-info}


#### Issue-26: Section 4.1, paragraph 1, 3rd sentence, editorial (I hope) 
**
old text:**
>    / Each route 
>    target identifies one head-end (root nodes) for P2MP Policy route or 
>    one or more head-end, transit and leaf nodes for the Non- Shared/
>    Shared Tree Replication Segment route, for the advertised P2MP
>    Policy./
{.is-info}

   
**new text:**
>    / Each route target identifies one head-end (root nodes) 
>    for the P2MP Policy route.  Each route target for the 
>    advertised P2MP Policy identifies one or more head-end, 
>    transit and leaf nodes for the Non-Shareed Tree Replication 
>    route./
{.is-info}


#### Issue-27: This document needs a manageability section 

#### Issue-28: This document needs a security section.

Please see the security section in [draft-ietf-idr-sr-policy-safi]
as na example.
 
 
 
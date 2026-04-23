---
title: Shepherd reviews for draft-ali-idr-srv6-policy-sl-opt-distribution
description: draft-ali-idr-srv6-policy-sl-opt-distribution Reviews
published: true
date: 2026-04-23T10:42:56.449Z
tags: 
editor: markdown
dateCreated: 2026-01-09T13:55:32.166Z
---

# Shepherd review 
# draft-ali-idr-srv6-policy-sl-opt-distribution Shepherd reviews

draft: [draft-ali-idr-srv6-policy-sl-opt-distribution-00](https://datatracker.ietf.org/doc/draft-ali-idr-srv6-policy-sl-opt-distribution/) 
version: -01 
**status**: pre-adoption review done, ready for adoption  
**Email:** [-01 review](https://mailarchive.ietf.org/arch/msg/idr/2SJr7fzE4YT1NvVUn49_fMaPt5g/)

Next step: Needs -03, can be adopted, but needs spring review 

## Review version -02
### Technical issues 
#### Technical issue 1 - Update to RFC9857. 
[draft-ietf-idr-bgp-ls-sr-policy] is now RFC9857. 

Section 1, paragraph 1, last sentence, 
Old text: 
>    [I.D.draft-ietf-idr-bgp-ls-sr-
>    policy] defines a mechanism to collect the Segment Routing Policy
>    information that is locally available in a node and advertise it into
>    BGP Link-State (BGP-LS) updates.
{.is-info}
New text: 
>    [RFC9857] defines a mechanism to collect the Segment Routing Policy
>    information that is locally available in a node and advertise it into
>    BGP Link-State (BGP-LS) updates.
{.is-info}


#### Technical issues 2 - Flag update to RFC857 

Your draft proposes: 

> The  IFN (Install Final Node-sid) - 1 bit (Bit Position TBD1):
> 
>    *  If set to 1 indictaes the endpoint node SID is installed when
>       installing the SRv6 Policy SID list(s) used to carry the data
>       traffic.
> 
>    *  If set to 0 indictaes the endpoint node SID is excluded when
>       installing the SRv6 Policy SID list(s) used to carry the data
>       traffic.
{.is-info}
There is a bit value possible, but not a registry.  I think if new bits 
are being added, we need to include a registry definition. 
I wll check with Ketan regarding this point. 


in the flag field found in RFC9857 in section 5.3 in the 
> **5.3.  SR Candidate Path State TLV**
>    Flags:  2-octet field that indicates the attribute and status of the
>       candidate path.  The following bit positions are defined, and the
>       semantics are described in Section 5 of [RFC9256] unless stated
>       otherwise for individual flags.  Other bits MUST be cleared by the
>       originator and MUST be ignored by a receiver.
> 
>        0                   1
>        0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5
>       +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>       |S|A|B|E|V|O|D|C|I|T|U|         |
>       +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> 
>       Where:
> 
>       S-Flag:  Indicates that the candidate path is in an administrative
>          shut state when set and not in an administrative shut state
>          when clear.
> 
>       A-Flag:  Indicates that the candidate path is the active path
>          (i.e., one provisioned in the forwarding plane as specified in
>          Section 2.9 of [RFC9256]) for the SR Policy when set and not
>          the active path when clear.
> 
>       B-Flag:  Indicates that the candidate path is the backup path
>          (i.e., one identified for path protection of the active path as
>          specified in Section 9.3 of [RFC9256]) for the SR Policy when
>          set and not the backup path when clear.
> 
>       E-Flag:  Indicates that the candidate path has been evaluated for
>          validity (e.g., headend may evaluate candidate paths based on
>          their preferences) when set and has not been evaluated for
>          validity when clear.
> 
>       V-Flag:  Indicates that the candidate path has at least one valid
>          SID list when set and that no valid SID list is available or
>          evaluated when clear.  When the E-flag is clear (i.e., the
>          candidate path has not been evaluated), then this flag MUST be
>          set to 0 by the originator and MUST be ignored by a receiver.
> 
>       O-Flag:  Indicates that the candidate path was instantiated by the
>          headend due to an on-demand next hop trigger based on a local
>          template when set and that the candidate path has not been
>          instantiated due to an on-demand next hop trigger when clear.
>          Refer to Section 8.5 of [RFC9256] for details.
> 
>       D-Flag:  Indicates that the candidate path was delegated for
>          computation to a PCE/controller when set and that the candidate
>          path has not been delegated for computation when clear.
> 
>       C-Flag:  Indicates that the candidate path was provisioned by a
>          PCE/controller when set and that the candidate path was not
>          provisioned by a PCE/controller when clear.
> 
>       I-Flag:  Indicates that the candidate path is to perform the
>          "Drop-Upon-Invalid" behavior when no other valid candidate path
>          is available for this SR Policy when the flag is set.  Refer to
>          Section 8.2 of [RFC9256] for details.  When clear, it indicates
>          that the candidate path is not enabled for the "Drop-Upon-
>          Invalid" behavior.
> 
>       T-Flag:  Indicates that the candidate path has been marked as
>          eligible for use as a transit policy on the headend when set
>          and not eligible for use as a transit policy when clear.
>          Transit policy is a policy whose BSID can be used in the
>          segment list of another SR Policy.  Refer to Section 8.3 of
>          [RFC9256] for steering into a transit policy using its BSID.
> 
>       U-Flag:  Indicates that the candidate path is reported as active
>          and is dropping traffic as a result of the "Drop-Upon-Invalid"
>          behavior being activated for the SR Policy when set.  When
>          clear, it indicates that the candidate path is not dropping
>          traffic as a result of the "Drop-Upon-Invalid" behavior.  Refer
>          to Section 8.2 of [RFC9256] for details.
{.is-info}

> 
{.is-info}

Please change this draft text to specifically indicate the section in RFC9857 in section 5.3. 

Change to text:
old text:
>    IFN-flag (Install Final Node-sid) in the SR Candidate Path State TLV
>    specified in [I-D- draft-ietf-idr-bgp-ls-sr-policy] is proposed to
>    indicate whether the endpoint node SID is included or excluded in
>    installing SID list(s) of the Candidate Path (CP).  
{.is-info}
New text:/
>    This IFN-flag (Install Final Node-sid) is specified to be a new 
>    bit in the SR Candidate Path State TLV Flag field specified 
>    in [RFC9857] in section 4.0 The IFN-Flag bit indicates whether
>    the endpoint node SID is included or excluded in
>    installing SID list(s) of the Candidate Path (CP).  
{.is-info}


#### Technical issues 3 - please add Cross-WG-section 

Please add a cross WG section (5.0)  with the following sub-sections: 
##### 5.0 Cross-WG Information 
##### 5.1 Spring WG 
Spring has discussed the inclusion or exclusion of the final Node-SID in the 
following draft (please included the draft).  I believe that 
your reference is:   draft-ietf-spring-srv6-policy-sid-list-opt-00.

##### 5.2 PCE WG 
Please comment if this flag is relevant to PCE technology. 
I am unclear if the 
SRPolicy Capability TLV in the RFC9852 is related to your flags.
The text in [RFC0962](https://datatracker.ietf.org/doc/rfc9862/)
has the following in section 5.1 in figure 6: 
> 
>       0                   1                   2                   3
>        0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
>       +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>       |             Type              |             Length            |
>       +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>       |                             Flags                   |L| |I|E|P|
>       +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> 
>                   Figure 6: SRPOLICY-CAPABILITY TLV Format
> 
{.is-info}
I note that the flags that the PCE sets are: 
>       P-flag (Computation Priority):  If set to 1 by a PCEP speaker, the
>          P-flag indicates that the PCEP speaker supports the handling of
>          the COMPUTATION-PRIORITY TLV for the SR Policy (Section 5.2.1).
>          If this flag is set to 0, then the receiving PCEP speaker MUST
>          NOT send the COMPUTATION-PRIORITY TLV and MUST ignore it on
>          receipt.
> 
>       E-flag (Explicit NULL Label Policy):  If set to 1 by a PCEP
> 
>       I-flag (Invalidation):  If set to 1 by a PCEP speaker, the I-flag
>          indicates that the PCEP speaker supports the handling of the
>          INVALIDATION TLV for the SR Policy (Section 5.2.3).  
> 
>       L-flag (Stateless Operation):  If set to 1 by a PCEP speaker, 
> 
> 
{.is-info}
Check with the PCE if there are equivalent features that modify the 
SR Candidate Path for the INF-Flag. 

##### 5.3 SRv6ops recommedations 
If you know of any recommendations from the SRv6ops that suggests adding your features, please put that information here. 

During the adoption, we will send your draft to IDR, Spring, PCE, and SRv6OPs. 
 
 #### Technical-Issue-3 Please update the IANA section
 Please note that you need to update the IANA Section.  Here, I recommend that you specify a registry and your bit as an addition.  I am querying Ketan on this issue, and will get back to you on the topic. 
 
 #### Technical-Issue 4 - Please update the Security section. 
 Please look at the security section for [RFCRFC 9857].  You can utilize the 
 first two paragraphs or refer to the text. 
 
 The 3rd paragraph needs to be changed.  I've suggested text below:

Old text:  
>    Additionally, it may be considered that the export of SR Policy
>    information, as described in this document, constitutes a risk to the
>    confidentiality of mission-critical or commercially sensitive
>    information about the network (more specifically, endpoint/node
>    addresses, SR SIDs, and the SR Policies deployed).  BGP peerings are
>    not automatic and require configuration.  Thus, it is the
>    responsibility of the network operator to ensure that only trusted
>    nodes (that include both routers and controller applications) within
>    the SR domain are configured to receive such information.
>  
{.is-info}'
New text: 
>    Additionally, it may be considered that the export of SR Policy
>    information, as described in this document, constitutes a risk to the
>    confidentiality of mission-critical or commercially sensitive
>    information about the network (more specifically, endpoint/node
>    addresses, SR SIDs, and the SR Policies deployed).  The INF-Flag 
>    indicates mission critical information about the endpoint SID. 
>    Just as with other mission critical information, the setting of this 
>    flag provides a potential risk.  Care should be taken in the 
>    storing and setting of this information. 

## Review version -01

### Technical issues
#### Technical Issue 1 - Update to RFC
[draft-ietf-idr-bgp-ls-sr-policy] is now RFC9857.  Please 

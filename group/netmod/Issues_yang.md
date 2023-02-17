---
title: Issue List for "YANG - A data modeling language for NETCONF"
description: 
published: true
date: 2022-12-16T20:51:44.942Z
tags: 
editor: markdown
dateCreated: 2022-12-16T20:51:40.982Z
---

```
Issue List for "YANG - A data modeling language for NETCONF"



Issue list:

    yang-00000: module update rules - closed
    yang-00088: new "refine" statement - closed
    yang-00172: clarifications for ordered-by, must, unique, keyref, when, mandatory, minmax, etc. - closed
    yang-00221: rpc statement in list - closed
    yang-00413: import by revision - closed
    yang-00581: YIN mapping to remain in YANG spec - closed
    yang-00582: XML on-the-wire mapping to remain in YANG spec - closed
    yang-00605: multiple pattern - closed
    yang-00690: XML encoding rules for built-in types - closed
    yang-00730: Names for two different kinds of augments - open
    yang-00750: add a "feature" feature - closed
    yang-00755: adding a 'prefix' substatement to 'belongs-to' - closed
    yang-00776: "Augmentable Groupings" - closed
    yang-00915: requiring a prefix in 'must' - closing
    yang-00935: Default handling issues - closing
    yang-01253: adding "leafref" type - closed
    yang-XXXX: allow "keyref" to point to unique leafs - closed
    yang-01281: conformance - closed
    yang-01300: the "data" element - closed
    yang-01339: Identity and identityref - closed
    yang-01622: agent-supplied defaults - open
    yang-XXXX: inline RPC errors - open == #issue-<TBD>
    yang-XXXX: Can keyrefs be contained in unions? - open == #issue-<XXXX>
    yang-XXXX: Can empty be contained in unions? - open == #issue-<XXXX>
    TEMPLATE: yang-<number>: <title> - open|closed == #issue-<number>

yang-00000: module update rules - closed

Creation date: 2008-08-29

Description: Need to define the rules for how modules are updated (new revisions published).

Discussion: Interim discsussion is summarized ​here. Also see ​this thread.

Consensus: Interim consenus to complete the section on upgrade rules based on the discussion in ​http://www.ietf.org/mail-archive/web/netmod/current/msg01334.html.
yang-00088: new "refine" statement - closed

Creation: 2008-05-09

Description: Proposal to add a statement "refine" to be used within "uses", and to move "augement" for "uses" into the "uses" statement.

  uses foo:a-grouping {
      refine "b/c" { ... }

      augment "b" { ... }
  }

Discussion: A summary is found in ​in this thread.

This issue actually is about 4 interrelated issues:

    Should we add a refine statement (assuming we have 'augment' inside uses) in "uses".
    Should we have an 'augment' statement inside the 'uses' (while keeping the top-level 'augment')?
    Should we put a "when" as a substatement of a leaf?
    Should we have two 'augment' keywords? 

Consensus: Interim consensus to add refine statement to uses. Rough consensus to allow two different augments, with different names. The top-level augments can modify your own or another namespace. A new keyword in uses for augmenting only your own namespace. See ​this thread.
yang-00172: clarifications for ordered-by, must, unique, keyref, when, mandatory, minmax, etc. - closed

Creation: 2008-05-31

Description: Andy Bierman asks several clarification questions about ordered-by, but the discussion morphed to a larger context.

    the draft needs to specify what happens outside the narrow scope of the intended usage
    Does the <get> operation need to support these in filters? (No.)
    What does 'ordered-by user;' mean for read-only data or RPC input or notification content?
    Can the manager create user-ordered data unsorted, or is the PDU order always the sorted order for 'create'? 

Discussion: The questions are found ​in this thread.

Consensus: The clarifications must make it into the text. The interim meeting discussed a table of the YANG terms versus Netconf message contexts where they might not make sense, in preparation for modifying the text. The text (probably including the table) will be updated for WG review. See ​http://www.ietf.org/mail-archive/web/netmod/current/msg01397.html.
yang-00221: rpc statement in list - closed

Creation date: 2008-06-13

Description: - Allow operations to be specified in lists. It should be possible to define custom RPCs inside list. The XML encoding should carry a reference to the list where the RPC was defined. RPCs on the top-level would still be allowed.

Discussion: ​Mail thread on mailing list. See also ​this thread discusses the topic. See ​http://www.ietf.org/proceedings/08jul/slides/netmod-4/netmod-4.htm

Advantages:

    Helps master-subagent implementations. The master agent can more easily route the rpc to the correct sub-agent if it is known which part of the data model it belongs to.
    Similarly named actions on different managed objects could be used e.g. block/restart interface, card, OSPF. Today this is not possible due to naming clashes. If the name is scoped with a list this is no problem. The individual restart procedures might be somewhat different still they serve the same basic problem.
    Facilitates object-oriented design where objects contain procedures/Functions beside data. Putting the rpc definitions separately on the top level makes mapping from object oriented models to YANG difficult to read with a workaround needed to point out the object/list where the rpc belongs. 

Today the only two commercially available Netconf stacks already support this. The following Netconf users indicated that they are interested in the issue: Tailf, NSN, Nortel (Scott), Ericsson, others?

Not all RPCs by the same name require the same parameters. By having only top-level restart, then all restarts are similar; by having scoped RPCs (aka class-scoped methods), then the RPCs can be different depending on where in the hierarchy it exists.

Consensus: IETF-73 consensus was to not add this now. See ​this thread.
yang-00413: import by revision - closed

Creation: 2008-07-18

Description: Should YANG modules import specific revisions of other modules?

Discussion: A summary is found in ​in this thread.

Consensus: Interim rough consensus is to move forward assuming we will have revisions per module, and use import by revision and include by revision. There are exceptions, such as ifTypes that will need to be solved. Martin will send a detailed proposal to the mailing list. The text will be included in -03. See also ​this thread.
yang-00581: YIN mapping to remain in YANG spec - closed

Creation: 2008-07-31

Description: Whether to keep YIN in the YANG specification rather than putting it into a separate document.

Discussion: The charter states that the YIN mapping can either be a separate document or an integrated part of the YANG specification. This was one of the WG decisions addressed during IETF 72 and was first addressed ​here in this thread.

Consensus: YIN will remain in the YANG specification. See ​this thread.
yang-00582: XML on-the-wire mapping to remain in YANG spec - closed

Creation: 2008-07-31

Description: Whether to keep XML on-the-wire mapping in the YANG specification rather than putting it into a separate document.

Discussion: The charter states that the XML on-the-wire mapping can either be a separate document or an integrated part of the YANG specification. This was one of the WG decisions addressed during IETF 72.

Consensus: XML on-the-wire mapping will remain in the YANG specification. See ​this thread.
yang-00605: multiple pattern - closed

Creation: 2008-08-19

Description: Should YANG allow multiple pattern like XSD? Multiple pattern can be used to make some pattern restrictions more precise while maintaining readability.

Discussion: It turns out that XSD ORs multiple pattern together. Relax NG ANDs multiple pattern (more useful) and requires translators to XSD to create nested types to maintain the AND behavior. For more details, ​see the mail thread "yang: multiple pattern". The original motivation for multiple ANDed patter in given in the thread ​range/length and pattern statements

Consensus: YANG will add multiple patterns. See ​this consensus call.
yang-00690: XML encoding rules for built-in types - closed

Creation: 2008-08-21

Description: The sections on built-in types do not define any XML encoding rules.

Discussion: The ​thread starts here. Resolution was: "The lexicographic representation of a value of a certain type is used in the XML encoding over NETCONF, and when specifying default values in a YANG module. And then each built-in type has a section called "Lexicographic Representation".

Consensus: That there's nothing more needed. See ​this thread.
yang-00730: Names for two different kinds of augments - open

Creation date: 2008-08-10

Description: Should we have two keywords (for top-level 'augment' and for 'augment' inside uses)? For example, the 'augments' under uses could be called "extend".

Discussion: ​http://www.ietf.org/mail-archive/web/netmod/current/msg00730.html

Consensus:
yang-00750: add a "feature" feature - closed

Creation date: 2008-08-10

Description: How to document conformance with respect to a particular YANG model. This would allow the model designer to specify portions of the model as being "optional" based upon whether an implementation supports a particular "feature" or not. ​These slides from IETF72 (slides 2-5) suggest a way of doing this.

Discussion: ​Beginning of mail thread on mailing list.

Consensus: Interim consensus to support the feature and if-feature statements. Datatypes can not be modified using an if-feature. See ​this thread.
yang-00755: adding a 'prefix' substatement to 'belongs-to' - closed

Creation date: 2008-08-11

Description: Proposal to add a 'prefix' substatement to 'belongs-to' in order to allow a submodule to be validated in isolation from its main module.

Discussion: ​Beginning of mail thread on mailing list. See also ​this thread which tries to summarize the issue.

Consensus: Interim consensus is accept this. See ​this thread.
yang-00776: "Augmentable Groupings" - closed

Creation date: 2008-08-13

Description: The current draft does not allow groupings to be augmented. The proposal is to add augmentation of groupings.

Discussion: ​Beginning of mail thread on mailing list.

Consensus: Interim consensus to not allow augmentable groupings. See ​this thread.
yang-00915: requiring a prefix in 'must' - closing

Creation date: 2008-08-21

Description: - Should we require a prefix or not on a 'must' statement in order to be XPath 1.0 compliant?

Discussion: ​Mail thread on mailing list. See also ​this thread discusses the topic.

Consensus: Interim consensus is to take the question to the APPS ADs (and the XML Dirctorate) for advice.
yang-00935: Default handling issues - closing

Creation date: 2008-08-22

Description: Various default discussions. This will likely become multiple issues in the end. It all started as a discussion of this text.

    A NETCONF server that replies to a <get> or <get-config> request MAY choose not to send the leaf element if its value is the default value. Thus, a client that receives an <rpc-reply> for a <get> or <get-config> request, must be prepared to handle the case that a leaf node with a default value is not present in the XML. In this case, the value used by the server is known to be the default value.

Discussion: ​Mail thread that starts a "summary" discussion. Mail relevant to the subject ​can also be found starting here.

Questions that are relevant are:

    Whether we're changing NETCONF operations or not
    Whether leafs with defaults are part of the configuration datastore or not,
    Whether we could start standardizing with-defaults or not,
    Agent-selected defaults ('system-created')
    Complex defaults, where the default value exists but can't be statically known
    "Write once" data, where the value can be assigned by not changed. 

Consensus: Interim consensus is "verify that the draft addresses the four questions raised" (see minutes). We need to document one standardized approach for netmod.
yang-01253: adding "leafref" type - closed

Creation date: 2008-09-30

Description: The proposal is to add a new type 'leafref', which works like a keyref, but points to any leaf.

Discussion: ​Mail thread on mailing list.

Consensus: Interim consensus: adopt leafref; While keyref may be config-true or config-false, leafref must be config-false. Andy will write a proposal. Wildcards will be discussed further on the list.
yang-XXXX: allow "keyref" to point to unique leafs - closed

Creation date: 2008-10-10

Description: keyref

Discussion:

Consensus: Interim consensus to allow this. Update: Fixed by changing keyref to leafref.
yang-01281: conformance - closed

Creation date: 2008-10-03

Description: conformance

Discussion: ​Mail thread on mailing list. See also ​this thread

Consensus: Interim consensus to add conformance and deviation clauses. Andy will write a proposal for conformance clauses. See also ​this thread.
yang-01300: the "data" element - closed

Creation date: 2008-10-05

Description: The NETCONF rpc-reply should be capable of returning any arbitrary content to the manager, even elements <ok> and <rpc-error>. However, by putting the reply payload at the same sibling level as the header nodes, an application would very likely interpret the 'content' as the actual header nodes they are.

Discussion: ​http://www.ietf.org/mail-archive/web/netmod/current/msg01300.html

Consensus: Interim consensus - data element is not needed.
yang-01339: Identity and identityref - closed

Creation date: 2008-10-11

Description: Add a new statement 'identity' and a new type 'identityref' for reusable, extensible enumerations.

Discussion: ​Beginning of mail thread on mailing list.

Consensus:
yang-01622: agent-supplied defaults - open

Creation date: 2008-10-10

Description: when a client does not provide a value, the agent assigns a value. See ​this thread.

Discussion: add an assigned-by [ system | user ]

Consensus: interim consensus: yes

    Seems as current (2008-12-23) ML consensus is to not add this now.

yang-XXXX: inline RPC errors - open == #issue-<TBD>

Creation date: 2008-10-10

Description: The NETCONF spec prevents inline rpc-errors, which impacts what YANG wants for data exceptions.

Discussion: ​http://www.ietf.org/mail-archive/web/netmod/current/msg0TBD.html

Consensus: Interim consensus is that Martin will write a proposal an raise this on the NETCONF ML>
yang-XXXX: Can keyrefs be contained in unions? - open == #issue-<XXXX>

Creation date: 2008-10-10

Description: Can the CLR preventing keyrefs in unions be removed?

Discussion:

Consensus: open
yang-XXXX: Can empty be contained in unions? - open == #issue-<XXXX>

Creation date: 2008-10-10

Description: Can the CLR preventing empty in unions be removed?

Discussion:

Consensus: open
TEMPLATE: yang-<number>: <title> - open|closed == #issue-<number>

(The number, which SHOULD be the message number in the NETMOD mailing list archive, is useful for referring to the issue in mail and the like)

Creation date: YYYY-MM-DD

Description: a paragraph or two on the issue

Discussion: the alternatives and the like. (This should also include a pointer to other places where it has been discussed. Most of the time, that will mean the mailing list.)

Consensus: (This will definitely have a pointer to mail, a reference to a place in minutes, or something that documents the consensus.) 
  
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-01-12. It was migrated from the old Trac wiki on 2022-12-16.*

```
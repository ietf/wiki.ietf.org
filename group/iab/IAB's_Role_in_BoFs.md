---
title: IAB's Role in BoFs
description: 
published: true
date: 2023-12-05T20:57:37.560Z
tags: 
editor: markdown
dateCreated: 2023-12-05T20:57:37.560Z
---

# IAB's Role in BoFs

## The role of the IAB in evaluating "new work" proposed in the IETF

Note: see also https://wiki.ietf.org/en/group/iesg/iesgiab

Under RFC 2850, the IAB is responsible for "oversight of the architecture for the protocols and procedures used by the Internet".

From Section 2.1, "Architectural oversight in more detail":

>   IAB members pay special attention to emerging activities in the IETF
>   and to "Birds of a Feather" sessions at IETF meetings. The IAB
>   assists the IESG in evaluating such activities and in determining
>   whether an IETF or an IRTF group is more appropriate. When a new
>   IETF working group is proposed, the IESG will forward a preliminary
>   version of the charter to the IAB for review of architectural
>   consistency and integrity. The IAB shall review these proposed
>   charters and give feedback to the IESG as appropriate.
  
Beyond the IAB’s duties to provide architectural oversight under RFC 2850, from time to time, the IESG may ask for IAB members to provide guidance for a BOF. This guidance is part of, but distinct from, the IAB’s architectural oversight role under RFC 2850.

This statement provides some specifics about the methods the IAB uses to perform oversight and provide guidance.

### A note about the scope of this statement
This statement uses the word "BOF" as shorthand for "proposed new work in the IETF", but the procedures described here can also be used if a proposed working group is to be chartered without holding a BOF (this does happen from time to time), or if a working group is being rechartered and significant changes to the current charter are proposed, or if a proposal for new work is being discussed in an area meeting, Dispatch (as described in BCP 67), etc.

### A note about IAB member roles
In providing architectural oversight and guidance for a BOF, IAB members are rarely speaking for the IAB, because the IAB has rarely determined an IAB consensus position on new work being proposed. Individual IAB members do not have a privileged role in determining whether a BOF will result in a chartered working group. IAB members providing architectural oversight must ensure that their role is not misunderstood by BOF proponents or by the larger community of interest.

The IESG is requested to give comments from IAB members the same weight the comments would be given if those persons were not serving on the IAB - no more, and no less.

## Participation in Joint IAB/IESG BOF Coordination Calls
At the time of writing, the IAB and IESG hold a joint conference call once each IETF cycle, to discuss BOFs that have been requested for upcoming IETF meetings. These BOF coordination calls are held soon after the cutoff date for BOF requests for each upcoming meeting.

The current repository for BOF requests is at https://datatracker.ietf.org/doc/bof-requests.

## "Covering" and "Shepherding"
There are two primary ways that IAB members participate in the BOF process:

- by providing BOF evaluation reports ("covering a BOF"), fulfilling the IAB's duty to provide architectural oversight, and
- by serving as “BOF Shepherds“, when the IESG requests IAB members to provide guidance.

### "Covering" a BOF
One or more IAB members may "cover" a BOF, depending on the architectural impact of the BOF, IAB member interest and expertise. In addition, the IAB will make a specific effort to identify IAB members who will "cover" a BOF when the IESG requests the IAB to do so.

IAB members who are "covering" a BOF have one responsibility - to provide a BOF evaluation report to the IAB and IESG. This report will not emulate formal meeting minutes, but will identify any architectural concerns the IAB member has about the proposals that the BOF community is considering. The IAB member may identify these concerns before, during, or after the BOF meeting itself. The BOF evaluation report should explain whether those concerns were addressed, or are still concerns.

IAB members who are "covering" a BOF may participate fully in that BOF. It's preferable that IAB members raise concerns that they have in a timely manner, so that the IESG and BOF proponents aren't left trying to guess how the BOF community would have responded, if the concerns had been raised while the community was assembled.

Beyond this, IAB members who are "covering a BOF" may include any information and analysis that seems helpful in their BOF evaluation reports. There is no formal list of what else to include. Additional observations might include whether the proposed work is more appropriate for the IETF or IRTF, or whether liaisons to other SDOs might be needed, or whether the BOF effort be approved as a working group.

### Mechanics for BOF Evaluation Reports
IAB members who "covered" a BOF should send BOF evaluation reports to the IESG, copying the IAB. IAB members providing BOF coverage may also send BOF evaluation reports to BOF chairs, other BOF proponents, or the BOF community of interest, if that seems helpful, and if an IAB member providing the report is willing to remain engaged (for example, helping to refine proposed charter text) after the BOF itself.

The IESG may share any or all of the contents of BOF evaluation reports with the BOF proponents and/or the larger BOF community, as seems helpful.

If an IAB member "covering a BOF" needs to make private observations, the IAB member will make these observations in a separate e-mail that goes only to the IESG and IAB. This report will be clearly marked "PRIVATE:". This separate marking might be appropriate if (for example) the IAB member's BOF evaluation includes observations about the BOF proponents or BOF community itself.

IAB members "covering" a BOF should provide their BOF evaluation reports to the IESG before the joint IAB/IESG "IETF week in review" session if possible. At some IETF meetings, the review session is held before the IETF meeting week ends, so some evaluations may arrive after the review session because the BOF was held on Friday, after the review session. If same-week reporting isn't possible, IAB members "covering" a BOF should provide reports within two weeks.

The IESG has requested that IAB members use a common e-mail subject prefix for ease in filing and locating BOF Evaluation reports. The subject header field should follow the template "IETF $IETFNUM $BOFNAME BOF evaluation", with substitutions for the IETF meeting number and the BOF name.

If the IAB member is sending a separate private evaluation report, the subject header field should follow the template "PRIVATE: IETF $IETFNUM $BOFNAME BOF evaluation", with substitutions for the IETF meeting number and the BOF name.

### BOF Shepherd Requests
The IAB makes every effort to provide one or more BOF Shepherds when the IESG requests this, which should happen when a responsible AD decides that a BOF effort would benefit from having BOF Shepherds assigned.

The IAB asks that requests for BOF Shepherds happen as early in the BOF preparation process as possible, in order for the BOF Shepherd to be more effective in helping to shape architectural elements. If possible, the IESG should request a BOF Shepherd before a complete BOF request is submitted to the responsible AD. Although the IAB should "do the right thing", the expectation is that an assigned BOF Shepherd would continue to act in this role for second BOFs, across IETF meeting cycles.

### What BOF Shepherds Do
A BOF Shepherd takes a more active role in helping BOF proponents prepare for a BOF than IAB members who "cover" a BOF. A BOF Shepherd provides architectural guidance on the ideas proposed in the BOF. The BOF Shepherd might help BOF proponents produce an arrows-and-boxes scheme, as described in RFC 4101, "Writing Protocol Models", for example.

A BOF Shepherd may work with BOF proponents to create and/or improve a BOF request.

A sponsoring Area Director might ask a BOF Shepherd to serve as one of the chairs for the BOF. This is not part of the BOF Shepherd job description - if it happens, it's an additional role filled by the same person.

The IAB may provide more than one BOF Shepherd, but when multiple BOF Shepherds are assigned, the BOF Shepherds should coordinate closely enough to avoid giving conflicting guidance.

BOF Shepherds do not provide BOF evaluation reports - these come from IAB members "covering" the BOF.

## Internal and External Working Group Charter Reviews
In addition to "Covering" and "Shepherding", IAB members have the opportunity to comment on proposed working group charters as individual members of the community.

As of the time of writing, all proposed working group charters are sent to the IAB ("sent for Internal Review") before being sent to the broader community ("sent for External Review"). When a proposed charter is sent for External Review, it goes via the IETF-Announce mailing list to the entire IETF community and via the New-Work mailing list to a number of other SDOs that have liaison relationships with IETF, so External Review is very public.

The preference of the community seems to be that IAB member comments provided during Internal Review be limited to concerns about whether the proposed charter is ready for External Review in its current form. Other concerns should be provided during External Review, so that the larger community is aware of those concerns.

Although it's not possible to provide a checklist for concerns that should be expressed during Internal Review, comments about possible duplication, overlap, or conflict with work in other groups, either within the IETF or within other SDOs, are particularly welcome.

The IESG does not provide names of proposed working group chairs at either Internal Review time or External Review time, so IAB members are unlikely to be commenting on proposed working group chairs, but if IAB members have observations about BOF proponents or significant contributors, these might usefully be shared at Internal Review time.

## A Note about IAB Members acting as advocates
Like any other members of the IETF community, IAB members are encouraged to help form communities interested in proposed new work efforts within the IETF, and to act as advocates for these proposals, based on their own expertise, experience, and interests. In some cases IAB member advocacy for a proposal has resulted in important work within the IETF.

IAB members performing these roles act as individual contributors, and the process they follow is defined by the IETF Standards Process (BCP 09), as is true for all IETF participants acting as individual contributors. The practices described in this document may apply for other IAB members providing architectural oversight for a proposal that numbers IAB members among its advocates, but IAB members acting as advocates for a proposal do not simultaneously provide evaluation of the same proposal as part of the IAB's architectural oversight function.

## Acknowledgements
This statement includes material from a proposal for IAB BOF shepherds, discussed in 2009, and edited by Marcelo Braun. Thanks to Olaf Kolkman for resurrecting that proposal.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-11-07. It was migrated from the old IAB wiki on 2023-12-05.*
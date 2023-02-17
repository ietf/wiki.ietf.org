---
title: DNSEXT WG (Concluded)
description: 
published: true
date: 2023-02-17T06:53:43.223Z
tags: 
editor: markdown
dateCreated: 2023-01-24T00:41:18.968Z
---

# DNS Extensions Working Group 
This is the DNS Extensions (DNSEXT) WG wiki.

- [Charter](http://www.ietf.org/dyn/wg/charter/dnsext-charter)
- Documents in WG LC
- [Results of survey of WG participants in Jan 2010](http://trac.tools.ietf.org/wg/dnsext/trac/attachment/wiki/WikiStart/surveyresults.pdf)
## WG Virtual Interim Meeting 2010-02-16
The WG held a virtual interim meeting on 2010-02-16 at 15:00 UTC.

### Minutes from the meeting
Meeting minutes

### Meeting materials
Chair's slides

Paul Vixie's slides for Zone Clones

### Timeline
**Interim meeting announcement**
2010-01-18
**Overview and draft problem statement**
2010-01-18 http://www.psg.com/lists/namedroppers/namedroppers.2010/msg00043.html
**I-Ds for consideration at meeting due**
2010-02-02 23:59 UTC
**Supporting materials for interim meeting due**
2010-02-15 17:00 UTC
**DNSEXT interim meeting**
2010-02-16 15:00 UTC
**Short summary from chairs including decision about Anaheim meeting**
2010-02-19 17:00 UTC
There will almost certainly be further follow-on actions from the interim, but we'll include a plan of action in our short summary. That decision date is the latest we commit to confirming the Anaheim session. It is more than a month from the IETF Anaheim meeting, and so should be enough time for travel planning if need be.

### Draft problem statement
The CNAME RRTYPE provides terminal name redirection, but does not provide redirection of names below the RNAME of the CNAME RR.

The DNAME RRTYPE provides name redirection for names below the RNAME of the DNAME RR, but does not provide redirection for the RNAME itself.

The specifications do not allow CNAME and DNAME at the same owner name. At the same time, some RR specifications (like MX, for instance) require that they not resolve to a CNAME or DNAME.

As a result of the above, there is no general-purpose "alias" function in the DNS. In some circumstances, however, such an aliasing function would be desirable. One particular example that has recently received a lot of attention is the notion of IDN "variants".

In some linguistic contexts, two strings that do not compare as binary equivalent are nevertheless recognized by every competent speaker of the language to be "the same word". Consider the English language examples, "color" and "colour". In British spelling, the latter is unambiguously correct, and in US spelling the former is. In Canadian spelling, however, the two spellings are both correct (though one is supposed to pick one spelling and stick with it). If one wanted to use the string "color" as a domain name label, color.example, then one might also desire that colour.example resolve the same way.

Now, traditionally in the DNS we have treated two different labels that nevertheless correspond to "the same word" as simply different labels. If someone wants two labels to work as though they are the same name, then it is that person's responsibility to operate two zones and arrange things so that the two zones are equivalent.

This approach works fairly well for cases like English, but tend to break down for both practical and policy reasons when one attempts to use the same approach for (some) other languages.

One practical consideration, to begin with, is that some languages produce very large numbers of alternative spellings for "the same word", usually because of accents. Requiring that operators of zones in such IDN operational contexts manage large numbers of such variants as individual zones not only imposes an operational burden on operators serving such linguistic communities, but it also is practically impossible (because if the zones are truly separate zones, possibly in different parent zones, then they may well have different results available from caches).

A second practical consideration is that the variants are effectively required in some cases, because of limitations of user environments. Because users can be expected to be able to enter one "form of a label" and not another, both labels need to resolve to the same result. Imagine, for instance, that being able to type in "colour" meant that you were unable also to type "color", and you can see the effect of the problem. Remember that everything below the delegation has this issue (and consider the effects of this on the hapless DNS administrator who is not aware of whether the label in use is a DNAME or a "primary" name).

The policy consideration is slightly different. When a zone operator delegates a name and its variant names away, the delegation of the "bundle" of variants is predicated on the assumption that all the names will behave in the same way; otherwise, they are just different names from one another. In the absence of any mechanism to force two names to resolve identically, there is no way for the delegator to be certain that the two names are being used as identical to one another.

If IDN variants were the only case where one might want to have two DNS trees work exactly the same way, then it would probably be worth attempting to solve only that narrow issue rather than working to invent a notion of aliasing for whole trees. But other examples of how this sort of behaviour might be useful are easy to imagine. For instance, it is easy to see that it could be useful for the operator of two zones that are both (say) a different names for the same firm to be able to make the two zones work the same way all the time.

### Partial Solution Space
In what follows, when appropriate, we suppose that one domain of the set of a variant bundle is the "main name", and that the other names are "variant names". The main name is normally the name under which the zone has all the resource records; variants normally point to the main name somehow.

Note that some of the items actually

1. Do Nothing

The WG can decide that this is not a problem, and that nothing should be done about it. Also, the WG can decide that the problem cannot be solved.

2. Recommend the problem be solved as a matter of provisioning

The WG could decide that there is a legitimate problem to be solved here, but that it should not be solved with any changes to the DNS. In this case, the WG might suggest that the work be taken to another existing WG, or that a WG be chartered to take up this precise issue.

3. Recommend the problem be solved in zone master servers: "clone"

The WG could decide that the problem could be addressed by implementations offering a "clone zone" feature. This is not strictly a change to the DNS protocols. Instead, it is a way for DNS servers to mark two namespaces as equivalent internally, without any apparent changes to the DNS protocols as such. This approach might have some implications for DNSSEC, and for Dynamic Update.

4. Provide operational guidance for supporting the goal using CNAME
only

It is probably actually impossible to obtain the desired behaviour using only CNAME. But CNAME could be used as a mechanism to provide "aliases" for any terminal name.

5. Solve the problem using DNAME at the parent.

In combination with some provisioning tools, DNAME might be an adequate solution to this issue. DNAME entails some server-side processing, however.

6. Recommend delegation to zones using DNAME at the child

Instead of using DNAMEs at the parent side, the parent could delegate as though the zone is a completely different zone, but require as a matter of contract that the variant zones include a DNAME for the name, and all and only DNS RRs for non-DNS-control records must also match. (So, for instance, NS records in the variant, and the SOA record or any RRSIG record, need not match. But for every A record at the main name, there must be a corresponding A record at each variant name, and for every A record at a variant name, there must be a corresponding A record at the main name.)

7. Alter the specification of DNAME
a. to permit combination with CNAME

The combination of CNAME and DNAME would allow an entire tree to be aliased without difficulty. This is a backwards-incompatible change, however.

b. To follow DNAME target if requested type does not exist with the DNAME

This change basically changes the DNAME from translating below the target to translate to the target when ever the DNAME rules apply at the QNAME.

8. Do (7) except with a new RRTYPE
This is the "BNAME" proposal, more or less. http://tools.ietf.org/id/draft-yao-dnsext-bname-01.txt

9. Provide an aliasing mechanism that points to an NS record, and
which is not allowed to be part of a chain.

Attachments:
[chairslides.pdf](/chairslides.pdf)
[zoneclones.pdf](/zoneclones.pdf)
[dnsext-interim-minutes-2010-03-02a.txt](/dnsext-interim-minutes-2010-03-02a.txt)
[surveyresults.pdf](/surveyresults.pdf)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-03-22. It was migrated from the old Trac wiki on 2023-01-23.*
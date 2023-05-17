---
title: Draft2119BoilerplateSuggestions
description: 
published: true
date: 2023-02-19T19:59:16.630Z
tags: 
editor: markdown
dateCreated: 2023-02-19T19:59:13.271Z
---

RFC2119 defines a set of key words that we use for specifying requirements, and begins with this:
&nbsp;
<pre>
In many standards track documents several words are used to signify
the requirements in the specification.  These words are often
capitalized.
</pre>

That second sentence has caused us problems, and continues to do so: it implies that sometimes they are not capitalized, but still have the meanings defined in RFC2119. Yet document authors often want to use plain English words such as "must", "may", "should", "recommended", and "optional", and not give them special meanings. Some IETF participants claim that "should" means "SHOULD", whether or not it is printed in ALL CAPS, while other participants disagree. When this disagreement happens in the IESG's evaluation of a document, it can surprise and upset document authors and waste time and effort.

Authors often look for alternatives, such as "need to" instead of "must" and "ought to" instead of "should", and there have even been proposals for standard replacements. But such rewriting can reduce clarity, rather than provide it.

The IESG considers it acceptable to use these words in lower case and not give them the specific meanings defined in RFC2119. In particular, the IESG will not block document progress because of this practice. Authors are encouraged, but not required, to follow this proposed convention. The IESG asks that authors make it explicitly clear that they are doing this by altering the RFC2119 boilerplate text as follows:
&nbsp;
<pre>
The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL
NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED",
"MAY", and "OPTIONAL" in this document are to be interpreted as
described in [RFC2119] when they appear in ALL CAPS.  When these
words are not in ALL CAPS (such as "should" or "Should"), they
have their usual english meanings, and are not to be interpreted
as RFC 2119 key words.
</pre>

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-03-29. It was migrated from the old Trac wiki on 2023-02-17.*

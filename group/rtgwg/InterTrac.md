---
title: InterTrac
description: 
published: true
date: 2023-01-03T21:19:13.354Z
tags: 
editor: markdown
dateCreated: 2023-01-03T20:35:42.607Z
---

# InterTrac Links
Trac supports a convenient way to refer to resources of other Trac servers, from within the Wiki markup. An InterTrac link can be seen as a scoped [TracLinks](/group/rtgwg/TracLinks). It is used for referring to a Trac resource located in another Trac environment. A resource can be a wiki page, changeset, ticket or milestone.

## List of Active InterTrac Prefixes 
| Prefix |     Trac Site    |
|:------:|:----------------:|
| [trac](https://trac.edgewall.org/timeline)   | [The Trac Project](https://trac.edgewall.org/) |

### Link Syntax
Simply use the name of the other Trac environment as a prefix, followed by a colon, ending with the resource located in the other environment:

`<target_environment>:<TracLinks>`

The other resource is specified using a regular [TracLinks](/group/rtgwg/TracLinks), of any flavor.

That target environment name is either the real name of the environment or an alias for it. The aliases are defined in the `trac.ini` file, see below. The prefix is case insensitive.

If the InterTrac link is enclosed in square brackets, like `[th:WikiExtrasPlugin]`, the InterTrac prefix is removed in the displayed link like a normal link resolver would be, ie the above would be displayed as `WikiExtrasPlugin`.

For convenience, there is also an alternative short-hand form, where an alias can be used as an immediate prefix for the identifier of a ticket, changeset or report, eg `#T234`, `[T1508]`, `[trac 1508]`.

## Examples
It is necessary to set up a configuration for the InterTrac facility. This configuration has to be done in the [TracIni](/group/rtgwg/TracIni) file, `[intertrac]` section, for example:
```
[intertrac]
# -- Example of setting up an alias:
t = trac

# -- Link to an external Trac:
trac.title = Edgewall's Trac for Trac
trac.url = http://trac.edgewall.org
```
The `.url` is mandatory and is used for locating the other Trac. This can be a relative URL in case that Trac environment is located on the same server.

The `.title` information is used in a tooltip, ie when hovering the cursor over an InterTrac link.

Finally, the `.compat` option can be used to enable or disable a *compatibility* mode:

- If the targeted Trac is running a version below [0.10](http://trac.edgewall.org/intertrac/milestone%3A0.10) ([r3526](http://trac.edgewall.org/intertrac/r3526) to be precise), then it doesn't know how to dispatch an InterTrac link, and it is up to the local Trac to prepare the correct link. Not all links will work that way, but the most common ones do. This is called the compatibility mode, and is `false` by default.
- If you know that the remote Trac knows how to dispatch InterTrac links, you can explicitly disable this compatibility mode and then any [TracLinks](/group/rtgwg/TracLinks) can become an InterTrac link.

Now, given the above configuration, one could create the following links:

- to this InterTrac page:
	- `trac:wiki:InterTrac` [trac:wiki:InterTrac](http://trac.edgewall.org/intertrac/wiki%3AInterTrac)
	- `t:wiki:InterTrac` t:wiki:InterTrac
	- Keys are case insensitive: `T:wiki:InterTrac` T:wiki:InterTrac
- to the ticket #234:
	- `trac:ticket:234` [trac:ticket:234](http://trac.edgewall.org/intertrac/ticket%3A234)
	- `trac:#234` [trac:#234](http://trac.edgewall.org/intertrac/%23234)
	- `#T234` #T234
- to the changeset [1912]:
	- `trac:changeset:1912` [trac:changeset:1912](http://trac.edgewall.org/intertrac/changeset%3A1912)
	- `[T1912]` [T1912]
- to the log range [[3300:3330]](https://trac.ietf.org/trac/rtgwg/log/?revs=3300-3330): **Note**: the following ones need `trac.compat=false`:
	- `trac:log:@3300:3330` [trac:log:@3300:3330](http://trac.edgewall.org/intertrac/log%3A%403300%3A3330)
	- `[trac 3300:3330]` [[trac 3300:3330]](http://trac.edgewall.org/intertrac/log%3A/%403300%3A3330)
- finally, to link to the start page of a remote Trac, simply use its prefix followed by a colon `:` and inside an explicit link. Example: `[th: Trac Hacks]`. Since Trac 0.11, note that the *remote* Trac has to run at least version 0.11 for this to work.

The generic form `intertrac_prefix:module:id` is translated to the corresponding URL `<remote>/module/id`, shorthand links are specific to some modules (e.g. #T234 is processed by the ticket module) and for the rest (`intertrac_prefix:something`), we rely on the [TracSearch#quickjump](/group/rtgwgTracSearch) facility of the remote Trac.

---
See also: [TracLinks](/group/rtgwg/TracLinks), [InterWiki](/group/rtgwg/InterWiki)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2023-1-03.*
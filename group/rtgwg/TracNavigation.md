---
title: TracNavigation
description: 
published: true
date: 2022-12-23T20:28:54.750Z
tags: 
editor: markdown
dateCreated: 2022-12-23T20:28:50.930Z
---

# Trac Navigation 
The main and meta navigation entries can be customized in some basic ways. The `[mainnav]` and `[metanav]` configuration sections can be used to customize the text and link used for the navigation items, or even to disable them. The `mainnav` and `metanav` options in the `[trac]` configuration section can be used to change the order.

## `[mainnav]`
`[mainnav]` corresponds to the **main navigation bar**, the one containing entries such as Wiki, Timeline, Roadmap, Browse Source and so on. This navigation bar is meant to access the default page of the main modules enabled in Trac that are accessible for the current user.

**Example**

In the following example we rename the link to the Wiki start "Home", and make the "View Tickets" entry link to a specific report. The second example below also hides the "Help/Guide" link.

Relevant excerpt from the [TracIni](/group/rtgwg/TracIni):
```
[mainnav]
wiki.label = Home
tickets.href = /report/24
```
## '[metanav]'
[metanav] corresponds to the **meta navigation bar**, by default positioned above the main navigation bar and below the Search box. It contains the Log in, Logout, Help/Guide etc. entries. This navigation bar is meant to access some global information about the Trac project and the current user.

There is one special entry in the `[metanav]` section: `logout.redirect` is the page the user sees after hitting the logout button.

**Example**
```
[metanav]
help = disabled
logout.redirect = wiki/Logout
```
### Notes
Possible URL formats for `.href` or `.redirect`:
| config           | redirect to               |
|------------------|---------------------------|
| `wiki/Logout  `    | `/projects/env/wiki/Logout` |
| `http://hostname/` | `http://hostname/ `         |
| `/projects`        | `/projects`                 |

### '[trac]'
The 'mainnav' and 'metanav' options in the '[trac]' configuration section control the order in which the navigation items are displayed (left to right). This can be useful with plugins that add navigation items.

**Example**

In the following example, we change the order to prioritise the ticket related items further left.

Relevant excerpt from the [TracIni](/group/rtgwg/TracIni):
```
[trac]
mainnav = wiki,tickets,newticket,timeline,roadmap,browser,search,admin
```
The default order and item names can be viewed in the trac section of [TracIni](/group/rtgwg/TracIni).

### Context Navigation
Note that it is still not possible to customize the **contextual navigation bar**, ie the one usually placed below the main navigation bar.

---
See also: [TracInterfaceCustomization](/group/rtgwg/TracInterfaceCustomization), and the [TracHacks:NavAddPlugin](http://trac-hacks.org/wiki/NavAddPlugin) or [TracHacks:MenusPlugin](http://trac-hacks.org/wiki/MenusPlugin) (still needed for adding entries)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-23.*
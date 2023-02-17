---
title: TracRevisionLog
description: 
published: true
date: 2022-12-22T21:36:14.625Z
tags: 
editor: markdown
dateCreated: 2022-12-22T20:42:35.550Z
---

# Viewing Revision Logs

When you browse the repository, it is always possible to view the Revision Log that corresponds to the repository path. This displays a list of the most recent changesets in which the current path or any other path below it has been modified.

## The Revision Log Form
It is possible to set the revision at which the revision log should start, using the *View log* starting at field. An empty value or a value of *head* is interpreted as the newest changeset.

It is also possible to specify the revision at which the log should stop, using the *Back* to field. By default it is empty, which means the revision log will show the latest 100 revisions.

Also, there are three modes of operation of the revision log.

By default, the revision log *stops on copy*, which means that whenever an *Add*, *Copy* or *Rename* operation is detected, no older revision will be shown. That's very convenient when working with branches, as one only sees the history corresponding to what has been done on the branch.

It is also possible to indicate that one wants to see what happened before a *Copy* or *Rename* change, by selecting the Follow copies mode. This will cross all copies or renames changes. Each time the name of the path changes, there will be an additional indentation level. That way, the changes on the different paths are easily grouped together visually.

It is even possible to go past an *Add* change, in order to see if there has been a *Delete* change on that path, before that *Add*. This mode corresponds to the mode called *Show only adds, moves and deletes*. This operation can be quite resource intensive and therefore take some time to be shown on screen.

Finally, there's also a checkbox *Show full log messages*, which controls whether the full content of the commit log message should be displayed for each change, or only a shortened version of it.

## The Revision Log Information
For each revision log entry, the following columns are displayed:

1. The first column contains a pair of radio buttons and should be used for selecting the old and the new revisions that will be used for viewing the actual changes.
2. A color code (similar to the one used for the [changesets](/group/rtgwg/TracChangeSets) indicating kind of change. Clicking on this column refreshes the revision log so that it restarts with this change.
3. The **Revision** number, displayed as `@xyz`. This is a link to the [TracBrowser](/group/rtgwg/TracBrowser), using the displayed revision as the base line. Next to it, you can see a little "wheel" icon changeset.png, which is clickable and leads to the [TracChangeset](/group/rtgwg/TracChangeset) view for that revision.
4. The **Date** at which the change was made. The date is displayed as the time elapsed from the date of the revision. The time elapsed is displayed as the number of hours, days, weeks, months, or years.
5. The **Author** of the change.
6. The **Log Message**, which contains either the truncated or full commit log message, depending on the value of the Show *full* log messages checkbox in the form above.
## Inspecting Changes Between Revisions
The *View changes*... buttons (placed above and below the list of changes, on the left side) will show the set of differences corresponding to the aggregated changes starting from the *old* revision (first radio-button) to the *new* revision (second radio-button), in the [TracChangeset](/group/rtgwg/TracChangeset) view.

Note that the *old* revision doesn't need to be actually *older* than the *new* revision: it simply gives a base for the *diff*. It's therefore entirely possible to easily generate a reverse diff, for reverting what has been done in the given range of revisions.

Finally, if the two revisions are identical, the corresponding changeset will be shown. This has the same effect as clicking on the ChangeSet number.

## Alternative Formats
### The ChangeLog Text
At the bottom of the page, there's a *ChangeLog* link that will show the range of revisions as currently shown, but as a simple text, matching the usual conventions for ChangeLog files.

### RSS Support
The revision log also provides a RSS feed to monitor the changes. To subscribe to a RSS feed for a file or directory, open its revision log in the browser and click the orange 'XML' icon at the bottom of the page. For more information on RSS support in Trac, see [TracRss](/group/rtgwg/TracRss).

---

See also: [TracBrowser](/group/rtgwg/TracBrowser), [TracChangeset](/group/rtgwg/TracChangeset), [TracGuide](/group/rtgwg/TracGuide)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-22.*
---
title: TrackRoadmap
description: 
published: true
date: 2022-12-29T02:27:45.656Z
tags: 
editor: markdown
dateCreated: 2022-12-23T18:18:04.162Z
---

# The Trac Roadmap

The roadmap provides a view on the [ticket system](/group/rtgwg/TracTickets) that helps planning and managing the future development of a project.

## The Roadmap View
A roadmap is a list of future milestones. The roadmap can be filtered to show or hide *completed milestones* and *milestones with no due date*. In the case that both show completed milestones and hide milestones with no due date are selected, completed milestones with no due date will be shown.

## The Milestone View
A milestone is a future timeframe in which tickets are expected to be solved. You can add a description to milestones (using [WikiFormatting](/group/rtgwg/WikiFormatting)) describing main objectives, for example. In addition, tickets targeted for a milestone are aggregated, and the ratio between active and resolved tickets is displayed as a milestone progress bar. It is possible to further [customise the ticket](https://trac.edgewall.org/wiki/TracRoadmapCustomGroups) grouping and have multiple ticket statuses shown on the progress bar.

It is possible to drill down into this simple statistic by viewing the individual milestone pages. By default, the active/resolved ratio will be grouped and displayed by component. You can also regroup the status by other criteria, such as ticket owner or severity. Ticket numbers are linked to [custom queries](/group/rtgwg/TracQuery) listing corresponding tickets.

## Roadmap Administration
With appropriate permissions it is possible to add, modify and remove milestones using either the web interface (roadmap and milestone pages), web administration interface or by using `trac-admin`.

**Note**: Milestone descriptions can not currently be edited using `trac-admin`.

## iCalendar Support
The Roadmap supports the [iCalendar](https://www.ietf.org/rfc/rfc2445.txt) format to keep track of planned milestones and related tickets from your favorite calendar software. Many calendar applications support the iCalendar specification including:

- [Apple iCal](https://www.apple.com/macos/ventura/) for Mac OS X.
- [Mozilla Calendar](https://www.thunderbird.net/en-US/calendar/), cross-platform.
- [Korganizer](https://kontact.kde.org/components/korganizer/), the calendar application of the [KDE project].
- [Evolution](https://wiki.gnome.org/Apps/Evolution), a contact manager, address manager and calendar for Gnome.
- [Microsoft Outlook](http://office.microsoft.com/en-us/outlook/) can also read iCalendar files and appears as a new static calendar in Outlook.
- [Google Calendar](https://www.google.com/calendar/).
- [Chandler](http://chandlerproject.org/), a personal and small-group task management and calendaring tool, Apache licensed and orphaned since 2009.

To subscribe to the roadmap, copy the iCalendar link from the roadmap (found at the bottom of the page) and choose the "Subscribe to remote calendar" action (or similar) of your calendar application, and insert the URL just copied.

**Note**: For tickets to be included in the calendar as tasks, you need to be logged in when copying the link. You will only see tickets assigned to yourself and associated with a milestone.

**Note**: To include the milestones in Google Calendar you might need to rewrite the URL:
```
RewriteEngine on
RewriteRule ([^/.]+)/roadmap/([^/.]+)/ics /$1/roadmap?user=$2&format=ics
```
More information about iCalendar can be found at [Wikipedia](https://en.wikipedia.org/wiki/ICalendar).

---
See also: [TracTickets](/group/rtgwg/TracTickets), [TracReports](/group/rtgwg/TracReports), [TracQuery](/group/rtgwg/TracQuery), [TracRoadmapCustomGroups](http://trac.edgewall.org/intertrac/TracRoadmapCustomGroups)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-23.*
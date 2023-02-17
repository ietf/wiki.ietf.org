---
title: TracPermissions
description: 
published: true
date: 2023-01-09T00:28:33.945Z
tags: 
editor: markdown
dateCreated: 2022-12-24T20:07:21.760Z
---

# Trac Permissions

Trac uses a simple, case sensitive, permission system to control what users can and can't access.

Permission privileges are managed using the [trac-admin](/group/rtgwg/TracAdmin) tool or the *General / Permissions* panel in the *Admin* tab of the web interface.

In addition to the default permission policy described in this page, it is possible to activate additional permission policies by enabling plugins and listing them in the [trac] permission_policies configuration entry in the [TracIni](/group/rtgwg/TracIni). See [TracFineGrainedPermissions](/group/rtgwg/TracFineGrainedPermissions) for more details.

Non-authenticated users accessing the system are assigned the name "anonymous". Assign permissions to the "anonymous" user to set privileges for anonymous/guest users. The parts of Trac that a user does not have the privileges for will not be displayed in the navigation. In addition to these privileges, users can be granted additional individual rights in effect when authenticated and logged into the system. All logged in users belong to the virtual group "authenticated", which inherits permissions from "anonymous".

## Graphical Admin Tab
To access this tab, a user must have one of the following permissions: `TRAC_ADMIN`, `PERMISSION_ADMIN`, `PERMISSION_GRANT`, `PERMISSION_REVOKE`. The permissions can be granted using the `trac-admin` command (more on `trac-admin `below):

  `$ trac-admin /path/to/projenv permission add bob TRAC_ADMIN`
  
Then, the user `bob` will be able to see the Admin tab, and can then access the permissions menu. This menu will allow you to perform all the following actions, but from the browser without requiring root access to the server (just the correct permissions for your user account). **Use at least one lowercase character in user names, as all-uppercase names are reserved for permissions.**

1. ![tracpermissions1.png](/tracpermissions1.png)
2. ![tracpermissions2.png](/tracpermissions2.png)
3. ![tracpermissions3.png](/tracpermissions3.png)

An easy way to quickly secure a new Trac install is to run the above command on the anonymous user, install the [AccountManagerPlugin](http://trac-hacks.org/wiki/AccountManagerPlugin), create a new admin account graphically and then remove the TRAC_ADMIN permission from the anonymous user.

From the graphical admin tab, users with `PERMISSION_GRANT` will only be allowed to grant permissions that they possess, and users with `PERMISSION_REVOKE` will only be allowed to revoke permissions that they possess. For example, a user cannot grant `MILESTONE_ADMIN` unless they have `PERMISSION_GRANT` and `MILESTONE_ADMIN`, and they cannot revoke `MILESTONE_ADMIN` unless they have `PERMISSION_REVOKE` and `MILESTONE_ADMIN`. `PERMISSION_ADMIN` just grants the user both `PERMISSION_GRANT` and `PERMISSION_REVOK`E, and users with `TRAC_ADMIN` can grant or revoke any permission.

## Available Privileges
To enable all privileges for a user, use the `TRAC_ADMIN` permission. Having `TRAC_ADMIN` is like being `root` on a *NIX system: it will allow you to perform any operation.

Otherwise, individual privileges can be assigned to users for the various different functional areas of Trac (**note that the privilege names are case-sensitive**):

### Repository Browser 
| `BROWSER_VIEW `  | View directory listings in the [repository browser ](/group/rtgwg/TracBrowser)                    |
|----------------|-----------------------------------------------------------------------|
| `LOG_VIEW`       | View revision logs of files and directories in the [repository browser](/group/rtgwg/TracBrowser) |
| `FILE_VIEW`      | View files in the [repository browser](/group/rtgwg/TracBrowser)                                  |
| `CHANGESET_VIEW` | View [repository check-ins](/group/rtgwg/TracChangeSet)  
### Tickets
| `TICKET_VIEW`            | View existing [tickets](/group/rtgwg/TracTickets) and perform [ticket queries](/group/rtgwg/TracQuery)                                                                                                                                                                                                                                                           |
|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `TICKET_CREATE`           | Create new [tickets](/group/rtgwg/TracTickets)                                                                                                                                                                                                                                                                                         |
| `TICKET_APPEND`           | Add comments or attachments to [tickets ](/group/rtgwg/TracTickets)                                                                                                                                                                                                                                                                    |
| `TICKET_CHGPROP`          | Modify [ticket](/group/rtgwg/TracTickets) properties (priority, assignment, keywords, etc.) with the following exceptions: edit description field, add/remove other users from cc field when logged in, and set email to pref                                                                                                          |
| `TICKET_MODIFY`           | Includes both `TICKET_APPEND` and `TICKET_CHGPROP`, and in addition allows resolving [tickets](/group/rtgwg/TracTickets). Tickets can be assigned to users through a [drop-down list](/group/rtgwg/TracTickets) when the list of possible owners has been restricted.                                                                                                  |
| `TICKET_EDIT_CC`          | Full modify cc field                                                                                                                                                                                                                                                                                       |
| `TICKET_EDIT_DESCRIPTION` | Modify description field                                                                                                                                                                                                                                                                                   |
| `TICKET_EDIT_COMMENT`     | Modify another user's comments. Any user can modify their own comments by default.                                                                                                                                                                                                                         |
| `TICKET_BATCH_MODIFY`     | [Batch modify](/group/rtgwg/TracBatchModify) tickets                                                                                                                                                                                                                                                                                       |
| `TICKET_ADMIN`            | `All TICKET_*` permissions, deletion of ticket attachments and modification of the reporter field, which grants ability to create a ticket on behalf of another user (it will appear that another user created the ticket). It also allows managing ticket properties through the web administration module. |

Attention: the "view tickets" button appears with the `REPORT_VIEW` permission.

### Roadmap
| `MILESTONE_VIEW`   | View milestones and assign tickets to milestones.                         |
|------------------|---------------------------------------------------------------------------|
| `MILESTONE_CREATE` | Create a new milestone                                                    |
| `MILESTONE_MODIFY` | Modify existing milestones                                                |
| `MILESTONE_DELETE` | Delete milestones                                                         |
| `MILESTONE_ADMIN`  | All `MILESTONE_*` permissions                                               |
| `ROADMAP_VIEW`     | View the [roadmap page](/group/rtgwg/TracRoadmap), is not (yet) the same as `MILESTONE_VIEW`, see [#4292](http://trac.edgewall.org/intertrac/%234292) |
| `ROADMAP_ADMIN`    | to be removed with [#3022](http://trac.edgewall.org/intertrac/%233022), replaced by `MILESTONE_ADMIN`                     |
### Reports
| `REPORT_VIEW`     | View [reports](/group/rtgwg/TracReports), i.e. the "view tickets" link. |
|-----------------|---------------------------------------------|
| `REPORT_SQL_VIEW` | View the underlying SQL query of a [report](/group/rtgwg/TracReports)   |
| `REPORT_CREATE`   | Create new [reports ](/group/rtgwg/TracReports)                         |
| `REPORT_MODIFY`   | Modify existing [reports](/group/rtgwg/TracReports)                     |
| `REPORT_DELETE`   | Delete [reports](/group/rtgwg/TracReports)                              |
| `REPORT_ADMIN`    | `All REPORT_*` permissions                    |

### Wiki System
| `WIKI_VIEW`   | View existing [wiki](/group/rtgwg/TracWiki) pages                                       |
|-------------|----------------------------------------------------------------|
| `WIKI_CREATE` | Create new [wiki](/group/rtgwg/TracWiki) pages                                          |
| `WIKI_MODIFY` | Change [wiki](/group/rtgwg/TracWiki) pages                                              |
| `WIKI_RENAME` | Rename [wiki](/group/rtgwg/TracWiki) pages                                              |
| `WIKI_DELETE` | Delete [wiki](/group/rtgwg/TracWiki) pages and attachments                              |
| `WIKI_ADMIN`  | `All WIKI_*` permissions, plus the management of readonly pages. |

### Permissions
| `PERMISSION_GRANT`  | add/grant a permission       |
|-------------------|------------------------------|
| `PERMISSION_REVOKE` | remove/revoke a permission   |
| `PERMISSION_ADMIN`  | `All PERMISSION_*` permissions |

### Others
| `TIMELINE_VIEW` | View the [timeline](/group/rtgwg/TracTimeline) page                                                                                      |
|---------------|-------------------------------------------------------------------------------------------------------------|
| `SEARCH_VIEW`   | View and execute [search](/group/rtgwg/TracSearcgh) queries                                                                             |
| `CONFIG_VIEW`   | Enables additional pages on *About Trac* that show the current configuration or the list of installed plugins |
| `EMAIL_VIEW`    | Shows email addresses even if [trac show_email_addresses](/group/rtgwg/TracIni) configuration option is false                       |


## Creating New Privileges
To create custom permissions, for example to be used in a custom workflow, enable the optional [tracopt.perm.config_perm_provider.ExtraPermissionsProvider](http://trac.edgewall.org/intertrac/ExtraPermissionsProvider) component in the "Plugins" admin panel, and add the desired permissions to the `[extra-permissions]` section in your [trac.ini](/group/rtgwg/TracIni). For more information, please refer to the documentation on the [TracIni](/group/rtgwg/TracIni) page after enabling the component.

## Granting Privileges
You grant privileges to users using [trac-admin](/group/rtgwg/TracAdmin). The current set of privileges can be listed with the following command:

  `$ trac-admin /path/to/projenv permission list`

This command will allow the user bob to delete reports:

  `$ trac-admin /path/to/projenv permission add bob REPORT_DELETE`

The` permission add` command also accepts multiple privilege names:

  `$ trac-admin /path/to/projenv permission add bob REPORT_DELETE WIKI_CREATE`

Or add all privileges:

  `$ trac-admin /path/to/projenv permission add bob TRAC_ADMIN`
  
## Permission Groups
There are two built-in groups, "authenticated" and "anonymous". Any user who has not logged in is automatically in the "anonymous" group. Any user who has logged in is also in the "authenticated" group. The "authenticated" group inherits permissions from the "anonymous" group. For example, if the "anonymous" group has permission WIKI_MODIFY, it is not necessary to add the WIKI_MODIFY permission to the "authenticated" group as well.

Custom groups may be defined that inherit permissions from the two built-in groups.

Permissions can be grouped together to form roles such as *developer*, *admin*, etc.
```
  $ trac-admin /path/to/projenv permission add developer WIKI_ADMIN
  $ trac-admin /path/to/projenv permission add developer REPORT_ADMIN
  $ trac-admin /path/to/projenv permission add developer TICKET_MODIFY
  $ trac-admin /path/to/projenv permission add bob developer
  $ trac-admin /path/to/projenv permission add john developer
```
Group membership can be checked by doing a `permission lis`t with no further arguments; the resulting output will include group memberships. **Use at least one lowercase character in group names, as all-uppercase names are reserved for permissions.**

## Adding a New Group and Permissions
Permission groups can be created by assigning a user to a group you wish to create, then assign permissions to that group.

The following will add *bob* to the new group called *beta_testers* and then will assign WIKI_ADMIN permissions to that group. (Thus, *bob* will inherit the WIKI_ADMIN permission)
```
   $ trac-admin /path/to/projenv permission add bob beta_testers
   $ trac-admin /path/to/projenv permission add beta_testers WIKI_ADMIN
```
## Removing Permissions
Permissions can be removed using the 'remove' command. For example:

This command will prevent the user *bob* from deleting reports:

  `$ trac-admin /path/to/projenv permission remove bob REPORT_DELETE`

Just like `permission add`, this command accepts multiple privilege names.

You can also remove all privileges for a specific user:

`  $ trac-admin /path/to/projenv permission remove bob '*'`

Or one privilege for all users:

 ` $ trac-admin /path/to/projenv permission remove '*' REPORT_ADMIN`
 
## Default Permissions
By default on a new Trac installation, the `anonymous` user will have view access to everything in Trac, but will not be able to create or modify anything. On the other hand, the `authenticated` users will have the permissions to *create* and *modify tickets* and *wiki* pages.
```
anonymous

 BROWSER_VIEW 
 CHANGESET_VIEW 
 FILE_VIEW 
 LOG_VIEW 
 MILESTONE_VIEW 
 REPORT_SQL_VIEW 
 REPORT_VIEW 
 ROADMAP_VIEW 
 SEARCH_VIEW 
 TICKET_VIEW 
 TIMELINE_VIEW
 WIKI_VIEW
authenticated

 TICKET_CREATE 
 TICKET_MODIFY 
 WIKI_CREATE 
 WIKI_MODIFY  
```

--- 
See also: [TracAdmin](/group/rtgwg/TracAdmin), [TracGuide](/group/rtgwg/TracGuide) and [TracFineGrainedPermissions](/group/rtgwg/TracFineGrainedPermissions)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-24.*
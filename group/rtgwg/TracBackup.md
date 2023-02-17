---
title: TracBackUp
description: 
published: true
date: 2023-01-04T22:44:24.763Z
tags: 
editor: markdown
dateCreated: 2023-01-04T22:44:20.670Z
---

# Trac Backup 

Trac backups are simply a copied snapshot of the entire [project environment](/group/rtgwg/TracEnvironment) directory, including the database. Backups can be created using the `hotcopy` command in [trac-admin](/group/rtgwg/TracAdmin).

**Note**: Trac uses the `hotcopy` nomenclature to match that of [Subversion](http://subversion.tigris.org/), to make it easier to remember when managing both Trac and Subversion servers.

## Creating a Backup
To create a backup of a live [TracEnvironment](/group/rtgwg/TracEnvironment) simply run:

`$ trac-admin /path/to/projenv hotcopy /path/to/backupdir`

[trac-admin](/group/rtgwg/TracAdmin) will lock the database while copying.

The resulting backup directory is safe to handle using standard file-based backup tools like `tar` or `dump`/`restore`.

Please note, the `hotcopy` command will not overwrite a target directory and when such exists, the operation ends with an error: `Command failed: [Errno 17] File exists:` This is discussed in [#3198](http://trac.edgewall.org/intertrac/ticket%3A3198).

## Restoring a Backup
To restore an environment from a backup, stop the process running Trac, ie the Web server or [tracd](/group/rtgwg/TracStandalone), restore the contents of your backup (path/to/backupdir) to your [project environment](/group/rtgwg/TracEnvironment) directory and restart the service.

To restore a PostgreSQL database backup, use the command:

`psql -U <user> -d <database> -f postgresql.dump`

The `<database>` option is the same as the [database connection string](/group/rtgwg/TracEnvironment) in the `[trac]` `database` option of *trac.ini*.

---
See also: [TracAdmin](/group/rtgwg/TracAdmin), [TracEnvironment](/group/rtgwg/TracEnvironment), [TracGuide](/group/rtgwg/TracGuide), [TracMigrate](http://trac.edgewall.org/intertrac/TracMigrate)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2023-01-04.*
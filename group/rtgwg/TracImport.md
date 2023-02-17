---
title: TracImport
description: 
published: true
date: 2022-12-29T02:27:45.656Z
tags: 
editor: markdown
dateCreated: 2022-12-23T17:28:40.357Z
---

# Importing ticket data 

To migrate issue tickets from other issue-tracking systems into Trac or perform housekeeping actions on tickets or simply synchronize different databases, there are some tools, plugins and scripts available.

## TicketImportPlugin
[TicketImportPlugin](https://trac-hacks.org/wiki/TicketImportPlugin): a plugin that lets you import or update into Trac a series of tickets from a **CSV file** or (if the [xlrd](https://pypi.org/project/xlrd/) library is installed) from an **Excel spreadsheet**.

## ExportImportXlsPlugin
[ExportImportXlsPlugin](https://trac-hacks.org/wiki/ExportImportXlsPlugin): a plugin that adds an admin panel for exporting and importing tickets via **XLS file**. Requires the python packages xlwt/rxld.

## Bugzilla
[BugzillaIssueTrackingPlugin](https://trac-hacks.org/wiki/BugzillaIssueTrackingPlugin): a plugin that integrates Bugzilla issue data into Trac keeping TracLinks. Ticket data can be imported from Bugzilla using the [bugzilla2trac.py](https://trac.edgewall.org/intertrac/browser%3Atrunk/contrib/bugzilla2trac.py) script, available in the contrib/ directory of the Trac distribution.
```
$ bugzilla2trac.py
bugzilla2trac - Imports a bug database from Bugzilla into Trac.

Usage: bugzilla2trac.py [options]

Available Options:
  --db <MySQL dbname>              - Bugzilla's database
  --tracenv /path/to/trac/env      - full path to Trac db environment
  -h | --host <MySQL hostname>     - Bugzilla's DNS host name
  -u | --user <MySQL username>     - effective Bugzilla's database user
  -p | --passwd <MySQL password>   - Bugzilla's user password
  -c | --clean                     - remove current Trac tickets before importing
  --help | help                    - this help info

Additional configuration options can be defined directly in the script.
```
Currently, the following data is imported from Bugzilla:
- bugs
- bug activity (field changes)
- bug attachments
- user names and passwords (put into a htpasswd file)

The script provides a number of features to ease the conversion, such as:
- PRODUCT_KEYWORDS: Trac has no concept of products, so the script provides the ability to attach a ticket keyword instead.
- IGNORE_COMMENTS: Don't import Bugzilla comments that match a certain regexp.
- STATUS_KEYWORDS: Attach ticket keywords for the Bugzilla statuses not available in Trac. By default, the `VERIFIED` and `RELEASED` Bugzilla statuses are translated into Trac keywords.

For more details on the available options, see the configuration section at the top of the script.

## Known Issues
No results

The adequate milestone for valid bugzilla2trac issue is usually Not applicable, which means that fixes to the contributed script are not planned for a particular Trac release, but can happen anytime.

## Jira
[JiraToTracIntegration](https://trac-hacks.org/wiki/JiraToTracIntegration): a plugin that provides tools to import Atlassian Jira backup files into Trac. The plugin consists of a Python 3.1 commandline tool that:

- Parses the Jira backup XML file.
- Sends the imported Jira data and attachments to Trac using the [th:XmlRpcPlugin].
- Generates a htpasswd file containing the imported Jira users and their SHA-512 base64 encoded passwords.
## Mantis
[MantisImportScript](https://trac-hacks.org/wiki/MantisImportScript): a script to import the following type of data from Mantis into Trac:

- bugs
- bug comments
- bug activity (field changes)
- attachments (as long as the files live in the mantis database, not on the filesystem).
## PlanetForge
[PlanetForgeImportExportPlugin](https://trac-hacks.org/wiki/PlanetForgeImportExportPlugin): this plugin exports Trac data (wiki, tickets, compoments, permissions, repositories, etc.) using the open format designed by the [COCLICO project](https://gforge.inria.fr/projects/coclico/). It extends the webadmin panel and the 'trac admin ...' command. Has no 'import' feature.

## Scarab
[ScarabToTracScript](https://trac-hacks.org/wiki/ScarabToTracScript): a script that migrates Scarab issues to Trac tickets. Requires [th:XmlRpcPlugin].

## Sourceforge
[SfnToTracScript](https://trac-hacks.org/wiki/SfnToTracScript): importer of SourceForge's new backup file (originated from #Trac3521). Also, ticket data can be imported from Sourceforge using the [sourceforge2trac.py](https://trac.edgewall.org/intertrac/browser%3Atrunk/contrib/sourceforge2trac.py) script, available in the contrib/ directory of the Trac distribution.

## Other
Since Trac uses a SQL database to store the data, you can also custom-import from other systems by examining the database tables. Just go into [sqlite](https://www.sqlite.org/cli.html) command line to look at the tables and import them from your application.

### Comma delimited file - CSV
See [csv2trac.2.py](https://trac.edgewall.org/attachment/wiki/TracSynchronize/csv2trac.2.py) for details. This approach is particularly useful if you need to enter a large number of tickets by hand. Note that the ticket type type field, (task etc.) is also needed for this script to work with more recent Trac releases.

Comments on script: The script has an error on line 168: 'Ticket' needs to be 'ticket'. Also, the listed values for severity and priority are swapped.

---
See also:

to import/export wiki pages: [TracAdmin](/group/rtgwg/TracAdmin),
to export tickets: [TracTickets](/group/rtgwg/TracTickets), [TracQuery](/group/rtgwg/TracQuery)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-23.*
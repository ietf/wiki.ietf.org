---
title: TracNotification
description: 
published: true
date: 2022-12-29T02:27:45.656Z
tags: 
editor: markdown
dateCreated: 2022-12-23T19:12:10.314Z
---

# Email Notification of Ticket Changes 

Trac supports notification of ticket changes via email.

Email notification is useful to keep users up-to-date on tickets/issues of interest, and also provides a convenient way to post all ticket changes to a dedicated mailing list. For example, this is how the [Trac-tickets mailing list](http://lists.edgewall.com/archive/trac-tickets/) is set up.

Disabled by default, notification can be activated and configured in [trac.ini](/group/rtgwg/TracIni).

## Receiving Notification Mails
When reporting a new ticket or adding a comment, enter a valid email address or your Trac username in the reporter, *assigned to/owner* or cc field. Trac will automatically send you an email when changes are made to the ticket, depending on how notification is configured.

### How to use your username to receive notification mails
To receive notification mails, you can either enter a full email address or your Trac username. To get notified with a simple username or login, you need to specify a valid email address in the *Preferences* page.

Alternatively, a default domain name `(smtp_default_domain)` can be set in the [TracIni](/group/rtgwg/TracIni) file, see Configuration Options below. In this case, the default domain will be appended to the username, which can be useful for an "Intranet" kind of installation.

When using apache and mod_kerb for authentication against Kerberos / Active Directory, usernames take the form (`username@EXAMPLE.LOCAL`). To avoid this being interpreted as an email address, add the Kerberos domain to (`ignore_domains`).

### Ticket attachment notifications
Since 1.0.3 Trac will send notifications when a ticket attachment is added or deleted. Usually attachment notifications will be enabled in an environment by default. To disable the attachment notifications for an environment the `TicketAttachmentNotifier` component must be disabled:
``
[components]
trac.ticket.notification.TicketAttachmentNotifier = disabled
``
## Configuring SMTP Notification
**Important**: For TracNotification to work correctly, the `[trac] base_url` option must be set in [trac.ini](/group/rtgwg/TracIni).

### Configuration Options
These are the available options for the `[notification]` section in `trac.ini`:

### `[notification]`
| `admit_domains`           | Comma-separated list of domains that should be considered as valid for email addresses (such as localdomain).                                                                                                                                                                                               | (no default)                         |
|---------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| `always_notify_owner`     | Always send notifications to the ticket owner (since 0.9).                                                                                                                                                                                                                                                  | false                                |
| `always_notify_reporter`  | Always send notifications to any address in the reporter field.                                                                                                                                                                                                                                             | false                                |
| `always_notify_updater`   | Always send notifications to the person who causes the ticket property change and to any previous updater of that ticket.                                                                                                                                                                                   | true                                 |
| `ambiguous_char_width`    | Which width of ambiguous characters (e.g. 'single' or 'double') should be used in the table of notification mail. If 'single', the same width as characters in US-ASCII. This is expected by most users. If 'double', twice the width of US-ASCII characters. This is expected by CJK users. (since 0.12.2) | single                               |
| `batch_subject_template`  | Like ticket_subject_template but for batch modifications. By default, the template is $prefix Batch modify: $tickets_descr. (since 1.0)                                                                                                                                                                     | $prefix Batch modify: $tickets_descr |
| `email_sender`            | Name of the component implementing IEmailSender. This component is used by the notification system to send emails. Trac currently provides SmtpEmailSender for connecting to an SMTP server, and SendmailEmailSender for running a sendmail-compatible executable. (since 0.12)                             | SmtpEmailSender                      |
| `ignore_domains`          | Comma-separated list of domains that should not be considered part of email addresses (for usernames with Kerberos domains).                                                                                                                                                                                | (no default)                         |
| `mime_encoding`           | Specifies the MIME encoding scheme for emails. Valid options are 'base64' for Base64 encoding, 'qp' for Quoted-Printable, and 'none' for no encoding, in which case mails will be sent as 7bit if the content is all ASCII, or 8bit otherwise. (since 0.10)                                                 | none                                 |
| `sendmail_path`           | Path to the sendmail executable. The sendmail program must accept the -i and -f options. (since 0.12)                                                                                                                                                                                                       | sendmail                             |
| `smtp_always_bcc`         | Email address(es) to always send notifications to, addresses do not appear publicly (Bcc:). (since 0.10)                                                                                                                                                                                                    | (no default)                         |
| `smtp_always_cc`          | Email address(es) to always send notifications to, addresses can be seen by all recipients (Cc:).                                                                                                                                                                                                           | (no default)                         |
| `smtp_default_domain`     | Default host/domain to append to address that do not specify one.                                                                                                                                                                                                                                           | (no default)                         |
| `smtp_enabled`            | Enable email notification.                                                                                                                                                                                                                                                                                  | false                                |
| `smtp_from`               | Sender address to use in notification emails.                                                                                                                                                                                                                                                               | trac@localhost                       |
| `smtp_from_author`        | Use the action author as the sender of notification emails. (since 1.0)                                                                                                                                                                                                                                     | false                                |
| `smtp_from_name`          | Sender name to use in notification emails.                                                                                                                                                                                                                                                                  | (no default)                         |
| `smtp_password`           | Password for SMTP server. (since 0.9)                                                                                                                                                                                                                                                                       | (no default)                         |
| `smtp_port`               | SMTP server port to use for email notification.                                                                                                                                                                                                                                                             | 25                                   |
| `smtp_replyto`            | Reply-To address to use in notification emails.                                                                                                                                                                                                                                                             | trac@localhost                       |
| `smtp_server`             | SMTP server hostname to use for email notifications.                                                                                                                                                                                                                                                        | localhost                            |
| `smtp_subject_prefix`     | Text to prepend to subject line of notification emails. If the setting is not defined, then the [$project_name] prefix. If no prefix is desired, then specifying an empty option will disable it. (since 0.10.1)                                                                                            | __default__                          |
| `smtp_user`               | Username for SMTP server. (since 0.9)                                                                                                                                                                                                                                                                       | (no default)                         |
| `ticket_subject_template` | A Genshi text template snippet used to get the notification subject. By default, the subject template is $prefix #$ticket.id: $summary. $prefix being the value of the smtp_subject_prefix option. (since 0.11)                                                                                             | $prefix #$ticket.id: $summary        |
| `use_public_cc`           | Recipients can see email addresses of other CC'ed recipients. If this option is disabled (the default), recipients are put on BCC. (since 0.10)                                                                                                                                                             | false                                |
| `use_short_addr`          | Permit email address without a host/domain (i.e. username only). The SMTP server should accept those addresses, and either append a FQDN or use local delivery. (since 0.10)                                                                                                                                | false                                |
| `use_tls`                 | Use SSL/TLS to send notifications over SMTP. (since 0.10)                                                                                                                                                                                                                                                   | false                                |

### Example Configuration (SMTP)
```
[notification]
smtp_enabled = true
smtp_server = mail.example.com
smtp_from = notifier@example.com
smtp_replyto = myproj@projects.example.com
smtp_always_cc = ticketmaster@example.com, theboss+myproj@example.com
```
### Example Configuration (`sendmail`)
```
[notification]
smtp_enabled = true
email_sender = SendmailEmailSender
sendmail_path = /usr/sbin/sendmail
smtp_from = notifier@example.com
smtp_replyto = myproj@projects.example.com
smtp_always_cc = ticketmaster@example.com, theboss+myproj@example.com
```
### Customizing the e-mail subject
The e-mail subject can be customized with the `ticket_subject_template` option, which contains a [Genshi](http://genshi.edgewall.org/wiki/Documentation/text-templates.html) text template snippet. The default value is:

`$prefix #$ticket.id: $summary`

The following variables are available in the template:

- `env`: The project environment (see [env.py](http://trac.edgewall.org/intertrac/source%3A/trunk/trac/env.py)).
- `prefix`: The prefix defined in `smtp_subject_prefix`.
- `summary`: The ticket summary, with the old value if the summary was edited.
- `ticket`: The ticket model object (see [model.py](http://trac.edgewall.org/intertrac/source%3A/trunk/trac/ticket/model.py)). Individual ticket fields can be addressed by appending the field name separated by a dot, eg `$ticket.milestone`.
### Customizing the e-mail content
The notification e-mail content is generated based on `ticket_notify_email.txt` in `trac/ticket/templates`. You can add your own version of this template by adding a `ticket_notify_email.txt` to the templates directory of your environment. The default looks like this:
```
$ticket_body_hdr
$ticket_props
{% choose ticket.new %}\
{%   when True %}\
$ticket.description
{%   end %}\
{%   otherwise %}\
{%     if changes_body %}\
${_('Changes (by %(author)s):', author=change.author)}

$changes_body
{%     end %}\
{%     if changes_descr %}\
{%       if not changes_body and not change.comment and change.author %}\
${_('Description changed by %(author)s:', author=change.author)}
{%       end %}\
$changes_descr
--
{%     end %}\
{%     if change.comment %}\

${changes_body and _('Comment:') or _('Comment (by %(author)s):', author=change.author)}

$change.comment
{%     end %}\
{%   end %}\
{% end %}\

-- 
${_('Ticket URL: <%(link)s>', link=ticket.link)}
$project.name <${project.url or abs_href()}>
$project.descr
```
## Sample Email
```
#42: testing
---------------------------+------------------------------------------------
       Id:  42             |      Status:  assigned                
Component:  report system  |    Modified:  Fri Apr  9 00:04:31 2004
 Severity:  major          |   Milestone:  0.9                     
 Priority:  lowest         |     Version:  0.6                     
    Owner:  anonymous      |    Reporter:  jonas@example.com               
---------------------------+------------------------------------------------
Changes:
  * component:  changeset view => search system
  * priority:  low => highest
  * owner:  jonas => anonymous
  * cc:  daniel@example.com =>
         daniel@example.com, jonas@example.com
  * status:  new => assigned

Comment:
I'm interested too!

--
Ticket URL: <http://example.com/trac/ticket/42>
My Project <http://myproj.example.com/>
```
## Customizing e-mail content for MS Outlook
MS Outlook normally presents plain text e-mails with a variable-width font, and as a result the ticket properties table will most certainly look like a mess in MS Outlook. This can be fixed with some customization of the e-mail template.

Replace the following second row in the template:

`$ticket_props`

with this (requires Python 2.6 or later):
```
--------------------------------------------------------------------------
{% with
   pv = [(a[0].strip(), a[1].strip()) for a in [b.split(':') for b in
         [c.strip() for c in 
          ticket_props.replace('|', '\n').splitlines()[1:-1]] if ':' in b]];
   sel = ['Reporter', 'Owner', 'Type', 'Status', 'Priority', 'Milestone', 
          'Component', 'Severity', 'Resolution', 'Keywords'] %}\
${'\n'.join('%s\t%s' % (format(p[0]+':', ' <12'), p[1]) for p in pv if p[0] in sel)}
{% end %}\
--------------------------------------------------------------------------
```
The table of ticket properties is replaced with a list of a selection of the properties. A tab character separates the name and value in such a way that most people should find this more pleasing than the default table when using MS Outlook.
```
#42: testing
--------------------------------------------------------------------------
Reporter:	jonas@example.com
Owner:	anonymous
Type:	defect
Status:	assigned
Priority:	lowest
Milestone:	0.9
Component:	report system
Severity:	major
Resolution:	
Keywords:	
--------------------------------------------------------------------------
Changes:

  * component:  changeset view => search system
  * priority:  low => highest
  * owner:  jonas => anonymous
  * cc:  daniel@example.com =>
          daniel@example.com, jonas@example.com
  * status:  new => assigned

Comment:
I'm interested too!

--
Ticket URL: <http://example.com/trac/ticket/42>
My Project <http://myproj.example.com/>
```
**Important**: Only those ticket fields that are listed in `sel` are part of the HTML mail. If you have defined custom ticket fields which are to be part of the mail, then they have to be added to sel. Example:

   `sel = ['Reporter', ..., 'Keywords', 'Custom1', 'Custom2']`
   
However, the solution is still a workaround to an automatically HTML-formatted e-mail.

## Using GMail as the SMTP relay host
Use the following configuration snippet:
```
[notification]
smtp_enabled = true
use_tls = true
mime_encoding = base64
smtp_server = smtp.gmail.com
smtp_port = 587
smtp_user = user
smtp_password = password
```
where *user* and *password* match an existing GMail account, ie the ones you use to log in on http://gmail.com.

Alternatively, you can use `smtp_port = 25.`
You should not use `smtp_port = 465`. Doing so may deadlock your ticket submission. Port 465 is reserved for the SMTPS protocol, which is not supported by Trac. See [#7107](http://trac.edgewall.org/intertrac/comment%3A2%3Aticket%3A7107) for details.

## Filtering notifications for one's own changes and comments
To delete these notifications in Gmail, use the following filter:

`from:(<smtp_from>) (("Reporter: <username>" -Changes -Comment) OR "Changes (by <username>)" OR "Comment (by <username>)")`

In Thunderbird, there is no such solution if you use IMAP, see http://kb.mozillazine.org/Filters_(Thunderbird)#Filtering_the_message_body.

You can also add this plugin:http://trac-hacks.org/wiki/NeverNotifyUpdaterPlugin, or vote for [#2247](http://trac.edgewall.org/intertrac/%232247) to be fixed.

## Troubleshooting
If you cannot get the notification working, first make sure the log is activated and have a look at the log to find if an error message has been logged. See [TracLogging](/group/rtgwg/TracLogging) for help about the log feature.

Notification errors are not reported through the web interface, so the user who submits a change or a new ticket never gets notified about a notification failure. The Trac administrator needs to look at the log to find the error trace.

### *Permission denied error*
Typical error message:
```
  ...
  File ".../smtplib.py", line 303, in connect
    raise socket.error, msg
  error: (13, 'Permission denied')
```
This error usually comes from a security settings on the server: many Linux distributions do not allow the web server (Apache, ...) to post email messages to the local SMTP server.

Many users get confused when their manual attempts to contact the SMTP server succeed:

`telnet localhost 25`

This is because a regular user may connect to the SMTP server, but the web server cannot:

`sudo -u www-data telnet localhost 25`

In such a case, you need to configure your server so that the web server is authorized to post to the SMTP server. The actual settings depend on your Linux distribution and current security policy. You may find help in the Trac [MailingList archive](http://trac.edgewall.org/intertrac/MailingList).

Relevant mailing list thread on SELinux: http://article.gmane.org/gmane.comp.version-control.subversion.trac.general/7518

For SELinux in Fedora 10:

`setsebool -P httpd_can_sendmail 1`

### *Suspected spam error*
Some SMTP servers may reject the notification email sent by Trac.

The default Trac configuration uses Base64 encoding to send emails to the recipients. The whole body of the email is encoded, which sometimes trigger false positive spam detection on sensitive email servers. In such an event, change the default encoding to "quoted-printable" using the `mime_encoding` option.

Quoted printable encoding works better with languages that use one of the Latin charsets. For Asian charsets, stick with the Base64 encoding.

See also: [TracTickets](/group/rtgwg/TracTickets), [TracIni](/group/rtgwg/TracIni), [TracGuide](/group/rtgwg/TracGuide), [TracDev/NotificationApi](http://trac.edgewall.org/intertrac/TracDev/NotificationApi)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-23.*
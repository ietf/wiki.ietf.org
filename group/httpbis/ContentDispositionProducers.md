---
title: Content Disposition Producers
description: Content Disposition Producers
published: true
date: 2022-12-13T23:00:21.248Z
tags: 
editor: markdown
dateCreated: 2022-12-13T23:00:16.364Z
---

This is a list of potentially interesting CMSs / CRMs / Web frameworks / libraries for implementation of [RFC6266](http://tools.ietf.org/html/rfc6266).

We should try to identify affected code (ideally with a link to source(s)) for each, as well as the public bug database for each. Eventually we'll raise a *polite* bug where necessary.

## Python

* stdlib
  *  [i18n in email headers](http://docs.python.org/library/email.header.html) (often used for HTTP too)
  *  [some related utilities](http://docs.python.org/library/email.util.html)
  *  [mimetools.Message](http://docs.python.org/library/mimetools.html#mimetools.Message) - default for the built-in HTTP server. Subclass of [rfc822.Message](http://docs.python.org/library/rfc822.html#rfc822.Message). 
* [Django](https://code.djangoproject.com/) - nothing in Django itself. However:
  *  [snippet showing how to do it](http://djangosnippets.org/snippets/1710/) (see also links at bottom)
  *  [docs](https://docs.djangoproject.com/en/dev/ref/request-response/)
  *  [outputting PDFs](https://docs.djangoproject.com/en/dev/howto/outputting-pdf/)
  *  [dodgy-looking ticket](https://code.djangoproject.com/ticket/2489) where everything is unicode 
* Zope
  *  [relevant bug](https://bugs.launchpad.net/zope3/+bug/284756) 
* Plone
  *  [utils.py:contentDispositionHeader()](http://svn.plone.org/svn/archetypes/Products.Archetypes/trunk/Products/Archetypes/utils.py) - uses stdlib email.Message
  *  [ticket 8591](http://dev.plone.org/plone/ticket/8591) 
* Libraries
  *  [rfc6266](https://github.com/g2p/rfc6266) implements the sender side and the receiver side 

## Ruby

* stdlib
  *  [Net:HTTPHeader](http://www.ruby-doc.org/stdlib/libdoc/net/http/rdoc/classes/Net/HTTPHeader.html#M001306) doesn't seem to
  *  [source](http://svn.ruby-lang.org/cgi-bin/viewvc.cgi/trunk/lib/net/http.rb?revision=32192&view=markup#l1423); note other things below, seems a reasonable place to integrate 
* [Rails](http://rubyonrails.org/)
  *  [streaming.rb:send_file_headers](https://github.com/rails/rails/blob/f489b3341c6f5488eadeea0544ce0decc22e351e/actionpack/lib/action_controller/streaming.rb#L148)
  *  [response.rb](https://github.com/rails/rails/blob/a60779f7e69a7045a308844e9464d7d6b9cac94d/actionpack/lib/action_controller/response.rb) looks like something should go here 
* [Merb](http://www.merbivore.com/)
  *  [controller.rb](https://github.com/merb/merb/blob/a53063fa34b31bcef70b0295ccdaaa5d349219f0/merb-core/lib/merb-core/controller/mixins/controller.rb#L157) (and elsewhere in file) - nothing for i18n 
* [Sinatra](http://www.sinatrarb.com/)
  *  [base.rb](https://github.com/sinatra/sinatra/blob/c3e1f5f27c441f592fb76657d8e0e32e5e404b0b/lib/sinatra/base.rb#L189) - nothing for i18n. 

## Node.JS

* stdlib
  * [http.js](https://github.com/joyent/node/blob/master/lib/http.js) - nothing 

## PHP

* stdlib
* Drupal
* symfony
* Zend
* mediawiki
* SugarCRM 

## Java

* stdlib
  *  doesn't address HTTP header fields 
* Servlet API
  *  no specific support for Content-Disposition
  *  setHeader() doesn't specify how to handle non ISO-8859-1 characters (Tomcat 6 appears to drop the upper bits silently) 
* GWT
* cocoon
* tapestry
* sling
* spring
* Jersey (JAX-RS) 

## Perl

 * LWP
 * mason
 * twiki
 * scoop
 * slash
 * movable type 

## ​ASP.NET​

---
*The content on this page was last updated on 2012-02-03. It was migrated from the old Trac wiki on 2022-12-13.*
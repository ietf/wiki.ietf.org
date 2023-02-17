---
title: GeoPriv Tools
description: 
published: true
date: 2023-01-24T01:05:07.374Z
tags: 
editor: markdown
dateCreated: 2023-01-24T01:04:01.515Z
---

# Tools implementing GEOPRIV protocols 
This page is intended to be a reference for people looking for software or hardware systems that implement the GEOPRIV protocols, either as clients or servers. The list is meant to include all available implementations, including both commercial and open-source efforts.

- The Open Source LIS: A PHP-based HELD server with a Java-based client
	- Link: http://held-location.sourceforge.net/
	- Document: [RFC 5985](http://tools.ietf.org/html/rfc5985) (client, server), [RFC 5986](http://tools.ietf.org/html/rfc5986) (client), [RFC 5491](http://tools.ietf.org/html/rfc5491)
- The Internet Geolocation Toolkit: A multi-platform, multi-protocol C++ library for geolocation access.
	- Link: http://igtk.sourceforge.net/
	- Documents: [RFC 5985](http://tools.ietf.org/html/rfc5985) (client), [RFC 5986](http://tools.ietf.org/html/rfc5986) (client), [RFC 3825](http://tools.ietf.org/html/rfc3825) (client), [RFC 4776](http://tools.ietf.org/html/rfc4776) (client), [RFC 5139](http://tools.ietf.org/html/rfc5139), [RFC 5491](http://tools.ietf.org/html/rfc5491), [draft-ietf-geopriv-dhcp-lbyr-uri-option](http://tools.ietf.org/html/draft-ietf-geopriv-dhcp-lbyr-uri-option) (client)
- ECRITdroid: An emergency calling client for Android. Doesn't do GEOPRIV now (just LoST/ECRIT), but should soon, in order to be fully ECRIT-compliant
	- Link: http://ecritdroid.googlecode.com/
	- Documents: [RFC 5222](http://tools.ietf.org/html/rfc5222), [draft-ietf-ecrit-phonebcp](http://tools.ietf.org/html/draft-ietf-ecrit-phonebcp) (partial)
- Online DHCP encoders: An AJAX tool for encoding location values for use in the DHCP location options
	- Link: http://geopriv.dreamhosters.com/dhcloc/
	- Documents: [RFC 4776](http://tools.ietf.org/html/rfc4776) (server config), [RFC 3825](http://tools.ietf.org/html/rfc3825) (server config), [draft-ietf-geopriv-rfc3825bis](http://tools.ietf.org/html/draft-ietf-geopriv-rfc3825bis) (server config)
- Firefox: The Firefox implementation of the W3C API supports a limited profile of HELD. To enable: Go to "about:config"; set "geo.wifi.protocol" to "1"; set "geo.wifi.uri" to the URL of your HELD server.
	- Link: https://bugzilla.mozilla.org/show_bug.cgi?id=545001
	- Documents: [RFC 5985](http://tools.ietf.org/html/rfc5985) (client, partial)
- [CommScope](/group/geopriv/CommScope) LIS: This is a commercial LIS that supports various configurations and access network types. It also provides support for for transitioning to NGES.
	- Link: http://www.commscope.com/andrew/eng/product/geo/info/1222278_18726.html

http://www.commscope.com/andrew/eng/product/geo/info/1222290_18726.html

Documents: [RFC 5985](http://tools.ietf.org/html/rfc5985) (Server), [RFC 6155](http://tools.ietf.org/html/rfc6155), [RFC 4119](http://tools.ietf.org/html/rfc4119), [RFC 5139](http://tools.ietf.org/html/rfc5139), [RFC 5491](http://tools.ietf.org/html/rfc5491), [draft-ietf-geopriv-deref-protocol](http://tools.ietf.org/html/draft-ietf-geopriv-deref-protocol)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-06-28. It was migrated from the old Trac wiki on 2023-01-23.*

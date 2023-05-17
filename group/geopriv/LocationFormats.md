---
title: Location Formats
description: 
published: true
date: 2023-02-27T05:56:58.001Z
tags: 
editor: markdown
dateCreated: 2023-01-25T03:19:08.236Z
---

# Location Formats 
There are a great many location formats used in different standards. From the hugely complex [Geography Markup Language](http://www.opengeospatial.org/standards/gml/) to the simple [Geo URI](http://tools.ietf.org/html/draft-mayrhofer-geopriv-geo-uri-01), this page attempts to catalogue formats.

A major consideration is compatibility between formats. Being able to translate from one format into the other is not always a simple process. One aim of this work is to ensure that new location formats can be reused where appropriate and that new location formats are not created where the new format is substantially different to existing formats.

## Geodetic formats
- [Geography Markup Language (OGC)](http://www.opengeospatial.org/standards/gml/)
- [Keyhole Markup Language(OGC) (maps to GML)](http://www.opengeospatial.org/standards/kml/)
- [GeoRSS (uses GML)](http://georss.org/)
- [GeoJSON (maps to GML)](http://geojson.org/)
- [Geographic Area Description (ETSI TS 123.032)](http://www.3gpp.org/ftp/Specs/html-info/23032.htm)
- [Mobile Location Protocol (OMA MLS 1.2)](http://www.openmobilealliance.org/Technical/release_program/mls_v1_2.aspx)
- [XMPP User Location (XEP-0080)](http://xmpp.org/extensions/xep-0080.html)
- [IETF DHCP Geodetic location (RFC3825)](http://tools.ietf.org/html/rfc3825)
- [IETF PIDF-LO (RFC4119, RFC5139; uses GML)](http://tools.ietf.org/html/rfc3825)
- [GeoURI (maps to GML)](http://tools.ietf.org/html/draft-mayrhofer-geopriv-geo-uri)
- [Web Feature Service (OGC; uses GML)](http://www.opengeospatial.org/standards/wfs)
- [HTML ICBM Meta tags](http://www.badkey.com/db/blogsphere.nsf/d6plinks/jwie-6e3rsp)
- [HTML Geo Position Meta tags](http://geotags.com/geo/geotags2.html)
- [Dublin Core Spatial elements](http://dublincore.org/documents/library-application-profile/index.shtml)
- [GPS Exchange Format](http://www.topografix.com/gpx.asp)
- [Geo Microformat](http://microformats.org/wiki/geo)
- [vCard GEO attribute](http://tools.ietf.org/html/draft-ietf-vcarddav-vcardrev-07)
- [W3C Geolocation API](/group/geopriv/GeoprivTools)http://www.w3.org/TR/geolocation-API/)
- [OpenStreetMap API](http://wiki.openstreetmap.org/wiki/OSM_Protocol_Version_0.5)
- [OpenSearch Geo Extension](http://www.opensearch.org/Specifications/OpenSearch/Extensions/Geo/1.0/Draft_1)
- [(Google) Gears Geolocation API Network Protocol](http://code.google.com/apis/gears/geolocation_network_protocol.html)
- [Skyhook protocol](http://coderrr.wordpress.com/2008/09/10/get-the-physical-location-of-wireless-router-from-its-mac-address-bssid/)
- [SVG](/group/rtgwg/TracSyntaxColoring)http://www.w3.org/TR/SVGTiny12/) [GeographicCoordinates](http://www.w3.org/TR/SVGTiny12/coords.html#GeographicCoordinates) (see also [SVG Map](/group/rtgwg/TracSyntaxColoring)http://blog.svg-map.com/2008/07/the-index-of-sv.html))
- [W3C Semantic Web Interest Group: Basic Geo (WGS84 lat/long) Vocabulary](http://www.w3.org/2003/01/geo/)
- [W3C Geospatial Vocabulary](http://www.w3.org/2005/Incubator/geo/XGR-geo-20071023/)
## Civic address formats
- [IETF Civic Address DHCP (RFC4776)](http://tools.ietf.org/html/rfc4776)
- [IETF Civic Address XML (RFC5139)](http://tools.ietf.org/html/rfc5139)
- [xAL](http://www.oasis-open.org/committees/ciq/ciq.html#6)

There are also a lot of country-specific specifications that describe how civic addresses in that country work. These often define a number of fields.

## Other efforts
Unclassified or otherwise:

- [Yahoo! Where On Earth IDs](http://developer.yahoo.com/geo/)
- [United Nations Trade Transport Location Code](http://www.unece.org/cefact/locode/service/main.htm)
- [geo-brainstorming at Microformats Wiki](http://microformats.org/wiki/geo-brainstorming)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-05-13. It was migrated from the old Trac wiki on 2023-01-24.*
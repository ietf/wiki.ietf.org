---
title: Issues Rib Data Model
description: 
published: true
date: 2023-01-22T03:29:12.036Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:29:08.188Z
---

# Issue tracker for [draft-ietf-i2rs-rib-data-model](http://tools.ietf.org/html/draft-ietf-i2rs-rib-data-model) 
## Issue 1: Should we define tunnel encapsulation and tunnel decapsulation as next-hops in the RIB data model?
The RIB data model can model some types of encapsulation and decapsulation by treating encapsulation and decapsulation as next-hops. For encapsulation, a route is paired with a tunnel-encap-nexthop. For decapsulation, an initial route match condition is paired with a next-hop chain which consists of a tunnel-decap-nexthop and another nexthop such as rib-name-nexthop or an egress-interface-nexthop.

1) It is not clear if this model for decapsulation supports all useful encapsulation types. For example, it is not clear that the route-match-types currently in draft-ietf-i2rs-rib-data-model-03 can be used to select traffic for GRE, NVGRE, and VXLAN decapsulation. One could consider extending the route-match-types to include the header information needed to identify other encapsulation types. However, this may also be a sign that the basic approach should be re-evaluated.

2) Does treating tunnel-encap and tunnel-decap as next-hops result in a data model that is easy to use for someone trying to program network forwarding behavior? From the point-of-view of a user of the data model, modeling tunnels as interfaces seems more useful. Treating tunnel decapsulation as a type of ingress interface and tunnel encapsulation as a type of egress interface would fit with the current RIB model (which already has the concept of an interface-route and an interface-nexthop.) And it would reduce the amount of next-hop chaining that is required to make tunnels work compared to the current model.

Status (11/30/15): This topic generated a good amount of debate on the list. There does not appear to be consensus on how to proceed.

## Issue 2: Make definition of route state "active" more precise:
Current definition in section 2.3 (repeated in 2.6)
- ACTIVE: Indicates whether a route is fully resolved and is a candidate for selection.
Propose to replace with:
- ACTIVE: Indicates whether a route has at least one fully resolved nexthop and is therefore eligible for installation in the FIB.
Status (12/4/15): to be addressed in -05 revision

## Issue 3: route-change notification
The current route-change notification seems to have many of the right components. However, the usage is ambiguous. Below is proposed text to clarify the usage as well as some modifications of the data model to make this usage clearer.

An implementation of this RIB data model MUST support sending route-change notifications whenever a route transitions between the following states:

- from the active state to the inactive state
- from the inactive state to the active state
- from the installed state to the uninstalled state
- from the uninstalled state to the installed state

A single notification MAY be used when a route transitions from inactive/uninstalled to active/installed or in the other direction.

---
The following changes to the yang model affecting the route-change notification, in particular the route-change-reasons should also be considered. It may also make sense to make the route-change-reason a list in order to return multiple route-change0reasons. This would be useful for the the case where a nexthop becoming resolved makes a route A active which is of better preference than a currently active route B, which results in the route A being installed. Or the text should clarify that this case requires two notifications. Or the text should clarify which single reason should be given in this case.
```
     notification route-change {
       description
         "Route change notification.";
       leaf rib-name {
         type string;
         mandatory true;
         description
           "A reference to the name of a rib.";
       }
       leaf rib-family {
         type rib-family-def;
         mandatory true;
         description
           "A reference to address family of a rib.";
       }
       uses route-prefix;
       leaf route-installed-state {
         type route-installed-state-def;
         mandatory true;
         description
           "Indicates whether the route is currently installed in the FIB or uninstalled.";
       }
       leaf route-state {
         type route-state-def;
         mandatory true;
         description
           "Indicates whether a route is active or inactive.";
       }
       leaf route-change-reason {
         type route-change-reason-def;
         mandatory true;
         description
           "Return the reason that caused the route change.";
       }
     }
	 
     identity route-change-reason {
       description
         "Base identify from which all route change
          reasons are derived.";
     }

     identity lower-route-preference {
       base "route-change-reason";
       description
         "This route was installed in the FIB because it had a lower route preference value (and thus a higher route preference) than the route it replaced.";
     }
	 
     identity higher-route-preference {
       base "route-change-reason";
       description
         "This route was uninstalled from the FIB because it had a higher route preference value (and thus a lower route preference) than the route that replaced it.";
     }
	 
# Based on the current data model, which does not appear to define a route metric,
# it is not clear what scenario will result in higher metric being the route change reason.
     identity higher-metric {
       base "route-change-reason";
       description
         "Higher metric ";
     }

     identity resolved-nexthop {
       base "route-change-reason";
       description
         "This route was made active because at least one of its nexthops was resolved.";
     }

     identity unresolved-nexthop {
       base "route-change-reason";
       description
         "This route was made inactive because all of its nexthops are unresolved.";
     }

     typedef route-change-reason-def {
       type identityref {
         base "route-change-reason";
       }
       description
         "Route change reason def.";
     }
``` 
Status (12/4/15): to be addressed in -05 revision
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-12-04. It was migrated from the old Trac wiki on 2023-01-21.*
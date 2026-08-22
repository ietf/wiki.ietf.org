---
title: Information on draft-ietf-idr-node-target-ext-comm Implementations
description: draft-ietf-idr-node-target-ext-comm implement
published: true
date: 2026-08-22T18:54:40.128Z
tags: 
editor: markdown
dateCreated: 2026-08-22T18:35:48.901Z
---

# draft-ietf-idr-node-target-ext-comm 
## Implementations 
| Implementation | Version | configuration example | reference |   
|---|---|---|---|
|  FRR  | 9.0  | yes | FRR  | [FRR-BGP-docs]( https://docs.frrouting.org/en/latest/bgp.html#clicmd-set-extcommunity-nt-EXTCOMMUNITY)
|  Huawei | VRP 9 (? VRP 8) | yes | Jie Dong (VRP 8 and VRP 9 configurations | 
{.dense}


## Implementation of features 
| Features| Section | FRR  | Huawei VRP | Notes |   
|---|---|---|---|--| 
| Node Target Extended Community Transitive (0x01) | 2.0 | yes | yes | send and receive | Node Target Extended Community Non-Transitive (0x41) | 2.0 | yes yes | send and receive | 
| Node Target Ext. Community match BGP ID | 3.0 | yes | yes |   
| Node Target Ext. Community non-match BGP ID | 3.0 | yes | yes | 
(.dense)

## Configuration for Node Target Extended Community 
### FRR configuration 
> set extcommunity nt EXTCOMMUNITY
>
> nt: Stands for Node Target.
> EXTCOMMUNITY: Formatted as either <ASN>:<IPv4-Address> or <IPv4-Address>:<Local-ID>, representing the target BGP Identifier (Router ID).
> 
{.is-info}
#### Rules for configuration: 
-**Target Validation:** When an FRR BGP router receives a path with a Node Target Extended Community, it checks the embedded value.
-**Installation Criteria:** If the community contains the receiving router's own local BGP Identifier, it processes and installs the route.Drop Rule: If the Node Target does not match the local router's BGP Identifier, the route is discarded and not installed into the routing table.

### Huawei configuration 
> route-policy SET-NODE-TARGET permit node 10
>  apply extcommunity node-target 192.168.1.1:100 additive
{.is-info}

## Full configuration examples 
### FRR full configuration example 
Step-by-Step Configuration Example
This scenario shows how to create a route-map that applies a Node Target extended community to matching prefixes and attaches it to an outbound BGP neighbor.
#### step 1 Enter Configuration Mode
**text**

#### 2. Define the Route-Map
> Create a route map (e.g., named SET-NODE-TARGET) and specify the match conditions and the node target action. 
> 
> router(config)# route-map SET-NODE-TARGET permit 10
> router(config-route-map)# match ip address prefix-list MY-PREFIXES
> router(config-route-map)# set extcommunity nt 65000:192.168.1.5
> router(config-route-map)# exit
{.is-info}

#### 3. Apply to BGP router 
 
> router(config)# router bgp 65000
> router(config-router)# neighbor 10.0.0.2 remote-as 65001
> router(config-router)# address-family ipv4 unicast
> router(config-router-af)# neighbor 10.0.0.2 route-map SET-NODE-TARGET out
> router(config-router-af)# neighbor 10.0.0.2 send-community extended
> router(config-router-af)# end
{.is-info}

 ### Huawei Configuration example 
  
 #### 1.Define an extended community list for the node target (using the IP address of the target node)
> ip extcommunity-list number 10 permit node-target ipv4 192.168.1.1
{.is-info}

  
 #### 2. Define a Route-Policy  in the configuration
 
Configure a route-policy to apply or match the node-target attribute
> route-policy SET-NODE-TARGET permit node 10
>   apply extcommunity node-target 192.168.1.1 additive
{.is-info}

 #### 3. Applying the Policy to the BGP peer or address family outbound/inbound direction to filter or direct the updates.

# Apply the route-policy to a BGP peer under the BGP view
bgp 65001
  peer 192.168.2.2 connect-interface LoopBack0
  #
  ipv4-family unicast
    peer 192.168.2.2 enable
    peer 192.168.2.2 route-policy SET-NODE-TARGET export


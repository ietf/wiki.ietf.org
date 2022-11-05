---
title: IETF ACE Working Group Wiki
description: 
published: true
date: 2022-11-05T16:35:19.319Z
tags: 
editor: markdown
dateCreated: 2022-11-05T14:52:59.665Z
---

# Welcome to the ACE Wiki

## ACE Profile Roadmap

In the ACE WG meeting at IETF #99 it was decided to use the Wiki to make a roadmap for the completion of the authorization-related work, in particular the dependencies between the ACE profiles. 

Instructions for ACE profile authors: Please verify/fill in the details of the profile in the table. Further information can be detailed below. NOTE: This does not have to be a complete description of the profile, but an outline of what is contributed and how it relates to other profiles.

|  Profile name | Use case | Role of Client | Role of RS | C-RS protocol | Com. sec. | Dependency | Implementations | Drafts |
|------------|--------------|----------|----------------|------------|---------------|-----------|------------|-----------------|--------|
| coap_dtls | Generic REST access | Any Client | Any RS | CoAP | DTLS | - | [RISE](https://bitbucket.org/marco-tiloca-sics/ace-java), [jimsch](https://github.com/Com-AugustCellars/Oauth-Authz), [SEI-ACE](https://github.com/SEI-TTG/ace-client/wiki) | [^1] |
| coap_oscoap | Generic REST access | Any Client | Any RS | CoAP | OSCOAP| - | [RISE](https://bitbucket.org/marco-tiloca-sics/ace-java), [jimsch](https://github.com/Com-AugustCellars/Oauth-Authz) | [^2] |
| publisher | Publish on topic | Publisher | Broker | CoAP | COSE | [^1], [^2] | - | [^3] |
| subscriber | Subscribe to topic | Subscriber | Broker | CoAP | COSE | [^1], [^2] | - | [^3] |
| mqtt_tls |MQTT access|publisher/subscriber|Broker|MQTT|TLS| | [Nominet](https://github.com/nominetresearch/ace-mqtt-mosquitto) | [^4] |
| coap_ipsec | Generic REST access |Any Client | Any RS | CoAP | IPsec | - | [RISE](https://gitlab.com/ace-ipsec-profile/internet-draft/tree/master/contiki_zoul_ipsec/examples/ace-token-ike) | [^5] |
|...|...|...|...|...|...| ... | ... |...|

## Other ACE profile related drafts

| Name | Use case | Role of Client | Role of RS | C-RS protocol | Com. sec. | Dependency | Implementations | Drafts |
|--------------|----------|----------------|------------|---------------|-----------|------------|-----------------|--------|
| Joining OSCOAP multicast groups  | Authorized access to OSCOAP multicast groups | Joining node | Group manager | CoAP | Same as in ACE profile used |  [^1],[^2]]  | Same as ACE profile | [^6]  | 
| Security for Low-Latency Group Communication  | Authorized access to CoAP multicast | Joining node | Group manager | CoAP | Specified in the document |  ACE-OAuth, symmetric key group communication security  | As part of OpenAIS EU funded project | [^7]  | 
 | ... | ... | ... | ... | ... | ... |  ...  |  ...  | ... | 

## Background info

Appendix C of the ACE Framework lists the requirements on profiles of this framework which is the basis for the comparison here.
https://tools.ietf.org/html/draft-ietf-ace-oauth-authz-07#appendix-C

* Profile identifier
* Communication protocol between client and RS 
* Security protocol between client and RS 
* How the client and the RS mutually authenticate?
* Specify the Content-format of the protocol messages 
* Proof-of-possession protocol(s) and which key types (e.g. symmetric/asymmetric) are supported 
* Introspection support, and if so,
   * Communication protocol between RS and AS 
   * Security protocol between RS and AS   
   * How the RS and the AS mutually authenticate?
* Communication protocol between client and AS 
* Security protocol between client and AS   
* How the client and the AS mutually authenticate?
* Does the profile define other methods of token transport than the /authz-info endpoint?

Additional items to compare:

* Use cases
* Existing implementation
* Dependency on other profiles

[^1]: [CoAP-DTLS profile](https://tools.ietf.org/html/draft-ietf-ace-dtls-authorize)
[^2]: [OSCOAP profile](https://tools.ietf.org/html/draft-seitz-ace-oscoap-profile)
[^3]: [Publish-Subscribe profile](https://tools.ietf.org/html/draft-palombini-ace-coap-pubsub-profile)
[^4]: [MQTT profile](https://tools.ietf.org/html/draft-sengul-ace-mqtt-tls-profile)
[^5]: [IPsec profile](https://tools.ietf.org/html/draft-aragon-ace-ipsec-profile)
[^6]: [Joining OSCOAP multicast groups](https://tools.ietf.org/html/draft-tiloca-ace-oscoap-joining)
[^7]: [Security for Low-Latency Group Communication](https://tools.ietf.org/html/draft-somaraju-ace-multicast)
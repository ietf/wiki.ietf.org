---
title: IETF ACE Working Group Wiki
description: 
published: true
date: 2022-11-05T16:06:17.284Z
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
| coap_dtls | Generic REST access | Any Client | Any RS | CoAP | DTLS | - | [RISE](https://bitbucket.org/marco-tiloca-sics/ace-java), [jimsch](https://github.com/Com-AugustCellars/Oauth-Authz), [SEI-ACE](https://github.com/SEI-TTG/ace-client/wiki) | [ref1][1] |
| coap_oscoap | Generic REST access | Any Client | Any RS | CoAP | OSCOAP| - | [RISE](https://bitbucket.org/marco-tiloca-sics/ace-java), [jimsch](https://github.com/Com-AugustCellars/Oauth-Authz) | [ref2][2] |
| publisher | Publish on topic | Publisher | Broker | CoAP | COSE | [ref1][1], [ref2][2] | - | [ref3][3] |
| subscriber | Subscribe to topic | Subscriber | Broker | CoAP | COSE | [ref1][1], [ref2][2] | - | [ref3][3] |
| mqtt_tls |MQTT access|publisher/subscriber|Broker|MQTT|TLS| | [Nominet](https://github.com/nominetresearch/ace-mqtt-mosquitto) | [#ref4 (4)] |
| coap_ipsec | Generic REST access |Any Client | Any RS | CoAP | IPsec | - | [RISE](https://gitlab.com/ace-ipsec-profile/internet-draft/tree/master/contiki_zoul_ipsec/examples/ace-token-ike) | [ref5][5] |
|...|...|...|...|...|...| ... | ... |...|

## Other ACE profile related drafts

| Name | Use case | Role of Client | Role of RS | C-RS protocol | Com. sec. | Dependency | Implementations | Drafts |
|--------------|----------|----------------|------------|---------------|-----------|------------|-----------------|--------|
| Joining OSCOAP multicast groups  | Authorized access to OSCOAP multicast groups | Joining node | Group manager | CoAP | Same as in ACE profile used |  [#ref1 (1)],[#ref2 (2)]  | Same as ACE profile | [#ref6 (6)]  | 
| Security for Low-Latency Group Communication  | Authorized access to CoAP multicast | Joining node | Group manager | CoAP | Specified in the document |  ACE-OAuth, symmetric key group communication security  | As part of OpenAIS EU funded project | [#ref7 (7)]  | 
 | ... | ... | ... | ... | ... | ... |  ...  |  ...  | ... | 

## References

CoAP-DTLS profile:
[1]: https://tools.ietf.org/html/draft-ietf-ace-dtls-authorize

OSCOAP profile:
[2]: https://tools.ietf.org/html/draft-seitz-ace-oscoap-profile

Publish-Subscribe profile
[3]: https://tools.ietf.org/html/draft-palombini-ace-coap-pubsub-profile

MQTT profile:
[4]: https://tools.ietf.org/html/draft-sengul-ace-mqtt-tls-profile

IPsec profile:
[5]: https://tools.ietf.org/html/draft-aragon-ace-ipsec-profile

Joining OSCOAP multicast groups:
[6]:  https://tools.ietf.org/html/draft-tiloca-ace-oscoap-joining

Security for Low-Latency Group Communication:
[7]: https://tools.ietf.org/html/draft-somaraju-ace-multicast

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




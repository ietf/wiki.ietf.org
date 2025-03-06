---
title: Cool Work
description: Cool new features and other great ideas for RPP
published: true
date: 2025-03-06T09:46:53.682Z
tags: 
editor: markdown
dateCreated: 2025-03-06T09:44:13.137Z
---

# Cool Work

If you have an idea for new features or something else to improve RPP, please add it to the list.


## 1. Simplified and more secure option for transferring objects 

**Problem**: 

1. To transfer an object such as a domain, the client first needs to contact the current registrar to get the transfer token, this is not very user friendly and maybe confusing for "normal" users.

2. Standard transfer tokens are not very secure as they are just opaque strings and usually don;t have any crypto security or validity period features.

**Solution**: Using modern authentication frameworks such as OAuth2.0 it may be possible the create a more user fridnly and interactive option for transfering objects between registrars. The registrant using the gaining registrar web applciation, gets approval from the currently sponsoring registrar, through the use of OAuth2.0. The gaining registrar then updates the data in the registry database by providing an cryptographically secured authentication token, showing the currently sponsoring registrar has approved the transfer.


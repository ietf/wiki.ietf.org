---
title: Hackathon 123
description: 
published: true
date: 2025-07-19T17:20:33.141Z
tags: hackathon
editor: markdown
dateCreated: 2025-07-19T07:31:15.710Z
---

# Hackathon-123

Stuff done dring the hackathon. Do not take it too seriously.
## Test servers

### Afnic test server


There is a test "RPP" server at `rpp.bortzmeyer.fr`. It has some
resemblance to draft-wullink-rpp-core-01 but it is far from
compatible.

Authentication is HTTP Basic. Two registars (login:password): "Foo
Bar:qwerty" and "Bazinga:bazinga". Endpoints starts with
`http://rpp.bortzmeyer.fr:8080/`. Entities are referenced by a number,
their handle (try 1 or 2). Data model and JSON format is currently
specified in JSONschema and validated as such. The format for the
entities is a small subset of JScontact (RFC 9553). Here are some examples with curl:

```
HEADER="Accept: application/rpp+json"

# Simple information about a domain
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" http://rpp.bortzmeyer.fr:8080/domains/nic.example

# Creating a domain
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" --request PUT --user 2:qwerty --data '{"holder": 2}'  http://rpp.bortzmeyer.fr:8080/domains/durand.example

# Simple information about an entity
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" http://rpp.bortzmeyer.fr:8080/entities/2

# Creating an entity
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" --request PUT --data '{"@type": "Card", "name": {"components": [{"kind": "given","value": "Jeanne"},{"kind": "surname","value": "Bon"}]}}'  http://rpp.bortzmeyer.fr:8080/entities/

# Using HEAD 
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" --head http://rpp.bortzmeyer.fr:8080/domains/toto.example

# A DAS
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" http://rpp.bortzmeyer.fr:8080/domains/toto.example/availability

# Updating a domain
curl -i --header HEADER --request PATCH --user 2:qwerty --data '{"change": {"admin": 1}}'  http://rpp.bortzmeyer.fr:8080/domains/durand.example

# Transferring a domain
curl --header $HEADER --request POST --user 3:bazinga http://rpp.bortzmeyer.fr:8080/domains/durand.example/transfer
curl --header $HEADER  --request POST --user 2:qwerty http://rpp.bortzmeyer.fr:8080/domains/durand.example/transfer/approval
```


#### Schema for domains

```
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "Domain name",
    "type": "object",
    "properties": {
	"holder": {
	    "description": "Holder (registrant) handle",
	    "type": "integer"
	}
    },
    "required": ["holder"]
}
```

#### Schema for entities

A small subset of JScontact

```
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "description": "An entity (can be a contact, a registrar, etc). The idea is to stay close from JScontact (RFC 9553)",
    "title": "Entity",
    "type": "object",
    "properties": {
	"@type": {
	    "type": "string",
	    "const": "Card"
	},
	"name": {
	    "type": "object",
	    "properties": {
		"components": {
		    "type": "array",
		    "items": {
			"properties": {
			    "kind": {
				"type": "string",
				"enum": ["given", "surname"]
			    },
			    "value": {
				"type": "string"
			    }			
			}
		    }
		}
	    }	
	}
    },
    "required": ["@type", "name"]
}
``` 

Schema for domain update:

```
{
    "$schema": "https://json-schema.org/draft/2020-12/schema",
    "title": "Update of a domain name",
    "type": "object",
    "properties": {
	"change": {
	    "type": "object",
	    "properties": {
		"tech": {
		    "description": "Technical contact handle",
		    "type": "integer"
		},
		"admin": {
		    "description": "Administrative contact handle",
		    "type": "integer"
		}
	    }
	}
    }
}
```




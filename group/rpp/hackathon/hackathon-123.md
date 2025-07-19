---
title: Hackathon 123
description: 
published: true
date: 2025-07-19T08:44:36.250Z
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
their handle (try 1 or 2). Data model and JSON format is currently not
very specified. Here are some exampls with curl:

```

HEADER="Accept: application/rpp+json"

curl --header $HEADER --header "RPP-Cltrid: $RANDOM" http://rpp.bortzmeyer.fr:8080/domains/nic.example
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" --request PUT --user 2:qwerty --data '{"holder": 2}'  http://rpp.bortzmeyer.fr:8080/domains/durand.example

curl --header $HEADER --header "RPP-Cltrid: $RANDOM" http://rpp.bortzmeyer.fr:8080/entities/2
curl --header $HEADER --header "RPP-Cltrid: $RANDOM" --request PUT --data '{"name": "Jeanne Dupont"}'  http://rpp.bortzmeyer.fr:8080/entities/

curl --header $HEADER --header "RPP-Cltrid: $RANDOM" --head http://rpp.bortzmeyer.fr:8080/domains/toto.example
```
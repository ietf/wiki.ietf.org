ALL=
ALL+=class-1-example.svg
ALL+=class-2-example.svg
ALL+=class-0-exampleA.svg
ALL+=class-0-exampleB.svg
ALL+=atom-conveyer.svg
ALL+=atom-attester.svg
ALL+=atom-connector.svg
ALL+=atom-dependson.svg
ALL+=atom-collection.svg

all: ${ALL}

%.svg: %.txt
	aasvg < $< > $@


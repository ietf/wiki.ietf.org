ALL=
ALL+=class-1-example.svg
ALL+=class-2-example.svg
ALL+=class-0-exampleA.svg
ALL+=class-0-exampleB.svg

all: ${ALL}

class-1-example.svg: class-1-example.txt

class-2-example.svg: class-2-example.txt

%.svg: %.txt
	aasvg < $< > $@


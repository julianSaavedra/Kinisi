test
testGridIsRenderedAndWithColorBlue

	| universe renderer gridInView |
	universe := UniverseObservation new.
	universe turnGridOn.
	universe gridColor: Color blue.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: view basedOn: universe.

	gridInView := view attributeAt: RTGridView name.
	self assert: gridInView color equals: universe gridColor
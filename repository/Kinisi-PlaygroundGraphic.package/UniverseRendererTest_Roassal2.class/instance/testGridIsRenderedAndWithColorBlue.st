test
testGridIsRenderedAndWithColorBlue

	| universe renderer |
	universe := UniverseScenario new.
	universe turnGridOff.
	universe gridColor: Color blue.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	"gridInView := canvas attributeAt: RTGridView name.
	self assert: gridInView color equals: universe gridColor"
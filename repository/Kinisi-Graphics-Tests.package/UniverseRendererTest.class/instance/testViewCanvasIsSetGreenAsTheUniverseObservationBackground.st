test
testViewCanvasIsSetGreenAsTheUniverseObservationBackground

	| universe renderer green |
	green := Color green.
	universe := UniverseObservation new.
	universe background: green.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: view basedOn: universe.

	self assert: view canvas color equals: green
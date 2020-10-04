test
testViewCanvasIsSetGreenAsTheUniverseObservationBackground

	| universe renderer green |
	green := Color green.
	universe := UniverseScenario new.
	universe background: green.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	self assert: canvas canvas color equals: green
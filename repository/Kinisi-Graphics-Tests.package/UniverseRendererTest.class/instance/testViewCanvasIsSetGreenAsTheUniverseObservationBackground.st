test
testViewCanvasIsSetGreenAsTheUniverseObservationBackground

	| green universe renderer |
	green := Color green.
	universeWorkbench background: green.
	universe := universeWorkbench scenario.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	self assert: canvas canvas color equals: green
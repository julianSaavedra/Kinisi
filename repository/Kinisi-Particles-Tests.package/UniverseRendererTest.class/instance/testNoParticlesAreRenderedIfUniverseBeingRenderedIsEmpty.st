test
testNoParticlesAreRenderedIfUniverseBeingRenderedIsEmpty

	| renderer universe |
	universe := universeWorkbench scenario.
	renderer := UniverseRenderer basedOn: universe.

	self assertEmpty: universe particles.
	renderer drawIn: canvas basedOn: universe.

	self assertEmpty: canvas shapes
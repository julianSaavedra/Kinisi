test
testNoParticlesAreRenderedIfUniverseBeingRenderedIsEmpty

	| universe |
	universe := universeWorkbench scenario.
	
	self assertEmpty: universe particles.
	self assertNoErrorIsRaisedWhenRendering: universe
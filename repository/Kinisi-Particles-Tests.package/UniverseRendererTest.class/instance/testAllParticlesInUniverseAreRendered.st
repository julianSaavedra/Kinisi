test
testAllParticlesInUniverseAreRendered

	| universe |
	universeWorkbench
		newParticle;
		newParticle;
		newParticle.
	universe := universeWorkbench scenario.

	self assertNoErrorIsRaisedWhenRendering: universe.

	universe particles do: [ :particle | 
		self assert:
			(canvas shapes anySatisfy: [ :shape | shape model == particle ]) ]
test
testAllParticlesInUniverseAreRendered

	| renderer universe |
	universeWorkbench
		newParticle;
		newParticle;
		newParticle.
	universe := universeWorkbench scenario.
	renderer := UniverseRenderer basedOn: universe.

	renderer drawIn: canvas basedOn: universe.

	universe particles do: [ :particle | 
		self assert: (canvas shapes anySatisfy: [ :shape | shape model == particle ]) ]
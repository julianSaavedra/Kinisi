test
testNameOfParticleInUniverseBeingRenderedIsDisplayed

	| particle renderer labelText universe |
	particle := universeWorkbench newParticle.
	particle particleName: 'ParticleABCDE'.
	universe := universeWorkbench scenario.
	renderer := UniverseRenderer basedOn: universe.

	self
		before: #text:
		in: RSLabel
		execute: [ :receiver :arguments | labelText := arguments first ]
		during: [ renderer drawIn: canvas basedOn: universe ].

	self assert: labelText equals: particle particleName
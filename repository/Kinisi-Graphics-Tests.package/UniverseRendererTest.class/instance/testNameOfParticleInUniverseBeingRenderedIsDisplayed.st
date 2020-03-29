test
testNameOfParticleInUniverseBeingRenderedIsDisplayed

	| universe particle renderer labelText |
	universe := UniverseObservation new.
	particle := universe newParticleObservation.
	particle particleName: 'ParticleABCDE'.
	renderer := UniverseRenderer basedOn: universe.

	self
		before: #text:
		in: TRLabelShape
		execute: [ :receiver :arguments | labelText := arguments first ]
		during: [ renderer drawIn: view basedOn: universe ].

	self assert: labelText equals: particle particleName
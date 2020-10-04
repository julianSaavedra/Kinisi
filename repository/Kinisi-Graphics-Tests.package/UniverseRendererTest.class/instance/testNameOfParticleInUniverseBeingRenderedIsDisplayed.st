test
testNameOfParticleInUniverseBeingRenderedIsDisplayed

	| universe particle renderer labelText |
	universe := UniverseScenario new.
	particle := universe newParticleObservation.
	particle particleName: 'ParticleABCDE'.
	renderer := UniverseRenderer basedOn: universe.

	self
		before: #text:
		in: RSLabel
		execute: [ :receiver :arguments | labelText := arguments first ]
		during: [ renderer drawIn: canvas basedOn: universe ].

	self assert: labelText equals: particle particleName
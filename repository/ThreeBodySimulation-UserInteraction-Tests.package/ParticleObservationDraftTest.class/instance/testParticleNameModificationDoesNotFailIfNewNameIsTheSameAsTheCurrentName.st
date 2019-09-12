tests
testParticleNameModificationDoesNotFailIfNewNameIsTheSameAsTheCurrentName

	| universeDraft aDraft |
	universeDraft := UniverseObservationDraft new.
	aDraft := universeDraft newParticleObservationDraft.
	aDraft particleName: 'ParticleA'.
	self
		shouldnt: [ aDraft particleName: aDraft particleName ]
		raise: SimulationError.
	
	self assert: aDraft particleName equals: 'ParticleA'
tests
testParticleNameCannotBeEmpty

	| draft universeDraft |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	
	self
		should: [ draft particleName: '' ]
		raise: SimulationError
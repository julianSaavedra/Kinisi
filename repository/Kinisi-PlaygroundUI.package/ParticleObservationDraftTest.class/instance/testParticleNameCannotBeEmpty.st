tests
testParticleNameCannotBeEmpty

	| draft universeDraft |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservation.
	
	self
		should: [ draft particleName: '' ]
		raise: SimulationError
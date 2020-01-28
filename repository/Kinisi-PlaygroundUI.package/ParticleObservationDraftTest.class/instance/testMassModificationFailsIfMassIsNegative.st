tests
testMassModificationFailsIfMassIsNegative

	| draft universeDraft |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	
	self
		should: [ draft mass: testResource negativeMass ]
		raise: SimulationError
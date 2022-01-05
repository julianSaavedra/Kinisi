tests
testMassModificationFailsIfMassIsNegative

	| draft universeDraft |
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservation.
	
	self
		should: [ draft mass: testResource negativeMass ]
		raise: SimulationError
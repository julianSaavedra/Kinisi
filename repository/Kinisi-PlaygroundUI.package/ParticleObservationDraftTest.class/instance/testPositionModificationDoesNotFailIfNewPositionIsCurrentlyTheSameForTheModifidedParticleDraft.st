tests
testPositionModificationDoesNotFailIfNewPositionIsCurrentlyTheSameForTheModifidedParticleDraft

	| universeDraft particleDraft currentPosition |
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservation.
	currentPosition := particleDraft position.	

	self
		shouldnt: [ particleDraft position: currentPosition ]
		raise: SimulationError
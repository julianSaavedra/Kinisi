test - review - to removed
testDraftPositionUpdateFailsIfNewPositionIsAlreadyOccupiedInUniverseObservationAndCurrentPositionIsPreserved

	| universeObservation draft preUpdateDraftPosition existingParticleObservation |
	universeObservation := self universeObservationWithOneObservation.
	draft := universeObservation newParticleObservation.
	preUpdateDraftPosition := draft position.
	
	existingParticleObservation := universeObservation particles first.	
	self
		should: [draft position: existingParticleObservation position]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are in the same point'.
	self assert: draft position equals: preUpdateDraftPosition
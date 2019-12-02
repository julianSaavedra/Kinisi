tests
testDraftPositionUpdateFailsIfTargetPositionIsAlreadyOccupiedInUniverseObservation

	| universeObservation draft preUpdateDraftPosition particleState |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft. 
	draft position: physicsResource oneMeterInAllComponentsVector; save.

	draft := universeObservation newParticleObservationDraft.
	preUpdateDraftPosition := draft position.
	
	particleState := universeObservation universeState physicalStates first.
	self assert: particleState position equals: physicsResource oneMeterInAllComponentsVector.
	
	self
		should: [draft position: physicsResource oneMeterInAllComponentsVector]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Two or more particles are in the same point'.

	self assert: draft position equals: preUpdateDraftPosition
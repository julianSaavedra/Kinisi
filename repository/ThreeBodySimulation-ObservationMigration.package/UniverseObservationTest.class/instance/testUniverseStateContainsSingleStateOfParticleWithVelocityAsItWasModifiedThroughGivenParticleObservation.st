tests
testUniverseStateContainsSingleStateOfParticleWithVelocityAsItWasModifiedThroughGivenParticleObservation

	| universeObservation targetVelocity draft physicalState particleObservation |
	targetVelocity := physicsResource velocityVectorWithAllComponentsWithAmount: 1.
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft save.
	
	particleObservation := universeObservation particleObservations first.
	self deny: particleObservation velocity equals: targetVelocity.
	particleObservation velocity: targetVelocity.
	self assert: particleObservation velocity equals: targetVelocity.

	physicalState := universeObservation universeState physicalStates first.	
	self assert: physicalState velocity equals: targetVelocity

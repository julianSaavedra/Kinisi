tests
testUniverseStateContainsSingleStateOfParticleWithAccelerationAsItWasModifiedThroughGivenParticleObservation

	| universeObservation targetAcceleration draft physicalState particleObservation |
	targetAcceleration := physicsResource accelerationVectorWithAllComponentsWithAmount: 1.
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft save.
	
	particleObservation := universeObservation particleObservations first.
	self deny: particleObservation acceleration equals: targetAcceleration.
	particleObservation acceleration: targetAcceleration.
	self assert: particleObservation acceleration equals: targetAcceleration.

	physicalState := universeObservation universeState physicalStates first.	
	self assert: physicalState acceleration equals: targetAcceleration

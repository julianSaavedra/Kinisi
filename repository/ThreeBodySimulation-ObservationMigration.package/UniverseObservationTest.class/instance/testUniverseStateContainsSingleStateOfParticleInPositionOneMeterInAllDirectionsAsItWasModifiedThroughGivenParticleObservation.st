tests
testUniverseStateContainsSingleStateOfParticleInPositionOneMeterInAllDirectionsAsItWasModifiedThroughGivenParticleObservation

	| universeObservation targetPosition draft physicalState particleObservation |
	targetPosition := physicsResource oneMeterInAllComponentsVector.
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft save.
	
	particleObservation := universeObservation particleObservations first.
	self deny: particleObservation position equals: targetPosition.
	particleObservation position: targetPosition.
	self assert: particleObservation position equals: targetPosition.

	physicalState := universeObservation universeState physicalStates first.	
	self assert: physicalState position equals: targetPosition

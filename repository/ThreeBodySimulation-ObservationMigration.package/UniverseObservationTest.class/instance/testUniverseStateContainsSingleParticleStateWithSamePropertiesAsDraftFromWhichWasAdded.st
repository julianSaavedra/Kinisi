tests
testUniverseStateContainsSingleParticleStateWithSamePropertiesAsDraftFromWhichWasAdded

	| universeObservation draft physicalState |
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft. 

	draft
		particleName: 'ParticleA';
		mass: physicsResource twoKilograms;
		position: physicsResource oneMeterInAllComponentsVector;
		velocity: (physicsResource velocityVectorWithAllComponentsWithAmount: 2);
		acceleration: (physicsResource accelerationVectorWithAllComponentsWithAmount: 3);
		save.

	physicalState := universeObservation universeState physicalStates first.	
	self assert: physicalState particleName equals: draft particleName.
	self assert: physicalState mass equals: draft mass.
	self assert: physicalState position equals: draft position.
	self assert: physicalState velocity equals: draft velocity.
	self assert: physicalState acceleration equals: draft acceleration
tests
testParticleInUniverseIsUpdatedGivenAPhysicalStateWithTheParticleName

	| universe universeDraft particleADraft physicalState particle |
	universeDraft := UniverseObservationDraft new.
	particleADraft := universeDraft newParticleObservationDraft.
	particleADraft
		particleName: #ParticleA;
		color: Color blue;
		mass: testResource twoKilograms;
		position: (testResource vectorWithXOnlyWithMeters: 1);
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 2);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 3).
	universe := ObservableUniverse from: universeDraft.
		
	physicalState := PhysicalState forParticleNamed: #ParticleA withMass: testResource oneKilogram position: testResource nullPosition velocity: testResource nullVelocity andAcceleration: testResource nullAcceleration.
	
	universe updateParticleWith: physicalState.

	particle := universe particles first.
		
	self assert: particle name equals: physicalState particleName.
	self assert: particle mass equals: physicalState mass.
	self assert: particle position equals: physicalState position.
	self assert: particle velocity equals: physicalState velocity.
	self assert: particle acceleration equals: physicalState acceleration
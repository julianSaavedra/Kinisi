tests
testParticleInUniverseUpdatedFailsIfGivenPhysicalStateDoesNotMatchAParticleByItsName

	| universe universeDraft particleADraft physicalState |
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
		
	physicalState := PhysicalState forParticleNamed: #ParticleB withMass: testResource oneKilogram position: testResource nullPosition velocity: testResource nullVelocity andAcceleration: testResource nullAcceleration.
	
	self should: [ universe updateParticleWith: physicalState ] raise: PhysicsModelError
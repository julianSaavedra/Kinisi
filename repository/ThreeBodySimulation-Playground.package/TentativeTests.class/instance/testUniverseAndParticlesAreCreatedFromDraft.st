tests
testUniverseAndParticlesAreCreatedFromDraft

	| universeDraft particleDraftA testResource particleDraftB expectedUniverse |
	testResource := PhysicsTestResource soleInstance.
	universeDraft := UniverseObservationDraft new.
	particleDraftA := universeDraft newParticleObservationDraft.
	particleDraftA
		particleName: #ParticleA;
		position: testResource nullPosition;
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 2).

	particleDraftB := universeDraft newParticleObservationDraft.
	particleDraftB
		particleName: #ParticleB;
		position: testResource oneMeterInAllComponentsVector;
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 3);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 4).
		
	
	self assert: universeDraft asUniverse equals: expectedUniverse
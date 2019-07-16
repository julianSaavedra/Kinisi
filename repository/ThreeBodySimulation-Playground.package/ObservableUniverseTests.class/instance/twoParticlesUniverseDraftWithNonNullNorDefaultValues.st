test - to be removed
twoParticlesUniverseDraftWithNonNullNorDefaultValues

	| universeDraft particleADraft particleBDraft |
	universeDraft := UniverseObservationDraft new.
	particleADraft := universeDraft newParticleObservationDraft.
	particleADraft
		particleName: #ParticleA;
		color: Color blue;
		mass: testResource twoKilograms;
		position: (testResource vectorWithXOnlyWithMeters: 1);
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 2);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 3).
		
	particleBDraft := universeDraft newParticleObservationDraft.
	particleBDraft
		particleName: #ParticleB;
		color: Color red;
		mass: (testResource oneKilogram);
		position: (testResource vectorWithXOnlyWithMeters: 4);
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 5);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 6).
		
	^universeDraft
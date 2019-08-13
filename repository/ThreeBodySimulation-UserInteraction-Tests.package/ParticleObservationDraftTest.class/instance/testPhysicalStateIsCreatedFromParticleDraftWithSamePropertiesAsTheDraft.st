tests
testPhysicalStateIsCreatedFromParticleDraftWithSamePropertiesAsTheDraft

	| particleName draftMass draftPosition draftVelocity draftAcceleration blueDraft expectedPhysicalState |
	particleName := 'ParticleABC'.
	draftMass := testResource twoKilograms.
	draftPosition := testResource oneMeterInXVector.
	draftVelocity := testResource velocityVectorWithXComponentOnlyWithAmount: 2.
	draftAcceleration := testResource accelerationVectorWithXComponentOnlyWithAmount: 3. 
	blueDraft := UniverseObservationDraft new newParticleObservationDraft.
	blueDraft
		particleName: particleName;
		color: Color blue;
		mass: draftMass;
		position: draftPosition;
		velocity: draftVelocity;
		acceleration: draftAcceleration.
	
	expectedPhysicalState := PhysicalState
		forParticleNamed: particleName
		withMass: draftMass
		position: draftPosition
		velocity: draftVelocity 
		andAcceleration: draftAcceleration.
	
	self assert: blueDraft asPhysicalState equals: expectedPhysicalState
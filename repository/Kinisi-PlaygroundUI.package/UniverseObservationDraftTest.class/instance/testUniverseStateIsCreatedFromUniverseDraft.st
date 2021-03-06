tests
testUniverseStateIsCreatedFromUniverseDraft

	| testResource universeDraft blueDraft redDraft expectedPhysicalStates expectedUniverseState |
	testResource := PhysicsTestResource new.
	universeDraft := UniverseObservationDraft new.
	blueDraft := universeDraft newParticleObservation.
	blueDraft
		particleName: 'Blue';
		color: Color blue;
		mass: testResource twoKilograms;
		position: testResource oneMeterInXVector;
		velocity: (testResource velocityVectorWithXComponentOnlyWithAmount: 2);
		acceleration: (testResource accelerationVectorWithXComponentOnlyWithAmount: 3).
	redDraft := universeDraft newParticleObservation.
	redDraft
		particleName: 'Red';
		color: Color red;
		mass: testResource oneKilogram;
		position: testResource oneMeterInYVector;
		velocity: (testResource velocityVectorWithXComponentOnlyWithAmount: 4);
		acceleration: (testResource accelerationVectorWithXComponentOnlyWithAmount: 5).
	
	expectedPhysicalStates := Array with: blueDraft asParticleState with: redDraft asParticleState.
	expectedUniverseState := ObservableUniverseState withAll: expectedPhysicalStates.
	
	self assert: universeDraft asUniverseState equals: expectedUniverseState

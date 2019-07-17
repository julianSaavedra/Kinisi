tests
testParticleIsCreatedFromDraft

	| draft universeDraft particle testResource |
	testResource := PhysicsTestResource new.
	universeDraft := UniverseObservationDraft new.
	draft := universeDraft newParticleObservationDraft.
	draft
		particleName: #ParticleA;
		color: Color blue;
		mass: testResource twoKilograms;
		position: testResource oneMeterInAllComponentsVector;
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 2);
		acceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 3).
	
	"particle := draft particleFromCurrentData.

	self assert: particle name equals: draft particleName.
	self assert: particle color equals: draft color.
	self assert: particle mass equals: draft mass.
	self assert: particle position equals: draft position.
	self assert: particle velocity equals: draft velocity.
	self assert: particle acceleration equals: draft acceleration"
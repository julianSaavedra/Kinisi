data examples
blueTwoKgOneMeterInEachDirectionParticleDraft

	| universeDraft draft testResource |

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
	^ draft
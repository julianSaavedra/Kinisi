example - data
earthAndSunInitialUniverseDraft

	| testResource unitProvider universeDraft earthDraft sunDraft |
	unitProvider := UnitProvider soleInstance.
	testResource := PhysicsTestResource new.
	universeDraft := UniverseObservationDraft new.
	earthDraft := universeDraft newParticleObservationDraft.

	earthDraft
		particleName: 'Earth';
		position: (MeasureVector y: 150e6 with: unitProvider kilometer);
		mass: (unitProvider kilogram with: 5.9722e24);
		velocity: (MeasureVector x: 30000 with: unitProvider standardVelocityUnit);
		acceleration: testResource nullAcceleration;
		color: Color lightBlue.

	sunDraft := universeDraft newParticleObservationDraft.
	sunDraft
		particleName: 'Sun';
		position: testResource nullPosition;
		mass: (unitProvider kilogram with: 2e30);
		velocity: testResource nullVelocity;
		acceleration: testResource nullAcceleration;
		color: Color yellow.
	
	^universeDraft
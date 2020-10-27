example - data
earthAndSunInitialUniverseObservation

	| testResource unitProvider universe earth sun |
	unitProvider := UnitProvider soleInstance.
	testResource := PhysicsTestResource new.
	universe := UniverseScenario new.
	
	earth := universe newParticleObservation.
	earth
		particleName: 'Earth';
		position: (MeasureVector y: 150e6 with: unitProvider kilometer);
		mass: (unitProvider kilogram with: 5.9722e24);
		velocity: (MeasureVector x: 30000 with: unitProvider standardVelocityUnit);
		acceleration: testResource nullAcceleration;
		color: Color lightBlue.

	sun := universe newParticleObservation.
	sun
		particleName: 'Sun';
		position: testResource nullPosition;
		mass: (unitProvider kilogram with: 2e30);
		velocity: testResource nullVelocity;
		acceleration: testResource nullAcceleration;
		color: Color yellow.
	
	^universe
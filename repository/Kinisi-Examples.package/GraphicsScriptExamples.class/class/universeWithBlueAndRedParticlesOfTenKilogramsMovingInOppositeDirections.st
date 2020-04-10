data -  scenarios
universeWithBlueAndRedParticlesOfTenKilogramsMovingInOppositeDirections

	| universeDraft unitProvider blueDraft redDraft oneMeterInXPosition oneMeterPerSecondVelocity tenKilograms |
	unitProvider := UnitProvider soleInstance.
	
	oneMeterInXPosition := MeasureVector x: 1 with: unitProvider meter.
	oneMeterPerSecondVelocity := MeasureVector y: 1 with: unitProvider standardVelocityUnit.
	tenKilograms := unitProvider kilogram with: 10.
	
	universeDraft := UniverseObservation new.
	blueDraft := universeDraft newParticleObservation.
	blueDraft
		color: Color blue;
		mass: tenKilograms;
		position: oneMeterInXPosition;
		velocity: oneMeterPerSecondVelocity.
	redDraft := universeDraft newParticleObservation.
	redDraft
		color: Color red;
		mass: tenKilograms;
		position: oneMeterInXPosition * -1;
		velocity: oneMeterPerSecondVelocity * -1.
		
	^universeDraft
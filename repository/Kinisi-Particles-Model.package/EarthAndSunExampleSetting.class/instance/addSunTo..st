private
addSunTo: workbench

	| sun |
	sun := workbench newParticle.
	sun
		particleName: 'Sun';
		position: resource nullPosition;
		mass: (unitProvider kilogram with: 2000000000000000000000000000000);
		velocity: resource nullVelocity;
		acceleration: resource nullAcceleration;
		color: Color yellow.
	workbench addGravitationalFieldCausedBy: sun
private
addSunTo: workbench

	| sun |
	sun := workbench newParticle.
	sun
		particleName: 'Sun';
		position: resource nullPosition;
		mass: (unitProvider kilogram with: 1.989e30);
		velocity: resource nullVelocity;
		acceleration: resource nullAcceleration;
		color: Color yellow.
	workbench addGravitationalFieldCausedBy: sun
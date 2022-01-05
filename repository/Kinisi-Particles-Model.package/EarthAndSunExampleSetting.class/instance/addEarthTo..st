private
addEarthTo: workbench

	| earth |
	earth := workbench newParticle.
	earth
		particleName: 'Earth';
		position: (MeasureVector y: 150e6 with: unitProvider kilometer);
		mass: (unitProvider kilogram with: 5.9722e24);
		velocity: (MeasureVector x: 30000 with: unitProvider standardVelocityUnit);
		acceleration: resource nullAcceleration;
		color: Color lightBlue
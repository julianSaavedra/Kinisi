initialization
initializeMass

	| unitProvider units |
	unitProvider := self unitProvider.
	units := {unitProvider gram. unitProvider kilogram. unitProvider metricTon}.
	mass := self instantiate: ScalarMeasurePresenter on: particle mass.
	mass
		label: 'Mass';
		units: units;
		changeModelWith: [:newMass | particle mass: newMass ]
initalize
initializeDefaultValues

	| unitProvider |
	unitProvider := UnitProvider soleInstance.
	color := Color red.
	mass := unitProvider kilogram with: 1.
	velocity := MeasureVector nullWith: unitProvider standardVelocityUnit.
	acceleration := MeasureVector nullWith: unitProvider standardAccelerationUnit
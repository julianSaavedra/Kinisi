private - description
velocityPresenterDescription

	| unitProvider description velocityUnitsArray |
	unitProvider := UnitProvider soleInstance.
	velocityUnitsArray := Array with: unitProvider standardVelocityUnit.
	description := MeasurePresenterDescription
		labeled: 'Velocity'
		with: particle velocity
		changingModelWith: [:newVelocity | particle velocity: newVelocity ]
		and: velocityUnitsArray.
	^ description
description
velocityPresenterDescription

	| unitProvider description velocityUnitsArray |
	unitProvider := UnitProvider soleInstance.
	velocityUnitsArray := Array with: unitProvider standardVelocityUnit.
	description := MeasurePresenterDescription
		labeled: 'Velocity'
		with: particleDraft velocity
		changingModelWith: [:newVelocity | particleDraft velocity: newVelocity ]
		and: velocityUnitsArray.
	^ description
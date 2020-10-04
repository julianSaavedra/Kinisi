private - description
accelerationPresenterDescription

	| unitProvider description accelerationUnitsArray |
	unitProvider := UnitProvider soleInstance.
	accelerationUnitsArray := Array with: unitProvider standardAccelerationUnit.
	description := MeasurePresenterDescription
		labeled: 'Acceleration'
		with: particle acceleration
		changingModelWith: [:newAcceleration | particle acceleration: newAcceleration ]
		and: accelerationUnitsArray.
	^ description
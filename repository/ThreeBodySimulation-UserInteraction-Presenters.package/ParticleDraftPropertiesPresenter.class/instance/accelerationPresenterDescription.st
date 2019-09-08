description
accelerationPresenterDescription

	| unitProvider description accelerationUnitsArray |
	unitProvider := UnitProvider soleInstance.
	accelerationUnitsArray := Array with: unitProvider standardAccelerationUnit.
	description := MeasurePresenterDescription
		labeled: 'Acceleration'
		with: particleDraft acceleration
		changingModelWith: [:newAcceleration | particleDraft acceleration: newAcceleration ]
		and: accelerationUnitsArray.
	^ description
description
positionPresenterDescription

	| unitProvider description positionUnitsArray |
	unitProvider := UnitProvider soleInstance.
	positionUnitsArray := Array
		with: unitProvider milimeter
		with: unitProvider meter
		with: unitProvider kilometer.
	description := MeasurePresenterDescription
		labeled: 'Position'
		with: particleDraft position
		changingModelWith: [:newPosition | particleDraft position: newPosition ]
		and: positionUnitsArray.
	^ description
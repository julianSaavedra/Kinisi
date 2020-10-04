private - description
positionPresenterDescription

	| unitProvider description positionUnitsArray |
	unitProvider := UnitProvider soleInstance.
	positionUnitsArray := Array
		with: unitProvider milimeter
		with: unitProvider meter
		with: unitProvider kilometer.
	description := MeasurePresenterDescription
		labeled: 'Position'
		with: particle position
		changingModelWith: [:newPosition | particle position: newPosition ]
		and: positionUnitsArray.
	^ description
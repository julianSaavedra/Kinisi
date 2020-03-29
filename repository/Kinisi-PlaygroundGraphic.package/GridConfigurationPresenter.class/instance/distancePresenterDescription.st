initialization
distancePresenterDescription

	| unitProvider description distanceUnitsArray |
	unitProvider := UnitProvider soleInstance.
	distanceUnitsArray :=  Array
		with: unitProvider milimeter
		with: unitProvider meter
		with: unitProvider kilometer.
	description := MeasurePresenterDescription
		labeled: 'Distance'
		with: gridConfiguration distance
		changingModelWith: [:newDistance | gridConfiguration distance: newDistance ]
		and: distanceUnitsArray.
	^description
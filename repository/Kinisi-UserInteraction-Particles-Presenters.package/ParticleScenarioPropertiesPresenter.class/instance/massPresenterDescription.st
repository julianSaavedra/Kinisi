private - description
massPresenterDescription

	| unitProvider description massUnitsArray |
	unitProvider := UnitProvider soleInstance.
	massUnitsArray := Array
		with: unitProvider gram
		with: unitProvider kilogram
		with: unitProvider metricTon.
	description := MeasurePresenterDescription
		labeled: 'Mass'
		with: particle mass
		changingModelWith: [:newMass | particle mass: newMass ]
		and: massUnitsArray.
	^ description
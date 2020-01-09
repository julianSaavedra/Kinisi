description
massPresenterDescription

	| unitProvider description massUnitsArray |
	unitProvider := UnitProvider soleInstance.
	massUnitsArray := Array
		with: unitProvider gram
		with: unitProvider kilogram
		with: unitProvider metricTon.
	description := MeasurePresenterDescription
		labeled: 'Mass'
		with: particleDraft mass
		changingModelWith: [:newMass | particleDraft mass: newMass ]
		and: massUnitsArray.
	^ description
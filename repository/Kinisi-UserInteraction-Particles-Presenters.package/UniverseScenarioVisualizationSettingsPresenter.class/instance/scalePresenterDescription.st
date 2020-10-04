private
scalePresenterDescription

	| unitProvider scaleUnitsArray |
	unitProvider := UnitProvider soleInstance.
	scaleUnitsArray :=  Array
		with: unitProvider milimeter
		with: unitProvider meter
		with: unitProvider kilometer.
		
	^MeasurePresenterDescription
		labeled: 'Scale'
		with: workbench scenario scale
		changingModelWith: [:targetScale | workbench scale: targetScale ]
		and: scaleUnitsArray
	
initialization
scalePresenterDescription

	| unitProvider scaleUnitsArray |
	unitProvider := UnitProvider soleInstance.
	scaleUnitsArray :=  Array
		with: unitProvider milimeter
		with: unitProvider meter
		with: unitProvider kilometer.
		
	^MeasurePresenterDescription
		labeled: 'Scale'
		with: universeObservation scenario scale
		changingModelWith: [:targetScale | universeObservation scale: targetScale ]
		and: scaleUnitsArray
	
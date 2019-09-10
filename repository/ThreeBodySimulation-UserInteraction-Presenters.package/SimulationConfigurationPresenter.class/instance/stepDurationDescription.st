model access
stepDurationDescription

	| unitProvider description timeUnitsArray |
	unitProvider := UnitProvider soleInstance.
	timeUnitsArray := Array
		with: unitProvider second
		with: unitProvider minute
		with: unitProvider hour
		with: unitProvider day.
	description := MeasurePresenterDescription
		labeled: 'Step Duration'
		with: simulationConfiguration stepDuration
		changingModelWith: [:newDuration | simulationConfiguration stepDuration: newDuration ]
		and: timeUnitsArray.
	^ description
model access
totalDurationDescription

	| unitProvider description timeUnitsArray |
	unitProvider := UnitProvider soleInstance.
	timeUnitsArray := Array
		with: unitProvider second
		with: unitProvider minute
		with: unitProvider hour
		with: unitProvider day.
	description := MeasurePresenterDescription
		labeled: 'Total Duration'
		with: simulationConfiguration totalDuration
		changingModelWith: [:newDuration | simulationConfiguration totalDuration: newDuration ]
		and: timeUnitsArray.
	^ description
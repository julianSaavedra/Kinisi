asserting
assertUniquenessOfTimes: simulationStepCollection
 
	| timeSet |
	timeSet := simulationStepCollection collect: [:step | step key ] into: Set new.
	timeSet size = simulationStepCollection size ifFalse: [ SimulationError signal: 'Time must be unique for each step.' ]
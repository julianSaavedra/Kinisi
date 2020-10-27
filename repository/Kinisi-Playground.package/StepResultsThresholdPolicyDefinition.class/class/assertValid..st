validation
assertValid: stepResultsThreshold
 
	stepResultsThreshold negative ifTrue: [ SimulationError signal: 'Threshold cannot be negative.' ]
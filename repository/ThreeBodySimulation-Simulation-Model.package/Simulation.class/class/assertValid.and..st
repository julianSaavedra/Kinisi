validation
assertValid: simulationDuration and: stepDuration

	simulationDuration negative ifTrue: [ SimulationError signal: 'Total Duration cannot be negative.' ].
	stepDuration isZero ifTrue: [ SimulationError signal: 'Step Duration cannot be zero.' ].
	stepDuration negative ifTrue: [ SimulationError signal: 'Step Duration cannot be negative.' ]
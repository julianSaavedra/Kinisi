validation
assertValid: simulationDuration and: stepDuration

	simulationDuration negative ifTrue: [ SimulationError signal: 'Total duration cannot be negative.' ].
	stepDuration isZero ifTrue: [ SimulationError signal: 'Step duration cannot be zero.' ].
	stepDuration negative ifTrue: [ SimulationError signal: 'Step duration cannot be negative.' ].
	stepDuration > simulationDuration ifTrue: [ SimulationError signal: 'Step duration cannot be greater than the Total duration.' ].
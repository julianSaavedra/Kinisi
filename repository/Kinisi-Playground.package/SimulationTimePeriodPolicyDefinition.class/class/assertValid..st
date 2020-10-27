validation
assertValid: simulationTimePeriod

	simulationTimePeriod negative ifTrue: [SimulationError signal: 'Time period cannot be negative']
validation
assertTimeIsNonNegative: time

	time negative ifTrue: [ SimulationError signal: 'Time of a simulation step result cannot be negative' ]
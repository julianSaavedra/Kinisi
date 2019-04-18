validatio
assertValidDuration: aTimeMeasure andStepDuration: anotherTimeMeasure

	aTimeMeasure negative ifTrue: [ SimulationError signal: 'Total Duration cannot be negative.' ].
	anotherTimeMeasure isZero ifTrue: [ SimulationError signal: 'Step Duration cannot be zero.' ].
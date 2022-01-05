validation
assertValidDistance: newMeasure

	newMeasure negative
		ifTrue: [ ExperimentError signal: 'Grid measure cannot be negative.' ]
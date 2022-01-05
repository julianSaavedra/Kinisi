private
assertValidScale: targetMeasure

	(targetMeasure negative or: [ targetMeasure isZero ])
		ifTrue: [ ExperimentError signal: 'Scale must be positive']
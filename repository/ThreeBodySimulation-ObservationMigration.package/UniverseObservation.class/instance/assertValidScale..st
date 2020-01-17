as yet unclassified
assertValidScale: targetMeasure

	(targetMeasure negative or: [ targetMeasure isZero ])
		ifTrue: [ UserInterfaceError signal: 'Scale must be positive']
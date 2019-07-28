validation
assertValidMeasure: newMeasure

	newMeasure negative
		ifTrue: [ UserInterfaceError signal: 'Grid measure cannot be negative.' ]
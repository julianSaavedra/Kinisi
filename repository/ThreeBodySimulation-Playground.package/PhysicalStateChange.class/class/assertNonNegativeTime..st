asserting
assertNonNegativeTime: timeMeasure

	timeMeasure negative ifTrue: [
		SimulationError signal: 'Time cannot be negative for a physical change.' ]
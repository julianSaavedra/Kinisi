asserting
assertNonNegativeTime: timeMeasure

	timeMeasure negative ifTrue: [
		PhysicsModelError signal: 'Time cannot be negative for a physical change.' ]
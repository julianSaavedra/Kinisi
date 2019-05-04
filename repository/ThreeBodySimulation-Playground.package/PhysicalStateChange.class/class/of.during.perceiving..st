instance creation
of: aPhysicalState during: timeMeasure perceiving: aForce

	self assertNonNegativeTime: timeMeasure.
	^ self new
		initializeOf: aPhysicalState
		during: timeMeasure
		perceiving: aForce
instance creation
of: aPhysicalState causedBy: aForce during: timeMeasure

	self assertNonNegativeTime: timeMeasure.
	^self new
		initializeOf: aPhysicalState
		causedBy: aForce
		during: timeMeasure
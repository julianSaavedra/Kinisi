instance creation
during: aTimeMeasure stepsOf: anotherTimeMeasure

	self assertValidDuration: aTimeMeasure andStepDuration: anotherTimeMeasure.
	^ self new initializeDuring: aTimeMeasure stepsOf: anotherTimeMeasure
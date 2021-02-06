instance creation
at: time with: result

	self assertTimeIsNonNegative: time.
	^self new initializeAt: time with: result
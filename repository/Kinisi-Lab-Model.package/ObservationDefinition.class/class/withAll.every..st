instance creation
withAll: interfaceDefinitions every: period

	self assertValid: period.
	^self new initializeWithAll: interfaceDefinitions every: period
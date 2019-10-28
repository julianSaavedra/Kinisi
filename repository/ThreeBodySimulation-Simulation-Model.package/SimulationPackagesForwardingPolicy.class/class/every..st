instance creation
every: amountOfPackages

	self assertValid: amountOfPackages.
	^self new initializeEvery: amountOfPackages
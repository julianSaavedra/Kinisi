instance creation
forwardTo: consumer every: amountOfPackages

	self assertValid: amountOfPackages.
	^self new initializeForwardTo: consumer every: amountOfPackages

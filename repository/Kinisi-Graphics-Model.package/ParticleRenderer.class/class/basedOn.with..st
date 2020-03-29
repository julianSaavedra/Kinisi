instance creation
basedOn: particle with: size

	self assertValid: size.
	^self new initializeBasedOn: particle with: size 
instance creation
named: aName with: interfaceSpec

	self assertValid: aName.
	^self new initializeNamed: aName with: interfaceSpec
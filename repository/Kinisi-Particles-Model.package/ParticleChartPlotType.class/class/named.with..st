instance creation
named: aName with: visitingBlock

	self assertValid: aName.
	^self new initializeNamed: aName with: visitingBlock
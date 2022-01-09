private
named: aName with: selectorBlock

	self assertValidName: aName.
	^self new initializeNamed: aName with: selectorBlock
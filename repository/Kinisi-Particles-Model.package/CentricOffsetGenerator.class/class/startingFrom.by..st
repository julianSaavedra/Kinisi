instance creation
startingFrom: number by: incrementor

	self assertValid: incrementor.
	^self new initializeStartingFrom: number by: incrementor
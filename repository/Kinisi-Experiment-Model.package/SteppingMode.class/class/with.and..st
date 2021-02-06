instance creation
with: delta and: endingMode
 
	self assertValid: delta for: endingMode.
	^self new initializeWith: delta and: endingMode
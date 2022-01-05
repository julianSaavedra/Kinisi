instance creation
with: prefix

	self assertValid: prefix.
	^self new initializeWith: prefix
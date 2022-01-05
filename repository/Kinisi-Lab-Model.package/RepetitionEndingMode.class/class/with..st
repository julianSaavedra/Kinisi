instance creation
with: numberOfTimes
 
	self assertValid: numberOfTimes.
	^self new initializeWith: numberOfTimes
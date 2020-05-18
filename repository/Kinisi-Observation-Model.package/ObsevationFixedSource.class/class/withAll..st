instance creation
withAll: data
 
	self assertValid: data.
	^self new initializeWithAll: data
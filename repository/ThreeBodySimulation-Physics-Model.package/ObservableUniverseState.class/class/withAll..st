instance creation
withAll: partilcleStates

	self assertParticleNamesAreUniqueIn: partilcleStates.
	self assertParticlePositionsAreUniqueIn: partilcleStates.
	^self new initializeWithAll: partilcleStates
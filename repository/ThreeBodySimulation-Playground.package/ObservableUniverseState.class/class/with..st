instance creation
with: physicalStates

	self assertParticleNamesAreUniqueIn: physicalStates.
	self assertParticlePositionsAreUniqueIn: physicalStates.
	^self new initializeWith: physicalStates
instance creation
with: particlesCollection

	self assertParticleNamesAreUniqueIn: particlesCollection.
	self assertParticlePositionsAreUniqueIn: particlesCollection.
	^self new initializeWith: particlesCollection
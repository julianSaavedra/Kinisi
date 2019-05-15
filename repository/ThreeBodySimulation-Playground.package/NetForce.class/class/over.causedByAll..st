instance creation
over: aParticle causedByAll: particles

	self assert: aParticle isNotIncludedWithin: particles.
	^self new initializeOver: aParticle causedByAll: particles
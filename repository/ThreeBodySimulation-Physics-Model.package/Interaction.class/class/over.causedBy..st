instance creation
over: aParticle causedBy: anotherParticle

	self assert: aParticle isNotTheSameAs: anotherParticle.
	^self new initializeOver: aParticle causedBy: anotherParticle
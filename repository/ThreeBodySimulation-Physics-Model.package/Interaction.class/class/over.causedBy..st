instance creation
over: aParticle causedBy: anotherParticle

	self assert: aParticle isNotTheSameAs: anotherParticle.
	self assert: aParticle isNotInTheTheSamePositionAs: anotherParticle.
	^self new initializeOver: aParticle causedBy: anotherParticle
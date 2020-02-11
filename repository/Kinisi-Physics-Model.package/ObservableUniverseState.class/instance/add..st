setting
add: particle

	| newParticles | 
	newParticles := self particles asOrderedCollection.
	newParticles add: particle.
	^self class withAll: newParticles
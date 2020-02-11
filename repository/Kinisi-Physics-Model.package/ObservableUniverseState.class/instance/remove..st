setting
remove: particle
 
	| newParticles |
	newParticles := self particles asOrderedCollection.
	newParticles remove: particle ifAbsent: [PhysicsModelError signal: 'Particle does not exist in universe (at least, with given state)'].
	^self class withAll: newParticles
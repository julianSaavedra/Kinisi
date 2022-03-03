calculation
forceOver: particle causedBy: otherParticles

	| causingParticles |
	causingParticles := self causingParticlesAmong: otherParticles.
	causingParticles remove: particle ifAbsent: [  ].
	^causingParticles
		sum: [:causingParticle | self forceCausedBy: causingParticle over: particle ]
		ifEmpty: [ self nullForce ]
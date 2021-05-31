calculation
forceOver: particle causedBy: otherParticles

	| causingParticles nullForce |
	causingParticles := self causingParticlesAmong: otherParticles.
	causingParticles remove: particle ifAbsent: [  ].
	nullForce := MeasureVector nullWith: UnitProvider soleInstance newton.
	^causingParticles inject: nullForce into: [:totalForce :causingParticle |
			self forceCausedBy: causingParticle over: particle ]
API
withEachParticleAndNetForceIn: universe do: block

	| allParticlesInUniverse |
	allParticlesInUniverse := universe particles.
	allParticlesInUniverse do: [ :particle | 
			| netForce |
			netForce := self netForceOver: particle causedBy: (allParticlesInUniverse copyWithout: particle).
			block value: particle value: netForce ]
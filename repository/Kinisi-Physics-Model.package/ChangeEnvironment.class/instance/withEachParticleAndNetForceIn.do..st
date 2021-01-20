API
withEachParticleAndNetForceIn: universe do: block

	universe particles do: [:particle |
		| netForce |
		netForce := self netForceOver: particle.
		block value: particle value: netForce ]
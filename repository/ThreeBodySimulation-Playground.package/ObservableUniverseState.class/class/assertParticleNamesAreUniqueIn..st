asserting
assertParticleNamesAreUniqueIn: particleCollection

	(particleCollection collect: [:particle | particle name]) asSet size = particleCollection size
		ifFalse: [ PhysicsModelError signal: 'Two or more particles are named equally' ]
as yet unclassified
assertParticlePositionsAreUniqueIn: particleCollection

	(particleCollection collect: [:particle | particle position]) asSet size = particleCollection size
		ifFalse: [ PhysicsModelError signal: 'Two or more particles are in the same point' ]
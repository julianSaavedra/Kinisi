calculation
currentAccelerationOf: particle from: particlesUniverse

	| componentsForParticle |
	componentsForParticle := components select: [:component | component particle particleName = particle particleName].
	^componentsForParticle
		inject: PhysicsTestResource new nullAcceleration
		into: [:total :specification | total + (specification accelerationFor: particle in: particlesUniverse) ]
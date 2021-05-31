configuring
addConstantAcceleration: targetAcceleration for: targetParticle

	| particleComponents |
	particleComponents := componentsPerParticle at: targetParticle particleName ifAbsentPut: [ OrderedCollection new ].
	particleComponents add: (ConstantAccelerationComponent on: targetAcceleration)
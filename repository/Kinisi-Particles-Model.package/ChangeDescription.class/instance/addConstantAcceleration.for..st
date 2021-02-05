configuring
addConstantAcceleration: targetAcceleration for: targetParticle

	| particleComponents |
	particleComponents := descriptionPerParticle at: targetParticle particleName ifAbsentPut: [ OrderedCollection new ].
	particleComponents add: (ConstantAccelerationComponent on: targetAcceleration)
configuring
addConstantForce: targetForce for: targetParticle

	| particleComponents |
	particleComponents := descriptionPerParticle at: targetParticle particleName ifAbsentPut: [ OrderedCollection new].
	particleComponents add: (ConstantForceComponent on: targetForce)
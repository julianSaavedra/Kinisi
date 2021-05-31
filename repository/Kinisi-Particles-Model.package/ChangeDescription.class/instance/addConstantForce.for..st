configuring
addConstantForce: targetForce for: targetParticle

	| particleComponents |
	particleComponents := componentsPerParticle at: targetParticle particleName ifAbsentPut: [ OrderedCollection new].
	particleComponents add: (ConstantForceComponent on: targetForce)
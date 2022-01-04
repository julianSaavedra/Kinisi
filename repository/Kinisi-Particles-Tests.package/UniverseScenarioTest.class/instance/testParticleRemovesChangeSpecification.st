test - change components
testParticleRemovesChangeSpecification

	| particle |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	particle addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest'.
	self denyEmpty: particle changeSpecifications.
	
	particle remove: particle changeSpecifications first.

	self assertEmpty: particle changeSpecifications
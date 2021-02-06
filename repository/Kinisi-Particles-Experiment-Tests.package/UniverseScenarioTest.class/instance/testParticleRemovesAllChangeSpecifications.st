test - change components
testParticleRemovesAllChangeSpecifications

	| particle |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	particle addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest'.
	particle addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest2'.
	particle addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest3'.	
	self denyEmpty: particle changeSpecifications.
	
	particle removeAllChangeComponents.

	self assertEmpty: particle changeSpecifications
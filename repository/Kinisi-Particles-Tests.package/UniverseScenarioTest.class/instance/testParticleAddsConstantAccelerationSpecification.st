test - change components
testParticleAddsConstantAccelerationSpecification

	| particle acceleration specificationName addedSpecification |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	
	acceleration := self notNullAcceleration.
	specificationName := 'ConstantAccelerationForTest'.
	particle addConstantAcceleration: acceleration named: specificationName.

	addedSpecification := particle changeSpecifications first.
	self assert: addedSpecification name equals: specificationName.
	self assert: addedSpecification acceleration equals: acceleration
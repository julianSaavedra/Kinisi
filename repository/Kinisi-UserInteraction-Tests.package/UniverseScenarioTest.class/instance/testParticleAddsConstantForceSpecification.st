test - change components
testParticleAddsConstantForceSpecification

	| particle force specificationName addedSpecification |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	
	force := resource newtonVectorWith: #(1 0 0).
	specificationName := 'ConstantForceForTest'.
	particle addConstantForce: force named: specificationName.

	addedSpecification := particle changeSpecifications first.
	self assert: addedSpecification name equals: specificationName.
	self assert: addedSpecification force equals: force
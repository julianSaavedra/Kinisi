test - change components
testParticleAddsForceClockwisePerpendicularToVelocitySpecification

	| particle specificationName addedSpecification module |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	
	module := resource newtonWith: 2.
	specificationName := 'ForcePerpendicular_Clockwise_ForTest'.
	particle addForceClockwisePerpendicularToVelocityWith: module named: specificationName.

	addedSpecification := particle changeSpecifications first.
	self assert: addedSpecification name equals: specificationName.
	self assert: addedSpecification module equals: module.
	self assert: addedSpecification orientation equals: ForceOrientationSpecification clockwise
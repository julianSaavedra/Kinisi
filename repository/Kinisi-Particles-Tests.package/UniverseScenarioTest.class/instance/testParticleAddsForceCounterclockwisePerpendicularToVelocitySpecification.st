test - change components
testParticleAddsForceCounterclockwisePerpendicularToVelocitySpecification

	| particle specificationName addedSpecification module |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	
	module := resource newtonWith: 2.
	specificationName := 'ForcePerpendicular_Counterlockwise_ForTest'.
	particle addForceCounterclockwisePerpendicularToVelocityWith: module named: specificationName.

	addedSpecification := particle changeSpecifications first.
	self assert: addedSpecification name equals: specificationName.
	self assert: addedSpecification module equals: module.
	self assert: addedSpecification orientation equals: ForceOrientationSpecification counterclockwise
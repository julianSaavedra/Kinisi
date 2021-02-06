test - change components
testParticleReplaceComponentWithNewOneAfterAmend

	| particle newSpecification specificationToBeRemoved |
	particle := workbench newParticle.
	
	particle addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest'.
	
	specificationToBeRemoved := particle changeSpecifications first.
	newSpecification := specificationToBeRemoved name: 'NewSpecification'.
	
	particle replace: specificationToBeRemoved with: newSpecification.
	
	self assert: (particle changeSpecifications includes: newSpecification).
	self deny: (particle changeSpecifications includes: specificationToBeRemoved)
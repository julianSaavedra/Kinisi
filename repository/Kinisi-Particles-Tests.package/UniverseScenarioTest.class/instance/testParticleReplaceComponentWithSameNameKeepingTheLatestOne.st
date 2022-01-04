test - change components
testParticleReplaceComponentWithSameNameKeepingTheLatestOne

	| particle componentName accelerationToBeReplaced newAcceleration includedSpecification |
	particle := workbench newParticle.
	self assertEmpty: particle changeSpecifications.
	
	accelerationToBeReplaced := self notNullAcceleration.
	componentName := 'ConstantAccelerationForTest'.
	particle addConstantAcceleration: accelerationToBeReplaced named: componentName.
	self denyEmpty: particle changeSpecifications.
	
	newAcceleration := accelerationToBeReplaced * 2.
	self deny: newAcceleration equals: accelerationToBeReplaced.
	particle addConstantAcceleration: newAcceleration named: componentName.
	
	self assert: particle changeSpecifications size equals: 1.
	includedSpecification := particle changeSpecifications first.
	self assert: includedSpecification name equals: componentName.
	self assert: includedSpecification acceleration equals: newAcceleration
test - change components
testParticleFailsToReplaceComponentThatItDoesNotBelongToParticle

	| particle newSpecification specificationToBeRemoved includedSpecification |
	particle := workbench newParticle.
	particle addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest'.
	
	includedSpecification := particle changeSpecifications first.
	specificationToBeRemoved := includedSpecification name: 'SpecificationToBeReplaced'.
	newSpecification := includedSpecification name: 'NewSpecification'.
	
	self
		should: [ particle replace: specificationToBeRemoved with: newSpecification ]
		raise: ExperimentError
		whoseDescriptionIncludes: 'Specification that is being removed does not exist in particle'
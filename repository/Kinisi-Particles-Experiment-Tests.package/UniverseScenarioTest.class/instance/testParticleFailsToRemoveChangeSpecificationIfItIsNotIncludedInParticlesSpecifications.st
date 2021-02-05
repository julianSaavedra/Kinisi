test - change components
testParticleFailsToRemoveChangeSpecificationIfItIsNotIncludedInParticlesSpecifications

	| particleWithSpecifications particleWithoutSpecifications |
	particleWithSpecifications := workbench newParticle.
	particleWithSpecifications addConstantAcceleration: self notNullAcceleration named: 'ConstantAccelerationForTest'.
	
	particleWithoutSpecifications := workbench newParticle.
	self assertEmpty: particleWithoutSpecifications changeSpecifications. 
	self
		should: [ particleWithoutSpecifications remove: particleWithSpecifications changeSpecifications first ]
		raise: UserInterfaceError
		whoseDescriptionIncludes: 'Specification that is being removed does not exist in particle'
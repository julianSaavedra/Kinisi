tests
testPropertyNameCannotBeEmpty

	self
		should: [ParticleProperty named: '' with: [:particle | ]]
		raise: Error
		whoseDescriptionIncludes: 'Property name cannot be empty'
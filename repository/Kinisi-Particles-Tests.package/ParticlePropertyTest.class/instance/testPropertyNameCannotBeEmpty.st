tests
testPropertyNameCannotBeEmpty

	self
		should: [ParticleProperty named: '' with: [:particle | ]]
		raise: Error
		whoseDescriptionIncludes: 'Property empty cannot be empty'
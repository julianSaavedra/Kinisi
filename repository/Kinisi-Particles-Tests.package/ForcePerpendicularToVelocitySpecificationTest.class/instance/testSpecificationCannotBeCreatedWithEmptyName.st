tests
testSpecificationCannotBeCreatedWithEmptyName

	self
		should: [ ForcePerpendicularToVelocitySpecification named: '' with: self twoNewtons with: ForceOrientationSpecification clockwise ]
		raise: Error
		whoseDescriptionIncludes: 'Specification name cannot be empty'
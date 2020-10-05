tests
testGridCannotHaveNegativeSize

	self
		should: [GridRenderer with: Color red and: -10]
		raise: RenderingError
		whoseDescriptionIncludes: 'Grid size cannot be negative'
		description: 'Test did not failed as expected'

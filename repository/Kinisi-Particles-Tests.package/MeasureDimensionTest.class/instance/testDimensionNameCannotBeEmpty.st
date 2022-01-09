tests
testDimensionNameCannotBeEmpty

	self
		should: [MeasureDimension named: '' with: [:measure | ]]
		raise: Error
		whoseDescriptionIncludes: 'Dimension name cannot be empty'
tests
testOffsetIncrementorNeedsToBePositive

	{ -0.1. 0} do: [:invalidIncrementor |
		self
			should: [ CentricOffsetGenerator startingFrom: 0 by: invalidIncrementor ]
			raise: Error
			whoseDescriptionIncludes: 'Incrementor needs to be strictly positive'
			description: 'Test did not failed as expected'
		]
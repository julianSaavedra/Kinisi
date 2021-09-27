asserting
should: block raise: errorClass whoseDescriptionIncludes: expectedErrorMessage

	self
		should: block
		raise: errorClass
		whoseDescriptionIncludes: expectedErrorMessage
		description: 'Test did not fail as expected'
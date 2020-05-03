asserting
should: aBlock raise: errorClass whoseDescriptionIncludes: errorMessage

	self
		should: aBlock
		raise: errorClass
		whoseDescriptionIncludes: errorMessage
		description: 'Test did not fail as expected'
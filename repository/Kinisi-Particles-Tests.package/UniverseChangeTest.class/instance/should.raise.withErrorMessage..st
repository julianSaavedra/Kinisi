asserting
should: block raise: error withErrorMessage: errorMessage

	self
		should: block
		raise: error
		whoseDescriptionIncludes: errorMessage
		description: 'Test did not failed as expected'
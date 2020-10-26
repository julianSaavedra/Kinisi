tests
should: block raise: exceptionalEvent whoseDescriptionIncludes: errorMessage

	self
		should: block
		raise: exceptionalEvent
		whoseDescriptionIncludes: errorMessage
		description: 'Test did not fail as expected.'
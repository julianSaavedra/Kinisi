asserting
should: block raise: anExceptionalEvent whoseDescriptionIncludes: errorMessage

	self
		should: block
		raise: anExceptionalEvent
		whoseDescriptionIncludes: errorMessage
		description: 'Test did not fail as expected.'
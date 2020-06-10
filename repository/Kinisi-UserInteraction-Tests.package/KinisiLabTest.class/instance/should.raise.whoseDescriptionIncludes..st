experiment
should: block raise: anExceptionalEvent whoseDescriptionIncludes: substring

	self
		should: block
		raise: anExceptionalEvent
		whoseDescriptionIncludes: substring
		description: 'Test did not fail as expected.'
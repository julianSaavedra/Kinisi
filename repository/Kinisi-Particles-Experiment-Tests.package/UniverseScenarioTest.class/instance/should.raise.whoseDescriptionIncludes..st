asserting
should: block raise: exceptionalEvent whoseDescriptionIncludes: message

	self
		should: block
		raise: exceptionalEvent
		whoseDescriptionIncludes: message
		description: 'Test did not fail as expected' 
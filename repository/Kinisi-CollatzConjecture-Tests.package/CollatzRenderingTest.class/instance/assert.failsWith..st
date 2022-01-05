asserting
assert: expectedToFailBlock failsWith: expectedErrorDespcription

	self
		should: expectedToFailBlock
		raise: RenderingError
		whoseDescriptionIncludes: expectedErrorDespcription
		description: 'Test did not failed as expected'.
	self addExpectedFailureMessageToCanvasWith: expectedErrorDespcription
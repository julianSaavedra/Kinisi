asserting
assertTimeoutWhen: timeoutBlock

	self
		should: timeoutBlock
		raise: Error
		whoseDescriptionIncludes: 'Observation is not processing new samples (Timeout)'
		description: 'Test did not fail with timeout as expected'
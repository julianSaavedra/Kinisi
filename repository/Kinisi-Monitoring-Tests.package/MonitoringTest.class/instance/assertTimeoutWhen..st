asserting
assertTimeoutWhen: timeoutBlock

	self
		should: timeoutBlock
		raise: Error
		whoseDescriptionIncludes: 'Monitor is not processing new data (Timeout)'
		description: 'Test did not fail with timeout as expected'
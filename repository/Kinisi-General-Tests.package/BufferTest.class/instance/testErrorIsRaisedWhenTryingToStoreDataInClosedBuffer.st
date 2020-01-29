tests
testErrorIsRaisedWhenTryingToStoreDataInClosedBuffer

	| buffer |
	buffer := Buffer new.
	buffer close.
	self
		should: [ buffer store: 'a' ]
		raise: Error
		whoseDescriptionIncludes: 'Buffer is closed'
		description: 'Fail'
tests
testErrorIsRaisedWhenTryingToStoreDataInClosedBuffer

	| buffer |
	buffer := Buffer new.
	buffer close.
	self
		should: [ buffer store: 'a' ]
		raise:BufferError
		whoseDescriptionIncludes: 'Buffer is closed'
		description: 'Test did not failed as expected'
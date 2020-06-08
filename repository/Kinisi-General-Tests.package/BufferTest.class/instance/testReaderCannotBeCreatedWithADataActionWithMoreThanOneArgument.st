tests
testReaderCannotBeCreatedWithADataActionWithMoreThanOneArgument

	self
		should: [ BufferPluggableReader on: Buffer new whenReading: [:data :notExpectedArgument | ]]
		raise: BufferError
		whoseDescriptionIncludes: 'Reader''s Data action must have zero or one argument'
		description: 'Test did not failed as expected'
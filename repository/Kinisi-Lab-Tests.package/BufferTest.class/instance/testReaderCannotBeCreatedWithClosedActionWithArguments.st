tests
testReaderCannotBeCreatedWithClosedActionWithArguments

	self
		should: [ BufferPluggableReader on: Buffer new whenReading: [:data | ] ifBufferNotStartedDo: [ ] ifEmpty: [  ] ifClosed: [:notExpectedArgument | ] ]
		raise: BufferError
		whoseDescriptionIncludes: 'Reader''s Closed action must have zero arguments'
		description: 'Test did not failed as expected'
tests
testReaderCannotBeCreatedWithEmptydActionWithArguments

	self
		should: [ BufferPluggableReader on: Buffer new whenReading: [:data | ] ifBufferNotStartedDo: [ ] ifEmpty: [:notExpectedArgument | ] ifClosed: [  ] ]
		raise: BufferError
		whoseDescriptionIncludes: 'Reader''s Empty action must have zero arguments'
		description: 'Test did not failed as expected'
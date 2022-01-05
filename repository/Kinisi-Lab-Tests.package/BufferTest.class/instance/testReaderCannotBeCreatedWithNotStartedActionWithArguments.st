tests
testReaderCannotBeCreatedWithNotStartedActionWithArguments

	self
		should: [ BufferPluggableReader on: Buffer new whenReading: [:data | ] ifBufferNotStartedDo: [:notExpectedArgument | ] ifEmpty: [  ] ifClosed: [  ] ]
		raise: BufferError
		whoseDescriptionIncludes: 'Reader''s Not Started action must have zero arguments'
		description: 'Test did not failed as expected'
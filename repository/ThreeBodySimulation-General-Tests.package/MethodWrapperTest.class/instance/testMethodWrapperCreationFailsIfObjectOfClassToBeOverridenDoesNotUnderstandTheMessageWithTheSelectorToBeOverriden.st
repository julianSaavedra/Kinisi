tests
testMethodWrapperCreationFailsIfObjectOfClassToBeOverridenDoesNotUnderstandTheMessageWithTheSelectorToBeOverriden

	self
		should: [ MethodWrapper on: #notImplementedMethod in: MethodWrapperTest with: [ :receiver :arg |  ] ]
		raise: Error
		withExceptionDo: [ :exception |
			self
				assert: exception messageText
				equals: 'Message is not implemented in MethodWrapperTest hierarchy.' ]
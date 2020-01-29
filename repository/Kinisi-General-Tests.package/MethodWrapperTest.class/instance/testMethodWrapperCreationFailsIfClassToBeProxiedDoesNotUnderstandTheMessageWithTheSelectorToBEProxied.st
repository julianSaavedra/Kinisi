tests
testMethodWrapperCreationFailsIfClassToBeProxiedDoesNotUnderstandTheMessageWithTheSelectorToBEProxied

	self
		should: [ MethodWrapper before: #notImplementedMethod in: MethodWrapperTest execute: [:receiver :arg |  ] ]
		raise: Error
		withExceptionDo: [ :exception |
			self
				assert: exception messageText
				equals: 'Message is not implemented in MethodWrapperTest hierarchy.' ]
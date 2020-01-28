tests
testMethodWrapperExecutionBlockHasReceiverAndMessageArgumentsAsArgumentsWhenMethodIsProxied

	| object firstArgument secondArgument passedReceiver passedArguments |	
	object := MethodWrapperTest new.
	firstArgument := #AAA.
	secondArgument := #BBB.
	
	MethodWrapper
		before: #methodWith:and:
		in: MethodWrapperTest
		execute: [:receiver :arguments |
			passedReceiver := receiver.
			passedArguments := arguments ]
		during: [ object methodWith: firstArgument and: secondArgument].

	self assert: passedReceiver equals: object.
	self assert: passedArguments first equals: firstArgument.
	self assert: passedArguments second equals: secondArgument
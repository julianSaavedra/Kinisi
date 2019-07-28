tests
testMethodWrapperExecutionBlockHasReceiverAndMessageArgumentsAsArguments

	| object methodWasSent firstArgument secondArgument |	
	object := MethodWrapperTest new.
	firstArgument := #AAA.
	secondArgument := #BBB.
	methodWasSent := false.
	
	MethodWrapper
		on: #methodWith:and:
		in: MethodWrapperTest
		with: [:receiver :arguments |
			methodWasSent := true.
			self assert: receiver equals: object.
			self assert: arguments first equals: firstArgument.
			self assert: arguments second equals: secondArgument ]
		during: [ object methodWith: firstArgument and: secondArgument].

	self assert: methodWasSent
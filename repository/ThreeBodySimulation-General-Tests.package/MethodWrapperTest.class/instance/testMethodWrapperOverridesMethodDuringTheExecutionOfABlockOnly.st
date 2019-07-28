tests
testMethodWrapperOverridesMethodDuringTheExecutionOfABlockOnly

	| object methodWasSent |
	methodWasSent := false.
	object := MethodWrapperTest new.
	self assert: object methodReturningEight equals: 8.

	MethodWrapper
		on: #methodReturningEight
		in: MethodWrapperTest
		with: [:receiver :arguments | 0 ]
		during: [
			methodWasSent := true.
			self
				assert: object methodReturningEight
				equals: 0].

	self assert: methodWasSent.
	self assert: object methodReturningEight equals: 8
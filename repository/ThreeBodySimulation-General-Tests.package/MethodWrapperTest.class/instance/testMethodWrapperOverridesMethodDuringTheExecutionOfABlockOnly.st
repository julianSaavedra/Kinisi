tests
testMethodWrapperOverridesMethodDuringTheExecutionOfABlockOnly

	| object result |
	object := MethodWrapperTest new.
	self assert: object methodReturningEight equals: 8.

	MethodWrapper
		overriding: #methodReturningEight
		in: MethodWrapperTest
		with: [:receiver :arguments | 0 ]
		during: [ result := object methodReturningEight ].

	self assert: result equals: 0.
	self assert: object methodReturningEight equals: 8
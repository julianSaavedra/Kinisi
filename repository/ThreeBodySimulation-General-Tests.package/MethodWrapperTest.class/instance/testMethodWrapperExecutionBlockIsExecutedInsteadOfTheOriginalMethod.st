tests
testMethodWrapperExecutionBlockIsExecutedInsteadOfTheOriginalMethod

	| object wrapper result |
	object := MethodWrapperTest new.
	self assert: object methodReturningEight equals: 8.

	wrapper := MethodWrapper
		on: #methodReturningEight
		in: MethodWrapperTest
		with: [:receiver :arguments | 0 ].
	wrapper install.

	[ result := object methodReturningEight]
		ensure: [ wrapper uninstall ].

	self assert: result equals: 0.
	self assert: object methodReturningEight equals: 8
tests
testMethodWrapperExecutionBlockIsExecutedInsteadOfTheOriginalMethod

	| object wrapper |
	object := MethodWrapperTest new.
	self assert: object methodReturningEight equals: 8.

	wrapper := MethodWrapper
		on: #methodReturningEight
		in: MethodWrapperTest
		with: [:receiver :arguments | 0 ].
	wrapper install.

	[ self assert: object methodReturningEight equals: 0 ]
		ensure: [ wrapper uninstall ].

	self assert: object methodReturningEight equals: 8
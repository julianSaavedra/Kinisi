tests
testMethodWrapperReturnsTheWrappedMethodPragmasWhenWrappedMethodHasTwoPragmas

	| object wrappedMethod wrapper pragmasDuringWrapping |
	object := MethodWrapperTest new.
	wrappedMethod := object class methodDictionary at: #methodWithTwoPragmas.
	self assert: wrappedMethod pragmas size equals: 2.

	wrapper := MethodWrapper
		before: #methodWithTwoPragmas
		in: MethodWrapperTest
		execute: [:receiver :arguments | ].
	wrapper install.
	[ pragmasDuringWrapping := (object class methodDictionary at: #methodWithTwoPragmas) pragmas]
		ensure: [ wrapper uninstall ].

	self assert: wrappedMethod pragmas equals: pragmasDuringWrapping
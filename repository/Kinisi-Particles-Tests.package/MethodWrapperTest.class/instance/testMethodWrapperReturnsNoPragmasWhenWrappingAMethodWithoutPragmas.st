tests
testMethodWrapperReturnsNoPragmasWhenWrappingAMethodWithoutPragmas

	| object wrappedMethod wrapper pragmasDuringWrapping |
	object := MethodWrapperTest new.
	wrappedMethod := object class methodDictionary at: #methodWithNoPragmas.
	self assert: wrappedMethod pragmas isEmpty.

	wrapper := MethodWrapper
		before: #methodWithNoPragmas
		in: MethodWrapperTest
		execute: [:receiver :arguments | ].
	wrapper install.
	[ pragmasDuringWrapping := (object class methodDictionary at: #methodWithNoPragmas) pragmas]
		ensure: [ wrapper uninstall ].

	self assert: pragmasDuringWrapping isEmpty
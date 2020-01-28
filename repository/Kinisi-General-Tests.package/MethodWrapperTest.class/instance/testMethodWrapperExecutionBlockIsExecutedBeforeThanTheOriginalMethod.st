tests
testMethodWrapperExecutionBlockIsExecutedBeforeThanTheOriginalMethod

	| object resultWhenBlockWasExecuted wrapper |
	object := MethodWrapperTest new.
	object resetCount.
	self assert: object currentCountResult equals: 0.

	wrapper := MethodWrapper
		before: #countOne
		in: MethodWrapperTest
		execute: [:receiver :arguments | resultWhenBlockWasExecuted := object currentCountResult ].
	wrapper install.

	[ object countOne ] ensure: [ wrapper uninstall ].

	self assert: resultWhenBlockWasExecuted equals: 0.
	self assert: object currentCountResult equals: 1
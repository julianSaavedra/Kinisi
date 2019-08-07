tests
testMethodWrapperExecutesABlockFirstAndThenTheRealMethodDuringTheExecutionOfABlockOnly

	| object resultWhenBlockWasExecuted |
	object := MethodWrapperTest new.
	object resetCount.
	self assert: object currentCountResult equals: 0.

	MethodWrapper
		before: #countOne
		in: MethodWrapperTest
		execute: [:receiver :arguments | resultWhenBlockWasExecuted := object currentCountResult ]
		during: [ object countOne ].

	self assert: resultWhenBlockWasExecuted equals: 0.
	self assert: object currentCountResult equals: 1
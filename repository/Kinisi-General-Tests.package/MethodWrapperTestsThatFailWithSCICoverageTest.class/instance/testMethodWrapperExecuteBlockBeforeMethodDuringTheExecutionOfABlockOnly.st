tests
testMethodWrapperExecuteBlockBeforeMethodDuringTheExecutionOfABlockOnly

	| object |
	object := MethodWrapperTest new.
	object resetCount.
	self assert: object currentCountResult equals: 0.

	MethodWrapper
		before: #methodReturningEight
		in: MethodWrapperTest
		execute: [:receiver :arguments | receiver countOne ]
		during: [ object methodReturningEight ].

	self assert: object currentCountResult equals: 1.
	object methodReturningEight.
	self assert: object currentCountResult equals: 1
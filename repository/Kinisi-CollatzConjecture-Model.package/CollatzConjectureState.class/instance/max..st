comparing
max: anotherState

	^self < anotherState
		ifTrue: [anotherState]
		ifFalse: [ self ]
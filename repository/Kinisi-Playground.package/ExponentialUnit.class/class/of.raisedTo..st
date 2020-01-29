instance creation
of: aUnit raisedTo: anInteger

	^(anInteger isZero)
	ifTrue: [ NullUnit new ]
	ifFalse: [
		(anInteger = 1)
			ifTrue: [ aUnit ]
			ifFalse: [ self new initializeOf: aUnit raisedTo: anInteger ]
		]
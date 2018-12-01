instance creation
of: aUnit raisedTo: anInteger

	^(anInteger isZero)
	ifTrue: [ NullUnit new ]
	ifFalse: [self new initializeOf: aUnit raisedTo: anInteger]
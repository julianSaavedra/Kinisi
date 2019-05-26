accessing
finalState

	^ deltaTime isZero
		ifTrue: [ originalState copy ]
		ifFalse: [ self calculatedFinalResult ]
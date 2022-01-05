collecting
collect: observation

	| currentState |
	lastObservation := observation.
	currentState := observation value.
	currentMaximun := currentMaximun max: currentState.
	currentMinimun := currentMinimun min: currentState.
	currentState even
		ifTrue: [ currentEvens := currentEvens + 1 ]
		ifFalse: [ currentOdds := currentOdds + 1 ]
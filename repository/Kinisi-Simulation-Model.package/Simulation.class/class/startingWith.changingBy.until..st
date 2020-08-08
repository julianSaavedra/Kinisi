deprecated
startingWith: initialState changingBy: changeAction until: endCondition

	^self 
		startingWith: initialState
		changingBy: changeAction
		over: 1
		until: endCondition
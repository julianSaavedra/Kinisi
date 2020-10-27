validation
assertValid: stateBasedCondition
 
	stateBasedCondition numArgs = 1
		ifFalse: [ Error signal: 'End codition based on state must have one argument' ]
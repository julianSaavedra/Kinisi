assertion
assertValid: targetCondition
 
	targetCondition numArgs = 1 ifFalse: [ Error signal: 'End codition based on state must have one argument' ]
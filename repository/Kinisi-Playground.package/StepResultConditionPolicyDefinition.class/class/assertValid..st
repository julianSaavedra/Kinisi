validation
assertValid: forwardingCondition
 
	forwardingCondition numArgs > 1 ifTrue: [ SimulationError signal: 'Condition can have zero or one argument.' ]
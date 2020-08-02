instance creation
basedOn: stateBasedCondition

	self assertValid: stateBasedCondition.
	^self new initializeBasedOn: stateBasedCondition
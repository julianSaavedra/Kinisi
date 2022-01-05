configuration
repeatUntilStateSatisfies: conditionBlock steppingBy: delta

	| endingMode condition |
	condition := PluggableStateEndingCondition with: conditionBlock.
	endingMode := StateConditionEndingMode with: condition.
	self stepWith: delta and: endingMode
configuration
repeatUntilStateSatisfies: condition steppingBy: delta

	| endingMode |
	endingMode := StateConditionEndingMode with: condition.
	steppingMode := SteppingMode with: delta and: endingMode
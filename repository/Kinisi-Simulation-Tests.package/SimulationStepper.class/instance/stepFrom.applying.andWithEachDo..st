stepping
stepFrom: initialState applying: change andWithEachDo: twoArgumentsBlock

	| stepIndex stepState |
	stepIndex := delta * 0.
	stepState := initialState.
	[ twoArgumentsBlock value: stepIndex value: stepState.
	endCondition shouldEndAt: stepIndex having: stepState ]
		whileFalse: [
			stepIndex := stepIndex + delta.
			stepState := change applyOn: stepState during: delta ]
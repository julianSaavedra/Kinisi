tests
testStateChangesToItsHalfWhenItIsEven

	| state finalState |
	state := CollatzConjectureState with: 8.

	finalState := CollatzConjectureStateChange new finalStateFrom: state.
	
	self assert: finalState equals: (CollatzConjectureState with: 4)
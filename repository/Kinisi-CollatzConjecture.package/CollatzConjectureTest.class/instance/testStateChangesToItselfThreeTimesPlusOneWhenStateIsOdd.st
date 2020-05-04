tests
testStateChangesToItselfThreeTimesPlusOneWhenStateIsOdd

	| state finalState |
	state := CollatzConjectureState with: 5.

	finalState := CollatzConjectureStateChange new finalStateFrom: state.
	
	self assert: finalState equals: (CollatzConjectureState with: 16)
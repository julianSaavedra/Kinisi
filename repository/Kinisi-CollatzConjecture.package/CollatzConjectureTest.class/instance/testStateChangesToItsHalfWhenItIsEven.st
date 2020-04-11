tests
testStateChangesToItsHalfWhenItIsEven

	| state finalState |
	state := CollatzConjectureState with: 8.

	finalState := CollatzConjectureStateChange new finalStateFrom: state.
	
	self assert: finalState number equals: 4
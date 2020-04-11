tests
testInitiaStateIsNotUpdatedIfInvalidStateIsGiven

	| workbench preUpdateIntialState |
	workbench := CollatzConjectureUserWorbench default.
	preUpdateIntialState := workbench initialState.
	
	self
		should: [ (CollatzConjectureInitialStateModifier with: -2) modify: workbench ]
	 	raise: Error
		whoseDescriptionIncludes: 'Collatz Conjecture state must be a strictly positive integer'
		description: 'Test did not fail as expected'.
	
	self assert: workbench initialState equals: preUpdateIntialState
tests
testInitiaStateIsNotUpdatedIfInvalidStateIsGiven

	| workbench preUpdateIntialState |
	workbench := CollatzConjectureUserWorkbench default.
	preUpdateIntialState := workbench initialState.
	
	self
		should: [ (CollatzConjectureInitialStateModifier with: -2) modify: workbench ]
	 	raise: CollatzConjectureError
		whoseDescriptionIncludes: 'Collatz Conjecture state must be a strictly positive integer'
		description: 'Test did not fail as expected'.
	
	self assert: workbench initialState equals: preUpdateIntialState
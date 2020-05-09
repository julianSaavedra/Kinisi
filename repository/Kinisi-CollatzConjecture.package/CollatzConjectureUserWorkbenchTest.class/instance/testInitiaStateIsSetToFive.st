tests
testInitiaStateIsSetToFive

	| workbench five stateAtFive |
	workbench := CollatzConjectureUserWorkbench default.
	five := 5.
	stateAtFive := CollatzConjectureState with: five.
	self deny: workbench initialState equals: stateAtFive.
	
	(CollatzConjectureInitialStateModifier with: five) modify: workbench.
	
	self assert: workbench initialState equals: stateAtFive
tests
testInitiaStateIsSetToFive

	| workbench five stateAtFive |
	workbench := CollatzConjectureScenarioWorkbench default.
	five := 5.
	stateAtFive := CollatzConjectureState with: five.
	self deny: workbench initialState equals: stateAtFive.
	
	(CollatzConjectureInitialStateModifier with: five) modify: workbench.
	
	self
		assert: workbench experimentDefinition initialState
		equals: stateAtFive
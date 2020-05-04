tests
testInitiaStateIsSetToFive

	| workbench five |
	workbench := CollatzConjectureUserWorkbench default.
	five := 5.
	self deny: workbench initialState number equals: five.
	
	(CollatzConjectureInitialStateModifier with: five) modify: workbench.
	
	self assert: workbench initialState number equals: five
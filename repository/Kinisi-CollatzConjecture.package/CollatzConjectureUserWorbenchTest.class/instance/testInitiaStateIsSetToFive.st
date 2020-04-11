tests
testInitiaStateIsSetToFive

	| workbench five |
	workbench := CollatzConjectureUserWorbench default.
	five := 5.
	self deny: workbench initialState equals: five.
	
	(CollatzConjectureInitialStateModifier with: five) modify: workbench.
	
	self assert: workbench initialState number equals: five
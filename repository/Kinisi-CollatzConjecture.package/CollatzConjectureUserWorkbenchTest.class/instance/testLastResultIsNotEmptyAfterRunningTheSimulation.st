tests - may no have sense here
testLastResultIsNotEmptyAfterRunningTheSimulation

	| workbench stepResults |
	workbench := CollatzConjectureUserWorkbench default.
	(CollatzConjectureInitialStateModifier with: 4) modify: workbench.
	
	workbench play.
	
	stepResults := workbench lastResult withTimeAndStateCollect: [:time :state | state number ].
	self denyEmpty: stepResults
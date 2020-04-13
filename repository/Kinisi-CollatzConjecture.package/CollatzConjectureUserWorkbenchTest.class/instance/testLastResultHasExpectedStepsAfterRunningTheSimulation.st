tests
testLastResultHasExpectedStepsAfterRunningTheSimulation

	| workbench stepResults |
	workbench := CollatzConjectureUserWorkbench default.
	(CollatzConjectureInitialStateModifier with: 4) modify: workbench.
	
	workbench play.
	
	stepResults := workbench lastResult withTimeAndStateCollect: [:time :state | state number ]. 
	self assertCollection: stepResults hasSameElements: #(4 2 1)
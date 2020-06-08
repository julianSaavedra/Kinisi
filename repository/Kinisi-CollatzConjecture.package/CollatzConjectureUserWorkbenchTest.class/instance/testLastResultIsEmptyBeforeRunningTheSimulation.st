tests - may no have sense here
testLastResultIsEmptyBeforeRunningTheSimulation

	| workbench stepResults |
	workbench := CollatzConjectureUserWorkbench default.
	
	stepResults := workbench lastResult withTimeAndStateCollect: [:time :state | state number ]. 
	self assertEmpty: stepResults
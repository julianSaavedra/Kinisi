tests
testLastResultIsEmptyBeforeRunningTheSimulation

	| workbench stepResults |
	workbench := CollatzConjectureUserWorbench default.
	
	stepResults := workbench lastResult withTimeAndStateCollect: [:time :state | state number ]. 
	self assertEmpty: stepResults
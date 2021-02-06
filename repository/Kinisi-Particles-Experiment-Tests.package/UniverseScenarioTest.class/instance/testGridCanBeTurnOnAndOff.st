test - scenario depiction
testGridCanBeTurnOnAndOff

	self assert: workbench scenario isGridVisible.
	
	workbench turnGridOff.
	
	self deny: workbench scenario isGridVisible.
		
	workbench turnGridOn.

	self assert: workbench scenario isGridVisible
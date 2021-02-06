test - scenario depiction
testGridColorIsChangedToBlue

	| blue |
	blue := Color blue.
	self deny: workbench scenario gridColor equals: blue.
	
	workbench gridColor: blue.
	
	self assert: workbench scenario gridColor equals: blue
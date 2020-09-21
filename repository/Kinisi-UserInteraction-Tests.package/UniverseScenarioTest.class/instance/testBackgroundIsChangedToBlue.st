test - scenario depiction
testBackgroundIsChangedToBlue

	| blue |
	blue := Color blue.
	self deny: workbench scenario background equals: blue.
	
	workbench background: blue.
	
	self assert: workbench scenario background equals: blue
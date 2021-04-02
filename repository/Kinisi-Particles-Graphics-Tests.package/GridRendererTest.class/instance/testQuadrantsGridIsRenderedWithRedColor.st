tests
testQuadrantsGridIsRenderedWithRedColor

	universeWorkbench quadrantGridWith: Color red.
	
	self assertNoErrorIsRaisedWhenRendering: universeWorkbench scenario
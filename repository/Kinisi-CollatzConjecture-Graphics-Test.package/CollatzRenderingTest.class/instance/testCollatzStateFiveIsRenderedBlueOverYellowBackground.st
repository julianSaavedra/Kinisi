tests
testCollatzStateFiveIsRenderedBlueOverYellowBackground

	collatzWorkbench
		state: 5;
		numberColor: Color blue;
		background: Color yellow.
	
	self assertNoErrorIsRaisedWhenRendering: collatzWorkbench scenario
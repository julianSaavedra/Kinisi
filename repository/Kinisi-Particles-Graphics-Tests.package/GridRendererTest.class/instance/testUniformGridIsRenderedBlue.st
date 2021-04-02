tests
testUniformGridIsRenderedBlue

	universeWorkbench uniformGridWith: Color blue.
	
	self assertNoErrorIsRaisedWhenRendering: universeWorkbench scenario
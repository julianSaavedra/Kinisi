tests
testUniformGridIsRenderedWithMoreZoom

	universeWorkbench uniformGridWith: Color blue.
	universeWorkbench zoomIn; zoomIn; zoomIn.
	
	self assertNoErrorIsRaisedWhenRendering: universeWorkbench scenario
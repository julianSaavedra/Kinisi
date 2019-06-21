tests
testAxisReferenceIsDrawnInTheOriginOfTheCanvas

	| view axisReference|
	view := RTView new.	
	axisReference := AxisReferenceRenderer new.
	
	axisReference drawIn: view.
	
	self
		assertAxisReferencePointsAreMovedBy: 0@0
		fromTheCenterOfCanvasIn: view
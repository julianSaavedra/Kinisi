tests
testAxisReferenceIsDrawnInTheOriginOfTheCanvas

	| view |
	view := RTView new.	

	AxisReferenceRenderer new drawIn: view.
	
	self
		assertAxisReferencePointsAreMovedBy: 0@0
		fromTheCenterOfCanvasIn: view
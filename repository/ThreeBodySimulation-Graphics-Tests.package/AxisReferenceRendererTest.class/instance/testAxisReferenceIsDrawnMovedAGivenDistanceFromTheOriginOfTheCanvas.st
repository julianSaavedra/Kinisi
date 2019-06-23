tests
testAxisReferenceIsDrawnMovedAGivenDistanceFromTheOriginOfTheCanvas

	| view |
	view := RTView new.

	AxisReferenceRenderer new drawIn: view movedFromCenterToLeftBottomCornerBy: 100.
	
	self
		assertAxisReferencePointsAreMovedBy: (100 negated @ 100)
		fromTheCenterOfCanvasIn: view
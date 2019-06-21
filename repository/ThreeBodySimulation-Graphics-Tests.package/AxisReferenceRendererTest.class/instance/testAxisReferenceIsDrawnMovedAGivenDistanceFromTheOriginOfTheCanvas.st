tests
testAxisReferenceIsDrawnMovedAGivenDistanceFromTheOriginOfTheCanvas

	| view axisReference expectedAbsoluteComponentMovement expectedMovement |
	view := RTView new.	
	axisReference := AxisReferenceRenderer new.
	
	axisReference drawIn: view movedFromCenterToLeftBottomCornerBy: 100.
	
	expectedAbsoluteComponentMovement := (100 * 0.79 sin). "0.79 rad = 45 degrees"
	expectedMovement := expectedAbsoluteComponentMovement negated @ expectedAbsoluteComponentMovement.
	self
		assertAxisReferencePointsAreMovedBy: expectedMovement
		fromTheCenterOfCanvasIn: view
tests
testAxisReferenceIsDrawnMovedAGivenDistanceFromTheOriginOfTheCanvas

	| renderer |
	renderer := AxisReferenceRenderer movedFromCenterBy: 50.
	self assertNoErrorIsRaisedWhenRenderingWith: renderer
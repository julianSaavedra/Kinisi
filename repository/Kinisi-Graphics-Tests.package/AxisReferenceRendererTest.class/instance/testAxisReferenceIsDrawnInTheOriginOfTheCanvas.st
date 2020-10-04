tests
testAxisReferenceIsDrawnInTheOriginOfTheCanvas

	| renderer |
	renderer := AxisReferenceRenderer inOrigin.
	self assertNoErrorIsRaisedWhenRenderingWith: renderer
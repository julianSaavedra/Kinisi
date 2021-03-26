tests
testGridIsNotRendered

	| renderer |
	renderer := GridRenderer noGrid.
	
	self assertNoErrorIsRaisedWhenRenderingWith: renderer
tests
testQuadrantsGridIsRenderedWithRedColor

	| renderer |
	renderer := GridRenderer quadrantWith: Color red.
	
	self assertNoErrorIsRaisedWhenRenderingWith: renderer
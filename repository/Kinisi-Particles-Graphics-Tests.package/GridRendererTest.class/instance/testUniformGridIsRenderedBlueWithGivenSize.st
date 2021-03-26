tests
testUniformGridIsRenderedBlueWithGivenSize

	| renderer |
	renderer := GridRenderer uniformWith: Color blue and: 20.
	
	self assertNoErrorIsRaisedWhenRenderingWith: renderer
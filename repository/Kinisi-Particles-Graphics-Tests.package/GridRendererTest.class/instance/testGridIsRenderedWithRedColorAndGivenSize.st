tests
testGridIsRenderedWithRedColorAndGivenSize

	| renderer |
	renderer := GridRenderer with: Color red and: 25.
	
	self assertNoErrorIsRaisedWhenRenderingWith: renderer
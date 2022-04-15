test - decorations
testPositionMarksAreRendered

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderPositionMarksWith: 100.
	
	self assertNoErrorIsRaisedWhenRendering: particle using: renderer
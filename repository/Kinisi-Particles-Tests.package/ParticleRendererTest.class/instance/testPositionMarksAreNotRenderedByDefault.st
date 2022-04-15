test - decorations
testPositionMarksAreNotRenderedByDefault

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.

	self assertNoErrorIsRaisedWhenRendering: particle using: renderer
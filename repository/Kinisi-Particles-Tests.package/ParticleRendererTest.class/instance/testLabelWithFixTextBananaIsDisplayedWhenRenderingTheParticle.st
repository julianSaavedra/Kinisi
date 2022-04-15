test - decorations
testLabelWithFixTextBananaIsDisplayedWhenRenderingTheParticle

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderLabelWith: 'Banana'.

	self assertNoErrorIsRaisedWhenRendering: particle using: renderer
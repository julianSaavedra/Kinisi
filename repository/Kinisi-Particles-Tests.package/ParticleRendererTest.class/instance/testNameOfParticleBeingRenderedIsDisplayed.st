test - decorations
testNameOfParticleBeingRenderedIsDisplayed

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderLabelWith: [:renderedParticle | renderedParticle particleName ].
	
	self assertNoErrorIsRaisedWhenRendering: particle using: renderer
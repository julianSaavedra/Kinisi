accessing
initializePresenters

	view := self instantiate: SpRoassalPresenter.
	view script: [:canvas |
		canvas color: particle background.
		(ParticleRenderer basedOn: particle with: 50)
			renderVelocityWith: Color red;
			renderPositionMarksWith: 100;
			drawIn: canvas basedOn: particle.
		canvas camera scale: 1; translateTo: 0@0 ].
	
	self focusOrder add: view
test - decorations
testVelocityVectorIsRendered

	| renderer |
	particle velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1).
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderVelocityWith: Color blue.
		
	self
		shouldnt: [ renderer drawIn: canvas basedOn: particle ]
		raise: Error
test - new model
testVelocityVectorIsRendered

	| renderer velocityWasRendered |
	particle velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1).
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderVelocityWith: Color blue.
	
	velocityWasRendered := false.
	self
		before: #drawIn:basedOn:for:
		in: VelocityRenderer
		execute: [:receiver :arguments | velocityWasRendered := true]
		during: [renderer drawIn: view basedOn: particle].
		
	self assert: velocityWasRendered
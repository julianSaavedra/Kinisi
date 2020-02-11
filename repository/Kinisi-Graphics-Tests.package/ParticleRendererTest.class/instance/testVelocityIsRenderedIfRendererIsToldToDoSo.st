tests
testVelocityIsRenderedIfRendererIsToldToDoSo

	| renderer velocityWasRendered |
	particle velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1).
	renderer := ParticleRenderer 	basedOn: particle.
	
	velocityWasRendered := false.
	self
		before: #drawIn:basedOn:holdBy:
		in: VelocityRenderer
		execute: [:receiver :arguments | velocityWasRendered := true]
		during: [renderer drawIn: view basedOn: particle].
	self deny: velocityWasRendered.
	
	renderer renderVelocityWhenRendering.
	self
		before: #drawIn:basedOn:holdBy:
		in: VelocityRenderer
		execute: [:receiver :arguments | velocityWasRendered := true]
		during: [renderer drawIn: view basedOn: particle].
		
	self assert: velocityWasRendered
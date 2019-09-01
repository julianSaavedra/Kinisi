tests
testVelocityIsRenderedIfRendererIsTellToDoSo

	| renderer velocityWasRendered |
	particleDraft velocity: (testResource velocityVectorWithAllComponentsWithAmount: 1).
	renderer := ParticleRenderer 	basedOn: particleDraft.
	
	velocityWasRendered := false.
	self
		before: #drawIn:basedOn:holdBy:
		in: VelocityRenderer
		execute: [:receiver :arguments | velocityWasRendered := true]
		during: [renderer drawIn: view basedOn: particleDraft].
	self deny: velocityWasRendered.
	
	renderer renderVelocityWhenRendering.
	self
		before: #drawIn:basedOn:holdBy:
		in: VelocityRenderer
		execute: [:receiver :arguments | velocityWasRendered := true]
		during: [renderer drawIn: view basedOn: particleDraft].
		
	self assert: velocityWasRendered
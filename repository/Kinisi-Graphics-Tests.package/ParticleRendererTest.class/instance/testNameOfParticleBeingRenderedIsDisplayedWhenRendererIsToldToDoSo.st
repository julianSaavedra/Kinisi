tests
testNameOfParticleBeingRenderedIsDisplayedWhenRendererIsToldToDoSo

	| renderer labelText |
	particle particleName: 'ParticleABCDE'.
	renderer := ParticleRenderer 	basedOn: particle.
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: particle].
	self assert: labelText isNil.
	
	renderer labelElementWhenRendering.
	
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: particle].

	self assert: labelText equals: particle particleName
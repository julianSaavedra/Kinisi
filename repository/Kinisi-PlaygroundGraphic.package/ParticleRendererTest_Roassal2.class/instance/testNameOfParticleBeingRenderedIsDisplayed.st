test - new model
testNameOfParticleBeingRenderedIsDisplayed

	| renderer labelText |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderLabelWith: [:renderedParticle | renderedParticle particleName ].
	
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: particle].
		
	self assert: labelText equals: particle particleName
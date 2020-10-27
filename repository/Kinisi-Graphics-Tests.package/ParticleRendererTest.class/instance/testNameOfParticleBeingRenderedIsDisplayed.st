test - decorations
testNameOfParticleBeingRenderedIsDisplayed

	| renderer labelText |
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderLabelWith: [:renderedParticle | renderedParticle particleName ].
	
	self
		before: #text:
		in: RSLabel
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: canvas basedOn: particle].
		
	self assert: labelText equals: particle particleName
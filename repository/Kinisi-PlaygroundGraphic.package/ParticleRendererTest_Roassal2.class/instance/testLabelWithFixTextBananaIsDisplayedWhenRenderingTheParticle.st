test - new model
testLabelWithFixTextBananaIsDisplayedWhenRenderingTheParticle

	| renderer labelText label |
	label := 'Banana'.
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderLabelWith: label.
	
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: particle].

	self assert: labelText equals: 'Banana'
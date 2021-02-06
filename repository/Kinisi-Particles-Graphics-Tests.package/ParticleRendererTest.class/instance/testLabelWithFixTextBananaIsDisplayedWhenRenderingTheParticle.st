test - decorations
testLabelWithFixTextBananaIsDisplayedWhenRenderingTheParticle

	| renderer labelText label |
	label := 'Banana'.
	renderer := ParticleRenderer basedOn: particle with: 10.
	renderer renderLabelWith: label.
	
	self
		before: #text:
		in: RSLabel
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: canvas basedOn: particle].

	self assert: labelText equals: 'Banana'
tests
testParticleIsRenderedBlueWhenBlueParticleIsGivenOnRendererCreation

	| renderer originalDraftColor |
	originalDraftColor := Color blue.
	particle color: originalDraftColor.
	renderer := ParticleRenderer basedOn: particle.
	
	renderer drawIn: view basedOn: particle.

	self assert: view elements size equals: 1.
	self assert: view elements first color equals: originalDraftColor.
	
	view clean.
	particle color: Color red.
	renderer drawIn: view basedOn: particle.

	self assert: view elements size equals: 1.
	self assert: view elements first color equals: originalDraftColor
	

tests
testElementInViewIsBlueWhenBlueParticleDraftIsGivenOnRendererCreation

	| renderer originalDraftColor |
	originalDraftColor := Color blue.
	particleDraft color: originalDraftColor.
	renderer := ParticleRenderer basedOn: particleDraft.
	
	renderer drawIn: view basedOn: particleDraft.

	self assert: view elements size equals: 1.
	self assert: view elements first color equals: originalDraftColor.
	
	view clean.
	particleDraft color: Color red.
	renderer drawIn: view basedOn: particleDraft.

	self assert: view elements size equals: 1.
	self assert: view elements first color equals: originalDraftColor
	

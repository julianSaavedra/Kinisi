tests
testLabelIsAddedOnElementWithTextAsTheParticleNameOfTheParticleDraftThatRepresentsIfRendererIsToldToDoSo

	| renderer labelText |
	particleDraft particleName: 'ParticleABCDE'.
	renderer := ParticleRenderer 	basedOn: particleDraft.
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: particleDraft].
	self assert: labelText isNil.
	
	renderer labelElementWhenRendering.
	
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: particleDraft].

	self assert: labelText equals: particleDraft particleName
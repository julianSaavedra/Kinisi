test - review
testLabelIsAddedOnElementWithTextAsTheParticleNameOfTheParticleDraftThatRepresents

	| view universeDraft particleDraft renderer labelText |
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft particleName: 'ParticleABCDE'.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfiguration.
	
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: universeDraft].

	self assert: labelText equals: particleDraft particleName
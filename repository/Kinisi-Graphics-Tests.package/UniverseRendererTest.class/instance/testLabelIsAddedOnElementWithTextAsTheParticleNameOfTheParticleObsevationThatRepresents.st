test
testLabelIsAddedOnElementWithTextAsTheParticleNameOfTheParticleObsevationThatRepresents

	| universeDraft particleDraft renderer labelText |
	universeDraft := UniverseObservation new.
	particleDraft := universeDraft newParticleObservation.
	particleDraft particleName: 'ParticleABCDE'; save.
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfigurationWithGridSizeTenAndHalfMeterScale.
	
	self
		before: #text:
		in: TRLabelShape
		execute: [:receiver :arguments | labelText := arguments first]
		during: [renderer drawIn: view basedOn: universeDraft].

	self assert: labelText equals: particleDraft particleName
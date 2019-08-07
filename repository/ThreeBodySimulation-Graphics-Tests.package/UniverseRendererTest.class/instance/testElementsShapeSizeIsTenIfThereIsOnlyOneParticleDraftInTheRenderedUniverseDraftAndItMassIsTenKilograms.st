test - review
testElementsShapeSizeIsTenIfThereIsOnlyOneParticleDraftInTheRenderedUniverseDraftAndItMassIsTenKilograms

	| view universeDraft particleDraft renderer shapeSize |
	view := RTView new.
	universeDraft := UniverseObservationDraft new.
	particleDraft := universeDraft newParticleObservationDraft.
	particleDraft mass: (UnitProvider soleInstance kilogram with: 10).
	renderer := UniverseRenderer basedOn: universeDraft and: self gridConfiguration.

	self
		before: #size:
		in: RTEllipse
		execute: [:receiver :arguments | shapeSize := arguments first ]
		during: [ renderer drawIn: view basedOn: universeDraft].

	self assert: shapeSize equals: 10
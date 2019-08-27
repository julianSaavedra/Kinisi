example - UI
exampleParticleDraftPresenter

	| particleDraft |
	particleDraft := UniverseObservationDraft new newParticleObservationDraft.
	(ParticleDraftPresenter on: particleDraft) openWithSpec 
example - UI
exampleNewParticleDraftPresenter

	| particleDraft |
	particleDraft := UniverseObservationDraft new newParticleObservationDraft.
	(ParticleDraftPresenter on: particleDraft) openWithSpec 
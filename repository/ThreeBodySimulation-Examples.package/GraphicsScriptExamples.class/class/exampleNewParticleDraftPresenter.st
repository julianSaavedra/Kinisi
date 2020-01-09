example - UI
exampleNewParticleDraftPresenter

	| particleDraft |
	particleDraft := UniverseObservationDraft new newParticleObservationDraft.
	(ParticleObservationPresenter on: particleDraft) openWithSpec 
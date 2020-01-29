example - UI
exampleNewParticleDraftPresenter

	| particleDraft |
	particleDraft := UniverseObservation new newParticleObservationDraft save.
	(ParticleObservationPresenter on: particleDraft) openWithSpec 
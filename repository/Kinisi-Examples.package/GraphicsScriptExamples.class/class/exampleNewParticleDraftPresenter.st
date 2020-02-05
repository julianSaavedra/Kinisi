example - UI
exampleNewParticleDraftPresenter

	| particleDraft |
	particleDraft := UniverseObservation new newParticleObservation save.
	(ParticleObservationPresenter on: particleDraft) openWithSpec 
example - UI
exampleUniverseDraftPresenter

	| universeDraft |
	universeDraft := UniverseObservation new.
	universeDraft newParticleObservation save.
	universeDraft newParticleObservation save.
	(UniverseObservationPresenter on: universeDraft) openWithSpec
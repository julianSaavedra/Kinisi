example - UI
exampleUniverseDraftPresenter

	| universeDraft |
	universeDraft := UniverseObservation new.
	universeDraft newParticleObservationDraft save.
	universeDraft newParticleObservationDraft save.
	(UniverseObservationPresenter on: universeDraft) openWithSpec
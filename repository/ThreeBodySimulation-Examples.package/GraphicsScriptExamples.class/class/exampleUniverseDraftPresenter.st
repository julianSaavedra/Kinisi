example - UI
exampleUniverseDraftPresenter

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft
		newParticleObservationDraft;
		newParticleObservationDraft.
	(UniverseObservationPresenter on: universeDraft) openWithSpec
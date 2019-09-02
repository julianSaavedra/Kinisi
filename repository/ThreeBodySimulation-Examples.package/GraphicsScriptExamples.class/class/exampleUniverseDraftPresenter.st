example - UI
exampleUniverseDraftPresenter

	| universeDraft |
	universeDraft := UniverseObservationDraft new.
	universeDraft
		newParticleObservationDraft;
		newParticleObservationDraft.
	(UniverseDraftPresenter on: universeDraft) openWithSpec
initialization
addButtonAction

	| draftPresenter |

	draftPresenter := ParticleObservationDraftPresenter
		on: universeObservation newParticleObservationDraft.
	draftPresenter onDraftSaveDo: [ self addButtonPostAction ].
	^ draftPresenter openWithSpec
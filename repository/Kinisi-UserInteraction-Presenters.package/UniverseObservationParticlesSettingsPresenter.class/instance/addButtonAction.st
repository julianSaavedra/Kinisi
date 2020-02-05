initialization
addButtonAction

	| draftPresenter |

	draftPresenter := ParticleObservationDraftPresenter
		on: universeObservation newParticleObservation.
	draftPresenter onDraftSaveDo: [ self addButtonPostAction ].
	^ draftPresenter openWithSpec
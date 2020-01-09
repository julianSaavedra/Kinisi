initialization
initializePresenter

	addButton whenActionPerformedDo: [ self addButtonPostAction ].
	removeButton action: [ self removeButtonPostAction ].
	resetButton whenActionPerformedDo: [ self resetButtonPostAction ].
	particleObservationList whenSelectedItemChanged: [ :selection | self updateSelectedParticleObservation ]
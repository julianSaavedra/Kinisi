initialization
initializePresenter

	addButton whenActionPerformedDo: [ self addButtonPostAction ].
	removeButton whenActionPerformedDo: [ self removeButtonPostAction ].
	resetButton whenActionPerformedDo: [ self resetButtonPostAction ].
	particleObservationList whenSelectedItemChanged: [ :selection | self updateSelectedParticleObservation ]
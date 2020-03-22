initialization
initializePresenter

	addButton whenActionPerformedDo: [ self addButtonPostAction ].
	removeButton whenActionPerformedDo: [ self removeButtonPostAction ].
	resetButton whenActionPerformedDo: [ self removeAllButtonPostAction ].
	particleObservationList whenSelectedItemChanged: [ :selection | self updateSelectedParticleObservation ]
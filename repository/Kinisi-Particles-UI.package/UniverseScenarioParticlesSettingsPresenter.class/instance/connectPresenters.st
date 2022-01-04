initialization
connectPresenters

	addButton whenActionPerformedDo: [ self addButtonPostAction ].
	removeButton whenActionPerformedDo: [ self removeButtonPostAction ].
	removeAllButton whenActionPerformedDo: [ self removeAllButtonPostAction ].
	particleList whenSelectionChangedDo: [:selection | self updateSelectedParticleObservation ]